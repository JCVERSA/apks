.class public Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field public final synthetic c:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/ExpandableAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->c:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->c:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->y(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
