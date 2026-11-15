.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStateUpdate(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->T(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->U(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onVideoSizeChanged(II)V

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;->b:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->R(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
