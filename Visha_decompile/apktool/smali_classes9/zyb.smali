.class public final synthetic Lzyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lzyb;->c:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lzyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lzyb;->c:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->k0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;)V

    return-void
.end method
