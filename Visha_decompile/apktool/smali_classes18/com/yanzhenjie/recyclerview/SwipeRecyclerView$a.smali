.class public Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field public final synthetic c:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld8;->t(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld8;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0
.end method
