.class public final Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u0014\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "pageName",
        "",
        "isDownloadBtn",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "item",
        "",
        "C1",
        "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv_pugc/bean/Subject;)V",
        "D1",
        "holder",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V",
        "baseQuickAdapter",
        "Lt6/f;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;",
        "F",
        "Ljava/lang/String;",
        "G",
        "Z",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final F:Ljava/lang/String;

.field private final G:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_trending:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;->F:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;->G:Z

    .line 16
    .line 17
    return-void
.end method

.method private final C1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;-><init>(Lcom/transsion/shorttv_pugc/bean/Subject;Landroidx/appcompat/widget/AppCompatImageView;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final D1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 17

    .line 1
    sget-object v0, Lis/b;->a:Lis/b$a;

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v4, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move-object v4, v3

    .line 30
    :goto_1
    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_module_04:I

    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v7, v2

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_2
    move-object v7, v3

    .line 48
    :goto_3
    const/16 v14, 0x1fb0

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    move-object/from16 v2, p1

    .line 61
    .line 62
    move-object v3, v4

    .line 63
    move v4, v5

    .line 64
    move v5, v6

    .line 65
    move v6, v8

    .line 66
    move v8, v9

    .line 67
    move v9, v10

    .line 68
    move v10, v11

    .line 69
    move v11, v12

    .line 70
    move v12, v13

    .line 71
    move/from16 v13, v16

    .line 72
    .line 73
    invoke-static/range {v0 .. v15}, Lis/b$a;->m(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "item"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lt6/f;"
        }
    .end annotation

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt6/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt6/f;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
