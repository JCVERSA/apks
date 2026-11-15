.class public Lcom/mgtv/downloader/util/ConfigJson$CdnModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/util/ConfigJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdnModule"
.end annotation


# instance fields
.field public hlsconfig:I

.field public offlineMaxHttpSpeedKB:I

.field public useMGHttpDns:I

.field public videoDownloadType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->hlsconfig:I

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->useMGHttpDns:I

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->videoDownloadType:I

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->offlineMaxHttpSpeedKB:I

    return-void
.end method
