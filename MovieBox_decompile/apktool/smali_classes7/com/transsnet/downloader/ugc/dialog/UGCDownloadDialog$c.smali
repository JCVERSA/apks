.class public final Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->a:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p3, 0x0

    .line 37
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->a:I

    .line 42
    .line 43
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    iget p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->b:I

    .line 46
    .line 47
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    if-ne p2, p3, :cond_2

    .line 51
    .line 52
    iget p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->b:I

    .line 53
    .line 54
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    iget p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->a:I

    .line 57
    .line 58
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget p2, p0, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$c;->b:I

    .line 62
    .line 63
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    :goto_1
    return-void
.end method
