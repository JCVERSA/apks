.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->stopInner()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$800(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1102(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------on onCompletion what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1300(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$5;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1300(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;->onCompletion(II)V

    :cond_1
    return-void
.end method
