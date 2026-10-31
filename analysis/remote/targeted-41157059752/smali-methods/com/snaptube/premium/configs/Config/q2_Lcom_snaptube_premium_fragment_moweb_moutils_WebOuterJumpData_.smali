.method public static q2()Lcom/snaptube/premium/fragment/moweb/moutils/WebOuterJumpData;
    .locals 3

    const-string v0, "key.web_outer_jump_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v2, Lcom/snaptube/premium/fragment/moweb/moutils/WebOuterJumpData;

    invoke-static {v0, v2}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/fragment/moweb/moutils/WebOuterJumpData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-object v1
.end method
