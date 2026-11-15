.class public final Lcom/transsnet/downloader/widget/DownloadGridTabView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0014\u001a\u00020\u000f2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f0\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001b\u0010\u0018\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001fR\u0016\u0010#\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R*\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadGridTabView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "position",
        "Lcom/transsnet/downloader/widget/e;",
        "item",
        "",
        "b",
        "(ILcom/transsnet/downloader/widget/e;)V",
        "Lkotlin/Function2;",
        "callback",
        "setItemClickCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "",
        "dataList",
        "setDataList",
        "(Ljava/util/List;)V",
        "Lbx/v0;",
        "a",
        "Lbx/v0;",
        "viewBinding",
        "Lcom/transsnet/downloader/widget/d;",
        "Lcom/transsnet/downloader/widget/d;",
        "mAdapter",
        "c",
        "I",
        "curIndex",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "itemClickCallback",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Lbx/v0;

.field private b:Lcom/transsnet/downloader/widget/d;

.field private c:I

.field private d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsnet/downloader/R$layout;->layout_download_grid_tab:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-static {p0}, Lbx/v0;->a(Landroid/view/View;)Lbx/v0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->a:Lbx/v0;

    .line 6
    new-instance p2, Lcom/transsnet/downloader/widget/d;

    invoke-direct {p2}, Lcom/transsnet/downloader/widget/d;-><init>()V

    .line 7
    new-instance p3, Lcom/transsnet/downloader/widget/f;

    invoke-direct {p3, p2, p0}, Lcom/transsnet/downloader/widget/f;-><init>(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;)V

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 8
    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 9
    iget-object p1, p1, Lbx/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance p2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x4

    invoke-direct {p2, p3, v0}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 11
    new-instance p2, Ltf/a;

    const/16 p3, 0x8

    invoke-static {p3}, Llj/a;->b(I)I

    move-result v0

    invoke-static {p3}, Llj/a;->b(I)I

    move-result p3

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1, v1}, Ltf/a;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 12
    iget-object p2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(ILcom/transsnet/downloader/widget/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/transsnet/downloader/widget/e;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/e;->c(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 28
    .line 29
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    .line 30
    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-le v0, p1, :cond_1

    .line 47
    .line 48
    iput p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p2, v0}, Lcom/transsnet/downloader/widget/e;->c(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 55
    .line 56
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->d:Lkotlin/jvm/functions/Function2;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method private static final c(Lcom/transsnet/downloader/widget/d;Lcom/transsnet/downloader/widget/DownloadGridTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "view"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const-wide/16 v0, 0x1f4

    .line 18
    .line 19
    invoke-virtual {p2, p3, v0, v1}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/transsnet/downloader/widget/e;

    .line 31
    .line 32
    invoke-direct {p1, p4, p0}, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b(ILcom/transsnet/downloader/widget/e;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final setDataList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsnet/downloader/widget/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/transsnet/downloader/widget/e;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/e;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, -0x1

    .line 35
    :goto_1
    iput v2, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    .line 36
    .line 37
    if-gez v2, :cond_2

    .line 38
    .line 39
    iput v1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->c:I

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->b:Lcom/transsnet/downloader/widget/d;

    .line 42
    .line 43
    check-cast p1, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setItemClickCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsnet/downloader/widget/e;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadGridTabView;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method
