.class Lcom/to/aboomy/pager2banner/Banner$e$a;
.super Landroidx/recyclerview/widget/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/to/aboomy/pager2banner/Banner$e;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Lcom/to/aboomy/pager2banner/Banner$e;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner$e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$e$a;->q:Lcom/to/aboomy/pager2banner/Banner$e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected w(I)I
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$e$a;->q:Lcom/to/aboomy/pager2banner/Banner$e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/to/aboomy/pager2banner/Banner$e;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/to/aboomy/pager2banner/Banner;->f(Lcom/to/aboomy/pager2banner/Banner;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    const-wide v2, 0x3fe542c3c9eecbfbL    # 0.6644

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr v0, v2

    .line 16
    double-to-int p1, v0

    .line 17
    return p1
.end method
