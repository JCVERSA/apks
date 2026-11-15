.class public final Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x(Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "androidx/core/view/ViewKt$doOnPreDraw$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $resolver$inlined:Loj3;

.field final synthetic $this_applyTransform$inlined:Landroid/view/View;

.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic $transform$inlined:Lcom/yandex/div2/DivTransform;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$this_applyTransform$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$transform$inlined:Lcom/yandex/div2/DivTransform;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$resolver$inlined:Loj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$this_applyTransform$inlined:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$transform$inlined:Lcom/yandex/div2/DivTransform;

    iget-object v2, v2, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$resolver$inlined:Loj3;

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->c(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$this_applyTransform$inlined:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$transform$inlined:Lcom/yandex/div2/DivTransform;

    iget-object v2, v2, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;->$resolver$inlined:Loj3;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->c(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
