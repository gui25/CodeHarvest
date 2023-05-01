def filter_extension?(extension)
  non_readable_extensions = [
    '.pdf', '.jpg', '.jpeg', '.png', '.gif', '.bmp', '.svg', '.tiff', '.ico',
    '.mp3', '.wav', '.aac', '.flac', '.m4a', '.ogg',
    '.mp4', '.avi', '.mov', '.mkv', '.wmv', '.flv', '.swf', '.webm',
    '.zip', '.rar', '.7z', '.tar', '.gz', '.bz2', '.xz', '.lzma',
    '.exe', '.dll', '.so', '.sh', '.cmd', '.jar',
    '.csv', '.xls', '.xlsx', '.ods', '.tsv',
    '.doc', '.docx', '.odt', '.rtf', '.txt', '.log', '.pdf', '.epub'
  ]
  !non_readable_extensions.include?(extension)
end
