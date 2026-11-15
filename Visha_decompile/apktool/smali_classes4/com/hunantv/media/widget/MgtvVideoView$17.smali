.class Lcom/hunantv/media/widget/MgtvVideoView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$17;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLoadDataPaused()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$17;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$17;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;->onAfterLoadDataPaused()V

    :cond_0
    return-void
.end method

.method public onBeforeLoadDataResume()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$17;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$17;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4900(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;->onBeforeLoadDataResume()V

    :cond_0
    return-void
.end method
