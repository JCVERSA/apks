.class Lcom/to/aboomy/pager2banner/Banner$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$a;->a:Lcom/to/aboomy/pager2banner/Banner;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$a;->a:Lcom/to/aboomy/pager2banner/Banner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->e(Lcom/to/aboomy/pager2banner/Banner;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-le p1, p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
