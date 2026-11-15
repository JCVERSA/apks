.class public Lcom/transsion/dbdata/beans/DownloadVideoRecommend;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;
    }
.end annotation


# instance fields
.field private content_recommend_info_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent_recommend_info_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->content_recommend_info_list:Ljava/util/List;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->index:I

    return p0
.end method

.method public getRecommendInfo()Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->content_recommend_info_list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->index:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->content_recommend_info_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->content_recommend_info_list:Ljava/util/List;

    iget v1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public setContent_recommend_info_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->content_recommend_info_list:Ljava/util/List;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->index:I

    return-void
.end method
