.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0010B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "g",
        "()V",
        "Lwn/c0;",
        "a",
        "Lwn/c0;",
        "viewBinding",
        "Companion",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$a;


# instance fields
.field private final a:Lwn/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->Companion:Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget p2, Lcom/transsion/postdetail/R$layout;->layout_short_tv_category:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lwn/c0;->a(Landroid/view/View;)Lwn/c0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->a:Lwn/c0;

    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->g()V

    return-void
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)Lwn/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->a:Lwn/c0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->i(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->h(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->j(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView$b;-><init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->a:Lwn/c0;

    .line 14
    .line 15
    iget-object v0, v0, Lwn/c0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/postdetail/shorttv/widget/k;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/widget/k;-><init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->a:Lwn/c0;

    .line 26
    .line 27
    iget-object v0, v0, Lwn/c0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/postdetail/shorttv/widget/l;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/widget/l;-><init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;->a:Lwn/c0;

    .line 38
    .line 39
    iget-object v0, v0, Lwn/c0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    new-instance v1, Lcom/transsion/postdetail/shorttv/widget/m;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/widget/m;-><init>(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private static final h(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ShortTVDiscoverCategoryView"

    .line 6
    .line 7
    const-string v2, "click Latest"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->Companion:Lcom/transsion/moviedetailapi/bean/PlayListDeepLink$a;

    .line 15
    .line 16
    const-string v1, "oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=fresh-releases-list"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink$a;->a(Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string p1, "/home/playlist"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v3, "label"

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getLabel()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v3, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v3, "category"

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getCategory()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1, v3, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v3, "recType"

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getRecType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "topIds"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string p0, "Invalid deeplink for oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=fresh-releases-list"

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-static {p1, p0, v0, v1, v2}, Lwf/a$a;->m(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method private static final i(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ShortTVDiscoverCategoryView"

    .line 6
    .line 7
    const-string v2, "click Hottest"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->Companion:Lcom/transsion/moviedetailapi/bean/PlayListDeepLink$a;

    .line 15
    .line 16
    const-string v1, "oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=must-watch-list"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink$a;->a(Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string p1, "/home/playlist"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v3, "label"

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getLabel()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v3, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v3, "category"

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getCategory()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1, v3, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v3, "recType"

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PlayListDeepLink;->getRecType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "topIds"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string p0, "Invalid deeplink for oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=must-watch-list"

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-static {p1, p0, v0, v1, v2}, Lwf/a$a;->m(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method private static final j(Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ShortTVDiscoverCategoryView"

    .line 6
    .line 7
    const-string v2, "click All"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "/home/movieFilter"

    .line 14
    .line 15
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "tabId"

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "tabCode"

    .line 27
    .line 28
    const-string v1, "ShortTV"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "showViewPager"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v0, 0x0

    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
