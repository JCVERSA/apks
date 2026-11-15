.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avery/subtitle/widget/TracksSubtitleView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->I4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->getmUnLockListener()Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->getmUnLockListener()Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->isPlayUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$m;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 0

    const-string p0, "vd_cp_subdrag"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
