    <h1 class="newws">Atualizações</h1>
          <a class="downloadsx" href="download.php">Download</a>
    <div id="noticias">
        <?php
        // Inclua o arquivo de conexão com o banco de dados
        include('config.php');
        // Query para selecionar todas as notícias com data e hora formatadas, ordenadas pela mais recente
        $sql = "SELECT *, DATE_FORMAT(data_publicacao, '%d/%m/%Y %H:%i') AS data_formatada FROM noticias ORDER BY data_publicacao DESC";
        $result = $conn->query($sql);

        // Se houver notícias, exiba-as
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<div class='noticia'>";
                echo "<h3>" . $row["titulo"] . "</h3>";
                echo "<p>" . $row["conteudo"] . "</p>";
                echo "<p class='data'><strong>Data e Hora:</strong> " . $row["data_formatada"] . "</p>";
                echo "</div>";
            }
        } else {
            echo "Nenhuma notícia encontrada.";
        }

        // Feche a conexão com o banco de dados
        $conn->close();
        ?>
    </div>

