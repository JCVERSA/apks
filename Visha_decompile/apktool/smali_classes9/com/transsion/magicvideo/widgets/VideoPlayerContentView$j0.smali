.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;
.super Los8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z7(Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    new-instance v0, Lhb0$a;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-direct {v0, v2, v1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lhb0$a;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value1"

    invoke-direct {v1, v3, v2}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lhb0$a;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->u1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "value2"

    invoke-direct {v2, v4, v3}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lhb0$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j0;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend$RecommendInfo;->getBottom_content()Ljava/lang/String;

    move-result-object p0

    const-string v4, "btn"

    invoke-direct {v3, v4, p0}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [Lhb0$a;

    move-result-object p0

    const-string v0, "vd_cp_pop_cl"

    invoke-static {v0, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    return-void
.end method
