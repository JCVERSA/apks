.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->initGlobalLayoutListener()V
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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    const-string v0, "pref_player_hardware_render_open"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, ""

    const-string v4, "0"

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

    if-eqz v2, :cond_0

    const v5, 0x4c4b403

    invoke-interface {v2, v5, v4, v3}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget v6, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mRenderType:I

    if-ne v6, v1, :cond_2

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isTextureViewValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/hunantv/media/widget/IVideoView;->stop()V

    :cond_1
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2, v5}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->attachVideoView(I)V

    :cond_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pref_player_hardware_render_unsupport_reported"

    invoke-static {v2, v5}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v5, v5, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

    if-eqz v5, :cond_3

    const v6, 0x4c4b402

    invoke-interface {v5, v6, v4, v3}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    :cond_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGlobalLayout PREF_PLAYER_HARDWARE_RENDER_OPEN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$4;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
