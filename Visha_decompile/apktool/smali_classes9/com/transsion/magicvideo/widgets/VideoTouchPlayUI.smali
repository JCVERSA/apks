.class public Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;
.super Lcom/transsion/magicvideo/widgets/PlayerViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public H0:J

.field public I0:Z

.field public J0:I

.field public K0:I

.field public L0:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;

.field public q0:Landroid/widget/TextView;

.field public r0:Landroid/widget/TextView;

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/PlayerViewController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public O(JJJ)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->O(JJJ)V

    iget-wide p5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    cmp-long p5, p5, p3

    if-eqz p5, :cond_0

    iput-wide p3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    iget-object p5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->r0:Landroid/widget/TextView;

    if-eqz p5, :cond_0

    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide p5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    cmp-long v0, p1, p5

    if-lez v0, :cond_1

    move-wide p1, p5

    :cond_1
    const-wide/16 p5, 0x64

    mul-long/2addr p5, p1

    long-to-float p5, p5

    long-to-float p6, p3

    div-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iget-boolean p6, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    if-nez p6, :cond_2

    iget-object p6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->q0:Landroid/widget/TextView;

    if-eqz p6, :cond_2

    invoke-static {p1, p2}, Lwna;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean p6, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    if-nez p6, :cond_4

    iget-object p6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p6, :cond_3

    int-to-float p5, p5

    invoke-virtual {p6, p5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->c0(JJ)V

    :cond_4
    return-void
.end method

.method public final Z(IFZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->L0:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;->a(IFZ)V

    :cond_0
    return-void
.end method

.method public a0(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->s0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->t0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->u0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->w0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_top_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_bottom_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->y0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_start_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->z0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_end_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->A0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_bottom_gestural:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->B0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_bottom_land_gestural:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->C0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_end_land_gestural:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->D0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_operate_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->v0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_play_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->J0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->video_play_button_padding_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->default_speed_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->E0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$dimen;->speed_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->F0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lpp3;->h(Landroid/content/Context;)I

    move-result p1

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->u0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->u0:I

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->w0:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->w0:I

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->x0:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->x0:I

    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->y0:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->y0:I

    :cond_0
    return-void
.end method

.method public b0(Z)V
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, p1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i2(FF)V

    :cond_1
    return-void
.end method

.method public c0(JJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->h0:Lcom/transsion/magicvideo/widgets/PlayerViewController$b;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/widgets/PlayerViewController$b;->a(JJ)V

    :cond_1
    return-void
.end method

.method public d0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSeekBarStyle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoTouchPlayUI"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public initTouchBounds()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->z0:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->Q:I

    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->x0:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->s0:I

    :goto_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->A0:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->Q:I

    :goto_2
    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v2, v0, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "navigation_bar_gesture_height"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->getNavbarSize(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g(Landroid/graphics/Point;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->j()V

    return-void
.end method

.method public onProgressUpdateError(JJJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onProgressUpdateError(JJJ)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->q0:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public p(IF)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->p(IF)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->Z(IFZ)V

    return-void
.end method

.method public resetSystemUiFlag()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s2()V

    :cond_0
    return-void
.end method

.method public s(IF)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->s(IF)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->Z(IFZ)V

    return-void
.end method

.method public setVolumeAndBrightnessChangeListener(Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->L0:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;

    return-void
.end method

.method public t()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->t()V

    invoke-static {}, Lav3;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->I0:Z

    return-void
.end method
