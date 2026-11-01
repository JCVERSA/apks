.method public static final a(Ljava/lang/ClassLoader;)V
    .locals 2

    const-string v0, "classLoader"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isPluginClassLoaderGcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/kz5;->b:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
