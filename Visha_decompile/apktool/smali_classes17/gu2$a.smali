.class public final Lgu2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgu2;->f(Landroid/animation/ObjectAnimator;Lcom/yandex/div/core/view2/Div2View;Ljg2;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic d:Loj3;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 0

    iput-object p1, p0, Lgu2$a;->b:Ljava/util/List;

    iput-object p2, p0, Lgu2$a;->c:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lgu2$a;->d:Loj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lgu2$a;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAction;

    iget-object v1, p0, Lgu2$a;->c:Lcom/yandex/div/core/view2/Div2View;

    const-string v2, "animation_end"

    iget-object v3, p0, Lgu2$a;->d:Loj3;

    invoke-virtual {v1, v0, v2, v3}, Lcom/yandex/div/core/view2/Div2View;->handleAction(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
