.class public Lcom/mgtv/downloader/util/ConfigJson$CdnJson;
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
    name = "CdnJson"
.end annotation


# instance fields
.field public playertimeout:I

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnJson;->playertimeout:I

    iput v0, p0, Lcom/mgtv/downloader/util/ConfigJson$CdnJson;->timeout:I

    return-void
.end method
