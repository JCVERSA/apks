.class public Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/DownloadVideoRecommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendInfo"
.end annotation


# instance fields
.field private bottom_content:Ljava/lang/String;

.field private description_content:Ljava/lang/String;

.field private id:I

.field private model:Ljava/lang/String;

.field private router_distribute_id:I

.field private router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

.field final synthetic this$0:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

.field private url_link:Ljava/lang/String;

.field private version_list:Ljava/lang/String;

.field private version_symbol:I


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->this$0:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottom_content()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->bottom_content:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription_content()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->description_content:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->id:I

    return p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getRouter_distribute_id()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->router_distribute_id:I

    return p0
.end method

.method public getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-object p0
.end method

.method public getUrl_link()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->url_link:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_list()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->version_list:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_symbol()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->version_symbol:I

    return p0
.end method

.method public setBottom_content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->bottom_content:Ljava/lang/String;

    return-void
.end method

.method public setDescription_content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->description_content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->id:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setRouter_distribute_id(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->router_distribute_id:I

    return-void
.end method

.method public setRouter_distribute_info(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-void
.end method

.method public setUrl_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->url_link:Ljava/lang/String;

    return-void
.end method

.method public setVersion_list(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->version_list:Ljava/lang/String;

    return-void
.end method

.method public setVersion_symbol(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->version_symbol:I

    return-void
.end method
