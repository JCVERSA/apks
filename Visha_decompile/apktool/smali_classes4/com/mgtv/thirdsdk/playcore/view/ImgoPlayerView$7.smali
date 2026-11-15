.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/b/b;->c()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/a;->b()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnStartListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;->onStart()V

    :cond_1
    return-void
.end method
