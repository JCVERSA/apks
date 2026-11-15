.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;


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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTsSkip(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBeforeFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;->onTsSkip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$13;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnWarningListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
