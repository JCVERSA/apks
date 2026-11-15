.class public Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actors"
    .end annotation
.end field

.field private category:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private coverX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_x"
    .end annotation
.end field

.field private coverY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_y"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private duration:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private kind:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private scores:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scores"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation
.end field

.field private tagList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private videoId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private year:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDisplayType()V
    .locals 0

    return-void
.end method

.method public getActors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->actors:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->category:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public getKind()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->kind:Ljava/lang/Object;

    return-object p0
.end method

.method public getScores()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->scores:D

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getTagList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->videoId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getYear()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->year:Ljava/lang/Object;

    return-object p0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->actors:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->category:Ljava/lang/Integer;

    return-void
.end method

.method public setCoverX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->coverX:Ljava/lang/String;

    return-void
.end method

.method public setCoverY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->coverY:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setKind(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->kind:Ljava/lang/Object;

    return-void
.end method

.method public setScores(D)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->scores:D

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->videoId:Ljava/lang/Integer;

    return-void
.end method

.method public setYear(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->year:Ljava/lang/Object;

    return-void
.end method

.method public showDisplayType()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public showVipLogo()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->tagList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
