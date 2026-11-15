.class public abstract Lfd4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/infra/gateway/core/utils/a;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->b(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lvh1;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static c(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z
    .locals 6

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/a;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const-class p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    invoke-static {p1, p0}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    const-string p1, "GW.4410"

    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/infra/gateway/core/utils/a;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v0, "verify sign failed, retrying update time"

    invoke-virtual {p1, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltl1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    invoke-static {p0, p1}, Lqab;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    iget-wide p1, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    invoke-static {}, Lvh1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc19;->a(Landroid/content/Context;)Lc19;

    move-result-object p1

    const-string p2, "time_offset"

    iget-wide v2, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, p2, v2, v3}, Lc19;->d(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/infra/gateway/core/utils/a;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1, p0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v1
.end method
