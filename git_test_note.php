<?php
// Simple file to test Git history across 2 machines.
date_default_timezone_set('Asia/Ho_Chi_Minh');

$projectName = 'Stock Management System';
$authorName = 'Machine 1';
$statusMessage = 'This file was created on machine 1 and can be edited on machine 2.';
$versionLabel = 'v1';
$currentTime = date('Y-m-d H:i:s');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Git Test Note</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fb;
            margin: 0;
            padding: 40px;
        }
        .card {
            max-width: 700px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 10px;
            padding: 24px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        h1 {
            margin-top: 0;
            color: #1d4ed8;
        }
        .label {
            font-weight: bold;
            color: #334155;
        }
        .value {
            color: #0f172a;
        }
        .note {
            margin-top: 20px;
            padding: 12px;
            background: #eff6ff;
            border-left: 4px solid #2563eb;
        }
    </style>
</head>
<body>
<div class="card">
    <h1>Git Test File</h1>
    <p><span class="label">Project:</span> <span class="value"><?php echo htmlspecialchars($projectName); ?></span></p>
    <p><span class="label">Author:</span> <span class="value"><?php echo htmlspecialchars($authorName); ?></span></p>
    <p><span class="label">Version:</span> <span class="value"><?php echo htmlspecialchars($versionLabel); ?></span></p>
    <p><span class="label">Generated at:</span> <span class="value"><?php echo htmlspecialchars($currentTime); ?></span></p>

    <div class="note">
        <?php echo htmlspecialchars($statusMessage); ?>
    </div>
</div>
</body>
</html>