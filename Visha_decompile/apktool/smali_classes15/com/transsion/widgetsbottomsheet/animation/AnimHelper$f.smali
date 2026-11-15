.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->h(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFFFZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Z

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public constructor <init>(Ljava/util/List;FFLjava/util/ArrayList;ZFF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->c:Ljava/util/List;

    iput p2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->d:F

    iput p3, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->e:F

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->f:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->g:Z

    iput p6, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->h:F

    iput p7, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->i:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->b:Z

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->f:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->c:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->f:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->c:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->c:Ljava/util/List;

    iget v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->h:F

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->i:F

    invoke-static {p1, v0, v1, p0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;FF)V

    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->c:Ljava/util/List;

    iget v1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->d:F

    iget v2, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->e:F

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;FF)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;->f:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljv9;

    invoke-virtual {p1}, Ljv9;->p()V

    goto :goto_0

    :cond_0
    return-void
.end method
