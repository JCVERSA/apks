.class public Lcom/mgtv/downloader/p2p/IP2pMgr$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/p2p/IP2pMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public mCachePath:Ljava/lang/String;

.field public mConfigPath:Ljava/lang/String;

.field public mHttpport:I

.field public mMaxusespace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mConfigPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mCachePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mHttpport:I

    iput v0, p0, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mMaxusespace:I

    return-void
.end method
