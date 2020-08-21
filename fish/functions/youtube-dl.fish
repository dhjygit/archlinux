# Defined in - @ line 1
function youtube-dl --wraps='youtube-dl --proxy socks5://127.0.0.1:7891' --description 'alias youtube-dl youtube-dl --proxy socks5://127.0.0.1:7891'
 command youtube-dl --proxy socks5://127.0.0.1:7891 $argv;
end
