.class Lcom/hunantv/media/widget/debug/DebugPanel$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initKeyInfoView()V
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

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioCheckChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v0, p1, Lcom/hunantv/media/widget/debug/DebugPanel;->keyInfoData:[B

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView;->reset()V

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel;->keyInfoData:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/hunantv/media/widget/IVideoView;->setKeyInfoData([BII)I

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->resume()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getKeyInfoData()[B

    move-result-object v0

    iput-object v0, p1, Lcom/hunantv/media/widget/debug/DebugPanel;->keyInfoData:[B

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$18;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView;->reset()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
