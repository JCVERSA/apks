.class public Lcom/mgtv/thirdsdk/config/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 2

    const-string v0, "player_merge"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "player_merge"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "p2p_delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "tcp_alive"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
