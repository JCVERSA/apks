.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->g(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFJ)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->c:Landroid/view/View;

    iput p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->d:F

    iput p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->e:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->b:Z

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->c:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->c:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->c:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;->d:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
