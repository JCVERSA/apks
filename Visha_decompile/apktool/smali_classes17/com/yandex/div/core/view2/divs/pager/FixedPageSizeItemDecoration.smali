.class public final Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J/\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u0013*\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0019R\u0014\u0010 \u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Lsn2;",
        "paddings",
        "Lex3;",
        "sizeProvider",
        "<init>",
        "(Lsn2;Lex3;)V",
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
        "",
        "a",
        "(Ljava/lang/Integer;)I",
        "b",
        "Lex3;",
        "c",
        "I",
        "offsetLeft",
        "d",
        "offsetTop",
        "e",
        "offsetRight",
        "f",
        "offsetBottom",
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
.field public final b:Lex3;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lsn2;Lex3;)V
    .locals 1

    const-string v0, "paddings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->b:Lex3;

    invoke-virtual {p1}, Lsn2;->b()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->a(Ljava/lang/Integer;)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->c:I

    invoke-virtual {p1}, Lsn2;->d()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->a(Ljava/lang/Integer;)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->d:I

    invoke-virtual {p1}, Lsn2;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->a(Ljava/lang/Integer;)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->e:I

    invoke-virtual {p1}, Lsn2;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->a(Ljava/lang/Integer;)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->b:Lex3;

    invoke-interface {p0}, Lex3;->b()F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->c:I

    iget p3, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->d:I

    iget p4, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->e:I

    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;->f:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
