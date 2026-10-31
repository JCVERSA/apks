.method public static Z0()Lcom/snaptube/premium/playback/window/PIPConfig;
    .locals 3

    const-string v0, "key.pip_play_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v2, Lcom/snaptube/premium/playback/window/PIPConfig;

    invoke-static {v0, v2}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/playback/window/PIPConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/playback/window/PIPConfig;

    invoke-direct {v1}, Lcom/snaptube/premium/playback/window/PIPConfig;-><init>()V

    :cond_0
    return-object v1
.end method
