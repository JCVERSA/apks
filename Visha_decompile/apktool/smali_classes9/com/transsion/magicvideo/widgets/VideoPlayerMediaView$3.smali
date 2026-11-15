.class Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$3;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$3;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
