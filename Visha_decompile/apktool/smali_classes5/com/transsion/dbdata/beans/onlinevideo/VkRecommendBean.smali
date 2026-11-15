.class public Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VkRecommendBean"


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;"
        }
    .end annotation
.end field

.field private created:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private id:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private likes:Ljava/lang/Long;

.field private source:Ljava/lang/String;

.field private sourceImage:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoLink:Ljava/lang/String;

.field private views:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->categories:Ljava/util/List;

    return-object p0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->created:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->images:Ljava/util/List;

    return-object p0
.end method

.method public getLikes()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->likes:Ljava/lang/Long;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->source:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->sourceImage:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->videoLink:Ljava/lang/String;

    return-object p0
.end method

.method public getViews()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->views:Ljava/lang/Long;

    return-object p0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->categories:Ljava/util/List;

    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->created:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->images:Ljava/util/List;

    return-void
.end method

.method public setLikes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->likes:Ljava/lang/Long;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourceImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->sourceImage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->videoLink:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->views:Ljava/lang/Long;

    return-void
.end method

.method public toFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->setShortDescribe(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setVkVideoId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setShortDescribe(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setDuration(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getViews()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setViews(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getLikes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setLikes(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setSourceName(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getSourceImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setSourceImage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setCategories(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setImages(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getVideoLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setVideoLink(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;->getCreated()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->setCreated(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->setVideo(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;)V

    return-object v0
.end method
