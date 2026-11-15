.class Lcom/hunantv/media/widget/debug/DebugPanel$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initRenderTypeView()V
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

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$26;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioCheckChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderType:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$26;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$26;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    iget p1, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderType:I

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->convertRender(I)V

    :cond_1
    return-void
.end method
