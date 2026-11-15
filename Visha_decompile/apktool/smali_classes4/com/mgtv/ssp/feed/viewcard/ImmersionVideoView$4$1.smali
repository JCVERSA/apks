.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->p(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->q(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4$1;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$4;->a:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V

    :cond_0
    return-void
.end method
