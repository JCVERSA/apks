.class public final Lmh/k$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmh/k;->h(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "onAvailable : "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object p1, v1, v2

    .line 33
    .line 34
    const-string p1, "NetworkMonitor"

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 2

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "onBlockedStatusChanged"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object v0, p2, v1

    .line 18
    .line 19
    const-string v0, "NetworkMonitor"

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "network"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "networkCapabilities"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x10

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sget-object v1, Lmh/k;->a:Lmh/k;

    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {v1, p2}, Lmh/k;->k(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lmh/k;->g()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    move p1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, v0

    .line 44
    :goto_0
    invoke-virtual {v1, p1}, Lmh/k;->i(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lmh/k;->j(Z)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "isNetworkConnected : "

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lmh/k;->g()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ",  isFakeNetwork : "

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lmh/k;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    new-array v1, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p2, v1, v0

    .line 88
    .line 89
    const-string p2, "NetworkMonitor"

    .line 90
    .line 91
    invoke-virtual {p1, p2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "onLosing"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object v0, p2, v1

    .line 18
    .line 19
    const-string v0, "NetworkMonitor"

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lmh/k;->a:Lmh/k;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lmh/k;->k(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "onLost"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    const-string v1, "NetworkMonitor"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lmh/k;->a:Lmh/k;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lmh/k;->k(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onUnavailable()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v2, "onUnavailable"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    const-string v2, "NetworkMonitor"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
