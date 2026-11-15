.class public final Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;Ljava/util/List;)V
    .locals 1

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onInserted(II)V
    .locals 6

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v2

    add-int v3, p1, v1

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->b:Ljava/util/List;

    add-int v5, v0, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->v(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;ILcom/yandex/div2/DivVisibility;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onMoved(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->onRemoved(II)V

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->onInserted(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->GONE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v1, p1, v2}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->u(ILcom/yandex/div2/DivVisibility;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;->c:Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
