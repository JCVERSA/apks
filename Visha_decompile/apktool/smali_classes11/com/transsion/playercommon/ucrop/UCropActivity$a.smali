.class public Lcom/transsion/playercommon/ucrop/UCropActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/ucrop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->t0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/transsion/playercommon/ucrop/UCropActivity;->p0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {v0, v1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->u0(Lcom/transsion/playercommon/ucrop/UCropActivity;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->O0(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->z0(Lcom/transsion/playercommon/ucrop/UCropActivity;F)V

    return-void
.end method

.method public d(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$a;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->y0(Lcom/transsion/playercommon/ucrop/UCropActivity;F)V

    return-void
.end method
