.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$k0;
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
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$k0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$k0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->b1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/IntercepMotionLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$k0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$k0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    :cond_0
    return-void
.end method
