.class public final Lcom/transsion/lib_web/download_render/init/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/lib_web/download_render/init/c;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/init/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    sget-object v1, Lyg/k;->g:Lyg/k$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lyg/k$a;->a()Lyg/k;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Le2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0xc

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lyg/k;->g:Lyg/k$a;

    .line 48
    .line 49
    invoke-virtual {v2}, Lyg/k$a;->a()Lyg/k;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/d;->d()V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lyl/e;->a:Lyl/e;

    .line 62
    .line 63
    invoke-virtual {v0}, Lyl/e;->d()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
