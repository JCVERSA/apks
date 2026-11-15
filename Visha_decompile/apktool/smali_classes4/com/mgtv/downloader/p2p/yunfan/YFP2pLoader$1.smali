.class final Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader;->testLoadSo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method
