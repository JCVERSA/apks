.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;


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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$6;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnEventInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;->onInfo(II)V

    :cond_0
    return-void
.end method
