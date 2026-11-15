.class Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayUIDisplayImpl"
.end annotation


# instance fields
.field playUIView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->G(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->play_ui_panel_runnable:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;->playUIView:Landroid/view/View;

    instance-of v1, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$d;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$d;

    invoke-interface {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$d;->onPlayUIStatusChange(Z)V

    :cond_2
    return-void
.end method
