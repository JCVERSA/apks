.class Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$2;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$2;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->timerHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mTimerUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$2;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method
