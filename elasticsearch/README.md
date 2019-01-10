Getting a list of installed plugins and versions
```
echo  'jenkins.model.Jenkins.instance.getPluginManager().getPlugins().each {println "${it.getShortName()}:${it.getVersion()}"}' | cli groovy = | sort
```