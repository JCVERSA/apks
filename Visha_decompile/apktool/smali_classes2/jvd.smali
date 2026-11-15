.class public abstract Ljvd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 5

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    const-string v1, "mediation execSQL delete"

    const-string v2, "TestChecker"

    invoke-virtual {v0, v2, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediation delete db fail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Z)V
    .locals 6

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "key_data_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lo9;->g(Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v1, p0, 0x1

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediation sp save env status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and isDebug = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "TestChecker"

    invoke-virtual {v3, v4, p0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lfvd;

    invoke-direct {v0}, Lfvd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
