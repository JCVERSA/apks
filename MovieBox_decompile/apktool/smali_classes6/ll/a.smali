.class public Lll/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "requestBean"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->b(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/infra/gateway/core/utils/a;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z
    .locals 6

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "response"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-class p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    .line 36
    .line 37
    invoke-static {p1, p0}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    .line 42
    .line 43
    const-string p1, "GW.4410"

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorCode:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget-object p1, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 54
    .line 55
    const-string v0, "verify sign failed, retrying update time"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorMsg:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/transsion/infra/gateway/core/sercurity/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-class p1, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    .line 71
    .line 72
    invoke-static {p0, p1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    .line 77
    .line 78
    iget-wide p1, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    .line 79
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    cmp-long p1, p1, v2

    .line 83
    .line 84
    if-lez p1, :cond_1

    .line 85
    .line 86
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/a;->a()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/utils/d;->a(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/d;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "time_offset"

    .line 95
    .line 96
    iget-wide v2, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    sub-long/2addr v2, v4

    .line 103
    invoke-virtual {p1, p2, v2, v3}, Lcom/transsion/infra/gateway/core/utils/d;->d(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    sget-object p1, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    return v1
.end method
