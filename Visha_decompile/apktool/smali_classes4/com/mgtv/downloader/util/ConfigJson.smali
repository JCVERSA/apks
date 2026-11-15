.class public Lcom/mgtv/downloader/util/ConfigJson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/util/ConfigJson$CdnModule;,
        Lcom/mgtv/downloader/util/ConfigJson$CdnJson;,
        Lcom/mgtv/downloader/util/ConfigJson$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/mgtv/downloader/util/ConfigJson$Data;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/util/ConfigJson;->data:Lcom/mgtv/downloader/util/ConfigJson$Data;

    return-void
.end method
