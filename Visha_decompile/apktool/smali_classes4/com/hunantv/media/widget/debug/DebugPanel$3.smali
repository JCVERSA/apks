.class Lcom/hunantv/media/widget/debug/DebugPanel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$100(Lcom/hunantv/media/widget/debug/DebugPanel;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->enableFramePTSNotify(Z)V

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView;->stepPlaybackNextFrame()V

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$3;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$300(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/hunantv/media/widget/IVideoView;->addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V

    return-void
.end method
