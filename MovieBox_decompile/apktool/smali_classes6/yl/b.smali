.class public final Lyl/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# static fields
.field public static final a:Lyl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyl/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lyl/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyl/b;->a:Lyl/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lyl/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lyg/l;->l(Lyg/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/d;->b()V

    .line 3
    sget-object p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->l()V

    .line 4
    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->k()V

    .line 5
    sget-object p1, Lpl/h;->a:Lpl/h;

    invoke-direct {p0}, Lyl/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onConnected() --> \u7f51\u7edc\u91cd\u65b0\u94fe\u63a5\u7684\u65f6\u5019\u68c0\u67e5\u4e00\u4e0b\u5b57\u5e55\u4e0b\u8f7d --> \u5ef6\u8fdf5\u79d2\uff0c\u4f18\u5316\u7f51\u7edc\u6296\u52a8 ....."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/d;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
