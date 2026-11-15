.class public final Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O0(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final synthetic e:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->b:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->f0(Lpc9;Lpc9;)Lpc9;

    move-result-object v1

    invoke-interface {v1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzl2;

    iget-object v4, v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iget-object v5, v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v2}, Lzl2;->d()Loj3;

    move-result-object v6

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object p1, v4

    move-object p2, v5

    move-object p3, v6

    move-object p4, v3

    move-object/from16 p5, v2

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move/from16 p8, v7

    move-object/from16 p9, v8

    invoke-static/range {p1 .. p9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
