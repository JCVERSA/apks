.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->f(Landroid/view/View;Landroid/view/ViewGroup;IIJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

.field public final synthetic d:I

.field public final synthetic e:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

.field public final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;ILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->c:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    iput p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->d:I

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->e:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)V

    return-void
.end method

.method public static final b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)V
    .locals 1

    const-string v0, "$wrapper"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->d()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->b:Z

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->c:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->d()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->e:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;->a()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->f:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->c:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    new-instance v0, Lac;

    invoke-direct {v0, p0}, Lac;-><init>(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->c:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;->d:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->e(I)V

    return-void
.end method
