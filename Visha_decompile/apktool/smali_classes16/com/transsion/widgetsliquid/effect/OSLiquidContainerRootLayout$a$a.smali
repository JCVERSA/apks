.class public final Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;
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
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Le74;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Ljava/util/List;Le74;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->c:Le74;

    iput-object p3, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->c:Le74;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
