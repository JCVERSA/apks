.class Lcom/hunantv/media/widget/MgtvLoopVideoView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvLoopVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mgtvcore onPause"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$3800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$15;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$4000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    :cond_0
    return-void
.end method
