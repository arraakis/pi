from yt_dlp import YoutubeDL

# single youtube link or youtube list <url>
URLS = [<ur>]

with YoutubeDL({'extract_audio': True, 'format': 'bestaudio', 'outtmpl': '%(title)s.mp3'}) as ydl:
    ydl.download(URLS)
