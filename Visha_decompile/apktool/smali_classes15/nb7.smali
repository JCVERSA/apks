.class public final Lnb7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb7$a;
    }
.end annotation


# static fields
.field public static final p:Lnb7$a;


# instance fields
.field public final a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:F

.field public l:Landroid/view/VelocityTracker;

.field public final m:I

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnb7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnb7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnb7;->p:Lnb7$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V
    .locals 1

    const-string v0, "mDialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPanel"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lnb7;->g:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnb7;->n:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lnb7;->m:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    iget-object p0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final b(FF)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/16 p1, 0x640

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p0, v0

    float-to-double v0, p2

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnb7;->b:F

    iput p1, p0, Lnb7;->d:F

    const/4 p1, 0x0

    iput p1, p0, Lnb7;->e:F

    iput p1, p0, Lnb7;->i:F

    iput p1, p0, Lnb7;->h:F

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getMPanelVisibleHeight()I

    move-result p1

    iput p1, p0, Lnb7;->j:I

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lnb7;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnb7;->o:Z

    return-void
.end method

.method public final d(F)F
    .locals 0

    sget-boolean p0, Lolb;->E:Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public final e()F
    .locals 3

    iget-object v0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget v1, p0, Lnb7;->m:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnb7;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lnb7;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    goto/16 :goto_3

    :cond_1
    iget-boolean v0, p0, Lnb7;->o:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnb7;->c(Landroid/view/MotionEvent;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnb7;->c:F

    iget v0, p0, Lnb7;->d:F

    sub-float/2addr p1, v0

    iput p1, p0, Lnb7;->e:F

    cmpg-float v0, p1, v2

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lnb7;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lnb7;->h:F

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lnb7;->e:F

    add-float v3, p1, v0

    sget-boolean v4, Lolb;->E:Z

    if-eqz v4, :cond_4

    iget p1, p0, Lnb7;->g:F

    cmpg-float v0, v3, p1

    if-gez v0, :cond_8

    move v3, p1

    goto :goto_1

    :cond_4
    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    iget v2, p0, Lnb7;->g:F

    cmpl-float v4, p1, v2

    if-lez v4, :cond_5

    cmpg-float v4, v3, v2

    if-gez v4, :cond_5

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lnb7;->e:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnb7;->h:F

    invoke-virtual {p0, v3, v0}, Lnb7;->b(FF)F

    move-result v0

    iput v0, p0, Lnb7;->i:F

    sub-float/2addr p1, v2

    sub-float v3, p1, v0

    goto :goto_1

    :cond_5
    cmpg-float v2, p1, v2

    if-gez v2, :cond_8

    iget v2, p0, Lnb7;->h:F

    invoke-virtual {p0, v2, v0}, Lnb7;->b(FF)F

    move-result v0

    iput v0, p0, Lnb7;->i:F

    :goto_0
    add-float v3, p1, v0

    goto :goto_1

    :cond_6
    iget v2, p0, Lnb7;->g:F

    cmpg-float v4, p1, v2

    if-gez v4, :cond_7

    cmpl-float v4, v3, v2

    if-lez v4, :cond_7

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lnb7;->e:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnb7;->h:F

    invoke-virtual {p0, v3, v2}, Lnb7;->b(FF)F

    move-result v2

    iput v2, p0, Lnb7;->i:F

    add-float/2addr p1, v0

    add-float v3, p1, v2

    goto :goto_1

    :cond_7
    cmpg-float v2, p1, v2

    if-gez v2, :cond_8

    iget v2, p0, Lnb7;->h:F

    invoke-virtual {p0, v2, v0}, Lnb7;->b(FF)F

    move-result v0

    iput v0, p0, Lnb7;->i:F

    goto :goto_0

    :cond_8
    :goto_1
    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->updateOutsideViewAlpha(F)V

    iget p1, p0, Lnb7;->c:F

    iput p1, p0, Lnb7;->d:F

    goto/16 :goto_3

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb7;->o:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnb7;->f:F

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-virtual {p0}, Lnb7;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnb7;->e:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_a

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    :cond_a
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_b

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->gotoFinalPosAcc(F)V

    goto :goto_2

    :cond_b
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_c

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0, v0}, Lnb7;->d(F)F

    move-result v0

    iget v2, p0, Lnb7;->g:F

    invoke-virtual {p1, v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->gotoFinalPosSpring(FF)V

    goto :goto_2

    :cond_c
    iget v2, p0, Lnb7;->g:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_e

    sub-float/2addr p1, v2

    iget v2, p0, Lnb7;->j:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_d

    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0, v0}, Lnb7;->d(F)F

    move-result v0

    iget v2, p0, Lnb7;->g:F

    invoke-virtual {p1, v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->gotoFinalPosSpring(FF)V

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->gotoFinalPosAcc(F)V

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lnb7;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0, v0}, Lnb7;->d(F)F

    move-result v0

    iget v2, p0, Lnb7;->g:F

    invoke-virtual {p1, v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->gotoFinalPosSpring(FF)V

    :goto_2
    invoke-virtual {p0}, Lnb7;->g()V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, p1}, Lnb7;->c(Landroid/view/MotionEvent;)V

    :goto_3
    return v1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnb7;->l:Landroid/view/VelocityTracker;

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lnb7;->n:Z

    return-void
.end method
