.class Lcom/mgtv/a/c/i$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/i;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/i$8;->a:Lcom/mgtv/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatus()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/c/i$8;->a:Lcom/mgtv/a/c/i;

    iget-object v1, v0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->isPlaying()Z

    move-result v0

    iget-object v2, p0, Lcom/mgtv/a/c/i$8;->a:Lcom/mgtv/a/c/i;

    iget-object v2, v2, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v2}, Lcom/hunantv/media/widget/MgtvVideoView;->isPrepared()Z

    move-result v2

    iget-object p0, p0, Lcom/mgtv/a/c/i$8;->a:Lcom/mgtv/a/c/i;

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isCompletion()Z

    move-result p0

    invoke-interface {v1, v0, v2, p0}, Lcom/mgtv/a/c/e;->a(ZZZ)V

    :cond_0
    return-void
.end method
