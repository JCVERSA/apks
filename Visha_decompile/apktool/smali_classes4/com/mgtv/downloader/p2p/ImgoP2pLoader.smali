.class public Lcom/mgtv/downloader/p2p/ImgoP2pLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLiloadLibrarybrary(ILjava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method
