.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJZLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

.field public final synthetic g:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;


# direct methods
.method public constructor <init>(Landroid/view/View;FZLcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->c:Landroid/view/View;

    iput p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->d:F

    iput-boolean p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->e:Z

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->f:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iput-object p5, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->g:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->b:Z

    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->f:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->g:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;->a()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->c:Landroid/view/View;

    iget v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;->c:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
