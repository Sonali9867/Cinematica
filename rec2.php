<?php
// Start session
session_start();

// Include database connection
include 'dbh.php';

// Check if user is logged in
if(isset($_SESSION['id'])) {
    // Get user ID from session
    $id = $_SESSION['id'];

    // Get the most watched genre from history
    $query = "SELECT m.genre 
              FROM history h
              INNER JOIN movies m ON h.movie_id = m.mid
              WHERE h.user_id = $id
              GROUP BY m.genre
              ORDER BY COUNT(*) DESC
              LIMIT 1";
    $result = mysqli_query($conn, $query);
    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $most_watched_genre = $row['genre'];

        // Recommend movies based on the most watched genre
        $recommendation_query = "SELECT * 
                                 FROM movies 
                                 WHERE genre = '$most_watched_genre' AND mid NOT IN (
                                     SELECT movie_id FROM history WHERE user_id = $id
                                 )
                                 ORDER BY viewers DESC
                                 LIMIT 5"; // Limit to 5 recommendations
        $recommendation_result = mysqli_query($conn, $recommendation_query);
        if ($recommendation_result && mysqli_num_rows($recommendation_result) > 0) {
            echo "<ul class='movie-list'>";
            while ($row = mysqli_fetch_assoc($recommendation_result)) {
                echo "<li>" . $row['name'] . "</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>No recommendations available.</p>";
        }
    } else {
        echo "<p>No viewing history found for the user.</p>";
    }
} else {
    echo "<p>User is not logged in.</p>";
}

// Close connection
mysqli_close($conn);
?>