.class public final Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->w(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic c:Lei2;

.field public final synthetic d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Loj3;

.field public final synthetic g:Lcom/yandex/div2/Div;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lei2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Landroid/view/View;Loj3;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->c:Lei2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p4, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->f:Loj3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->g:Lcom/yandex/div2/Div;

    iput-object p7, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->h:Ljava/util/List;

    iput-object p8, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->i:Ljava/util/List;

    iput-object p9, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->j:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const-string v2, "view"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->c:Lei2;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->e:Landroid/view/View;

    iget-object v3, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->b:Lcom/yandex/div/core/view2/Div2View;

    iget-object v4, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->f:Loj3;

    iget-object v5, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->g:Lcom/yandex/div2/Div;

    iget-object v6, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->h:Ljava/util/List;

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    invoke-virtual/range {p1 .. p6}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->h(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/Div;Ljava/util/List;)V

    iget-object v1, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iget-object v2, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->b:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->f:Loj3;

    iget-object v4, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->e:Landroid/view/View;

    iget-object v5, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->g:Lcom/yandex/div2/Div;

    iget-object v6, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->i:Ljava/util/List;

    invoke-static {v6, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->T(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->j:Ljava/util/List;

    iget-object v8, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->f:Loj3;

    invoke-static {v7, v8}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->T(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v7

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->m(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v1, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->d:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->f(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v0, v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
