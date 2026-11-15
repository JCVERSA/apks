.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "fromMediaItem",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;",
        "mediaItem",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "fromPlayVideoData",
        "Landroid/os/Parcelable;",
        "playVideoData",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "fromIntent",
        "intent",
        "Landroid/content/Intent;",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntent(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "mi_media_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get MIMediaInfo from intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIMediaInfo"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final fromMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public final fromPlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Landroid/os/Parcelable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    return-object p0
.end method
