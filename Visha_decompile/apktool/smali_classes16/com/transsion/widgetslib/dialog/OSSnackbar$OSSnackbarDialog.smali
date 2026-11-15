.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OSSnackbarDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Lyi5;

.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Lyi5;

.field public final g:Lyi5;

.field public final h:Lyi5;

.field public final i:Lyi5;

.field public j:Z

.field public k:Landroid/animation/AnimatorSet;

.field public l:Landroid/animation/AnimatorSet;

.field public final m:Lyi5;

.field public final n:Lyi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->b:I

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mView$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mView$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->c:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mTextView$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mTextView$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->d:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mButton$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mButton$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->e:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mContentContainer$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->f:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mCloseButton$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mCloseButton$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g:Lyi5;

    sget-object p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mHandler$2;->INSTANCE:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mHandler$2;

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mDelayDismissRunnable$2;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->i:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mEaseOutInterpolator$2;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mEaseOutInterpolator$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->m:Lyi5;

    new-instance p2, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mEaseInInterpolator$2;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$mEaseInInterpolator$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->n:Lyi5;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_8

    const/16 p3, 0x20

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setFlags(II)V

    const/16 p3, 0x8

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setFlags(II)V

    const/16 p3, 0x50

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {p1}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lolb;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_snack_bar_landscape_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_snack_bar_landscape_button_navigation_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_button_navigation_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, Lolb;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_snack_bar_portrait_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_5
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_portrait_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_snack_bar_portrait_button_navigation_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_7
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_portrait_button_navigation_bottom_margin:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_1
    float-to-int p1, p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_8
    sget p1, Lcom/transsion/widgetslib/R$layout;->ossnackbar_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/high16 p3, 0x42440000    # 49.0f

    invoke-static {p2, p3}, Lwn8;->f(FF)F

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {p2, v0}, Lwn8;->f(FF)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lolb;->a0()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_9
    return-void
.end method

.method public static synthetic a(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->r(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->s(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final r(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->dismiss()V

    return-void
.end method

.method public static final s(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->p()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$dismiss$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$dismiss$1;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->o(Lc74;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/transsion/widgetslib/dialog/OSSnackbar;->b:Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 11

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->i()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->i()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_horizontal_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v1, v5

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lolb;->E(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_6

    move-object v3, v9

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v9, v3

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_snack_bar_landscape_horizontal_margin:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_3
    mul-int/lit8 v9, v3, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_space600:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_5

    :cond_9
    move v3, v2

    :goto_5
    sub-int/2addr v8, v9

    sub-int v3, v8, v3

    :goto_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineCount()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_d

    add-int/2addr v1, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v1, v7

    if-le v1, v3, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_b
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->f(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_7

    :cond_c
    move p0, v2

    :goto_7
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_b

    :cond_d
    :goto_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-eq v1, v9, :cond_e

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_e
    invoke-virtual {p0, v9}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->f(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_9

    :cond_f
    move v3, v2

    :goto_9
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_b

    :cond_10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_a

    :cond_11
    move p0, v2

    :goto_a
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_b
    return-void
.end method

.method public final f(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    :cond_3
    if-eqz v2, :cond_6

    if-eqz p1, :cond_4

    const/4 v4, -0x1

    :cond_4
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space025:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_5
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public final g()Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mButton>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public final getMTextView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mTextView>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mView>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getShowDuration()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->b:I

    return p0
.end method

.method public final h()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final j()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    return-object p0
.end method

.method public final k()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->n:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final l()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->m:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final m()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final n()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v1

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final o(Lc74;)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v1

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMView()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$a;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$a;-><init>(Lc74;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->k:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->l:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->m()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->j()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lhb7;

    invoke-direct {v0, p2, p0}, Lhb7;-><init>(Landroid/view/View$OnClickListener;Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->g()Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public final setCloseButtonVisible(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->j:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lgb7;

    invoke-direct {v1, p0}, Lgb7;-><init>(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->p()V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->m()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->j()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object v0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->b:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->getMTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1}, Lolb;->G0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->e()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->n()V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->m()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->j()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;

    move-result-object v1

    iget p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->b:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
