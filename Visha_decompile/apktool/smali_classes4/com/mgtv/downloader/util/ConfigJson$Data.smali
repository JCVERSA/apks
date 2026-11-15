.class public Lcom/mgtv/downloader/util/ConfigJson$Data;
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
    name = "Data"
.end annotation


# instance fields
.field public cdn:Lcom/mgtv/downloader/util/ConfigJson$CdnJson;

.field public cdnModule:Lcom/mgtv/downloader/util/ConfigJson$CdnModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/util/ConfigJson$Data;->cdn:Lcom/mgtv/downloader/util/ConfigJson$CdnJson;

    iput-object v0, p0, Lcom/mgtv/downloader/util/ConfigJson$Data;->cdnModule:Lcom/mgtv/downloader/util/ConfigJson$CdnModule;

    return-void
.end method
