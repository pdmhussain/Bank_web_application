<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Face Verification</title>
</head>
<body>
    <video id="video" autoplay></video>
    <button onclick="capture()">Verify and Delete Account</button>
    <canvas id="canvas" style="display:none;"></canvas>

    <script>
        const video = document.getElementById('video');
        const canvas = document.getElementById('canvas');
        const context = canvas.getContext('2d');

        // Access webcam
        navigator.mediaDevices.getUserMedia({ video: true })
            .then(stream => { video.srcObject = stream });

        // Capture snapshot
        function capture() {
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            context.drawImage(video, 0, 0, canvas.width, canvas.height);
            const imageData = canvas.toDataURL('image/png');

            // Send the image to backend for verification
            fetch('/VerifyFace', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ image: imageData })
            }).then(response => response.json())
              .then(result => {
                if (result.success) {
                    alert('Account deleted successfully');
                } else {
                    alert('Face verification failed');
                }
            });
        }
    </script>
</body>
</html>
