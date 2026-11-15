.class public final Lcom/yandex/div/internal/widget/PaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001BO\u0008\u0007\u0012\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0018R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/PaddingItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "",
        "paddingLeft",
        "midItemPadding",
        "crossItemPadding",
        "paddingRight",
        "paddingTop",
        "paddingBottom",
        "orientation",
        "<init>",
        "(IIIIIII)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "Lzfb;",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "b",
        "I",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/yandex/div/internal/widget/PaddingItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    iput p1, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->b:I

    .line 5
    iput p2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->c:I

    .line 6
    iput p3, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->d:I

    .line 7
    iput p4, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->e:I

    .line 8
    iput p5, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->f:I

    .line 9
    iput p6, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->g:I

    .line 10
    iput p7, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->h:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move p7, v0

    .line 2
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/yandex/div/internal/widget/PaddingItemDecoration;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    instance-of v0, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p4

    goto :goto_1

    :cond_0
    instance-of v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move p4, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported layoutManger: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    const-string v0, "Unsupported orientation: "

    if-ne p4, v1, :cond_10

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_f

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    if-nez p2, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    sub-int/2addr p4, v1

    if-ne p2, p4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    iget v5, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->h:I

    if-eqz v5, :cond_9

    if-eq v5, v1, :cond_6

    sget-object p1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    iget p2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->b:I

    if-eqz v3, :cond_7

    iget v2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->f:I

    :cond_7
    iget p3, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->e:I

    if-eqz v4, :cond_8

    iget p0, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->g:I

    goto :goto_4

    :cond_8
    iget p0, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->c:I

    :goto_4
    invoke-virtual {p1, p2, v2, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :cond_9
    invoke-static {p3}, Lpdc;->f(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_c

    if-ne p2, p4, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    if-nez p2, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    move v4, v1

    :cond_c
    if-eqz v3, :cond_d

    iget v2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->b:I

    :cond_d
    iget p2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->f:I

    if-eqz v4, :cond_e

    iget p3, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->e:I

    goto :goto_7

    :cond_e
    iget p3, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->c:I

    :goto_7
    iget p0, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->g:I

    invoke-virtual {p1, v2, p2, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :cond_f
    return-void

    :cond_10
    iget p2, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->c:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->d:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->h:I

    if-eqz p4, :cond_12

    if-eq p4, v1, :cond_11

    sget-object p1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yandex/div/internal/widget/PaddingItemDecoration;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_13
    :goto_8
    return-void
.end method
