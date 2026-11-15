.class public Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;,
        Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
    }
.end annotation


# instance fields
.field private videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_info"
    .end annotation
.end field

.field private videoSerials:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serials"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation
.end field

.field private videoSerialsNotIntact:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serials_not_intact"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation
.end field

.field private videoSeries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_series"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMgTVVideo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSmashiVideo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isYoutubeVideo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    return-object p0
.end method

.method public getVideoSerials()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSerials:Ljava/util/List;

    return-object p0
.end method

.method public getVideoSerialsNotIntact()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSerialsNotIntact:Ljava/util/List;

    return-object p0
.end method

.method public getVideoSeries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSeries:Ljava/util/List;

    return-object p0
.end method

.method public setVideoSerials(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSerials:Ljava/util/List;

    return-void
.end method

.method public setVideoSerialsNotIntact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSerialsNotIntact:Ljava/util/List;

    return-void
.end method

.method public setVideoSeries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->videoSeries:Ljava/util/List;

    return-void
.end method
