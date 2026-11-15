.class public Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field public final synthetic d:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->d:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput p3, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->b:I

    iput-object p4, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->b:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->c:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;->d:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->a(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;)Lmu4;

    move-result-object p0

    invoke-interface {p0}, Lmu4;->getHeaderCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    :goto_0
    return p0
.end method
