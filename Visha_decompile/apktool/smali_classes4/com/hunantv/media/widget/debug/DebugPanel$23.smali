.class Lcom/hunantv/media/widget/debug/DebugPanel$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initForceHttpDnsView()V
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

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$23;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioCheckChanged(I)V
    .locals 1

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isForceHttpDns:Z

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$23;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$23;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isForceHttpDns:Z

    invoke-interface {p1, v0}, Lcom/hunantv/media/widget/IVideoView;->setForceHttpDns(Z)V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$23;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->resume()V

    :cond_1
    return-void
.end method
