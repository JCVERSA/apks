.class Lcom/hunantv/media/widget/FakeVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/FakeVideoView;->sendRenderStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/FakeVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/FakeVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/FakeVideoView$1;->this$0:Lcom/hunantv/media/widget/FakeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView$1;->this$0:Lcom/hunantv/media/widget/FakeVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->start()V

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView$1;->this$0:Lcom/hunantv/media/widget/FakeVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/FakeVideoView;->exTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v1, Lcom/hunantv/media/widget/FakeVideoView$1$1;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/FakeVideoView$1$1;-><init>(Lcom/hunantv/media/widget/FakeVideoView$1;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/FakeVideoView$1;->this$0:Lcom/hunantv/media/widget/FakeVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/FakeVideoView;->onInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    if-eqz v0, :cond_0

    const-string v0, "FakeVideoView"

    const-string v1, "sendRenderStart in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView$1;->this$0:Lcom/hunantv/media/widget/FakeVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/FakeVideoView;->onInfoListener:Lcom/hunantv/media/widget/IVideoView$OnInfoListener;

    const/16 v0, 0x384

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/hunantv/media/widget/IVideoView$OnInfoListener;->onInfo(II)Z

    :cond_0
    return-void
.end method
