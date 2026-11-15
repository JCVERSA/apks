.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->e(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:F

.field public final synthetic f:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->d:Landroid/view/View;

    iput p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->e:F

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->f:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->b:Z

    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->f:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    invoke-static {p1, v0, p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->d:Landroid/view/View;

    iget v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->e:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;->d:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
