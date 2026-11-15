.class Lcom/hunantv/media/widget/debug/DebugPanel$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initEnhanceFilterView()V
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

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$21;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioCheckChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    :goto_0
    iput-object v0, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    goto :goto_1

    :cond_0
    sput-boolean v0, Lcom/hunantv/media/player/d/d;->a:Z

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->UNSHARP_EDGE_COMPARE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    goto :goto_0

    :cond_1
    sput-boolean v0, Lcom/hunantv/media/player/d/d;->a:Z

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->UNSHARP_EDGE:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$21;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$21;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    :cond_2
    return-void
.end method
