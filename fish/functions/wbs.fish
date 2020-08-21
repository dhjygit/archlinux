# Defined in - @ line 1
function wbs --wraps='hexo clean && hexo g && gulp && p hexo s' --description 'alias wbs hexo clean && hexo g && gulp && p hexo s'
  hexo clean && hexo g && gulp && p hexo s $argv;
end
