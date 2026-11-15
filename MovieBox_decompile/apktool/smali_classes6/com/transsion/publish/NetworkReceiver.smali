.class public final Lcom/transsion/publish/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/publish/NetworkReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "a",
        "(Landroid/content/Context;)I",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "I",
        "LAST_TYPE",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "c",
        "NETWORK_NONE",
        "d",
        "NETWORK_WIFI",
        "e",
        "NETWORK_MOBILE",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x3

    .line 5
    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 6
    .line 7
    const-string v0, "TNPublish"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->e:I

    .line 16
    .line 17
    return-void
.end method

.method private final a(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "connectivity"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->d:I

    .line 38
    .line 39
    return p1

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->e:I

    .line 47
    .line 48
    return p1

    .line 49
    :cond_2
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    .line 50
    .line 51
    return p1

    .line 52
    :cond_3
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    .line 53
    .line 54
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/publish/NetworkReceiver;->a(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget p2, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 30
    .line 31
    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v3}, Lcom/transsion/publish/PublishManager;->onConnected(Lcom/tn/lib/util/networkinfo/NetworkType;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x1

    .line 42
    if-ne p1, p2, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 45
    .line 46
    if-eq v0, p2, :cond_1

    .line 47
    .line 48
    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 49
    .line 50
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    const/4 v9, 0x0

    .line 56
    const-string v6, "\u6570\u636e\u7f51\u7edc"

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v3}, Lcom/transsion/publish/PublishManager;->onConnected(Lcom/tn/lib/util/networkinfo/NetworkType;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p2, -0x1

    .line 73
    if-ne p1, p2, :cond_2

    .line 74
    .line 75
    iget v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 76
    .line 77
    if-eq v0, p2, :cond_2

    .line 78
    .line 79
    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    .line 80
    .line 81
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const/4 v6, 0x0

    .line 87
    const-string v3, "\u65e0\u7f51\u7edc"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager;->onDisconnected()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method
