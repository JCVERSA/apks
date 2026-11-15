.class public final Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->c(Ljava/util/List;ZJLe74;Le74;Le74;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Le74;

.field public final synthetic g:Le74;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Le74;Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p2, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->c:Z

    iput-object p3, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->f:Le74;

    iput-object p6, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->g:Le74;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->d:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->clearBackDropInnerColorsAlpha()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->f:Le74;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->g:Le74;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->c:Z

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->d:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setNightMode(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->c:Z

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v3, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getBackDropDefaultAlphas(Z)[F

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, v0, v0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBackDropInnerColorsAlpha(FFF)V

    goto :goto_2

    :cond_2
    return-void
.end method
