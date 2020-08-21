# Defined in - @ line 1
function wbd --wraps='hexo clean && hexo g && gulp && p hexo deploy' --description 'alias wbd hexo clean && hexo g && gulp && p hexo deploy'
  hexo clean && hexo g && gulp && p hexo deploy $argv;
end
