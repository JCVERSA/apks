.class public final Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;
.super Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$a;,
        Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment<",
        "Lvp/j;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 ?2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J/\u0010\n\u001a\u00020\t2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u0015\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001b\u0010,\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00103\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00105\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00102R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u001b\u0010>\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010)\u001a\u0004\u0008<\u0010=\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;",
        "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;",
        "Lvp/j;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/search_pugc/bean/SearchSuggestItem;",
        "newList",
        "oldList",
        "",
        "i0",
        "(Ljava/util/List;Ljava/util/List;)Z",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "k0",
        "(Landroid/view/LayoutInflater;)Lvp/j;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initListener",
        "lazyLoadData",
        "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;",
        "listener",
        "q0",
        "(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;)V",
        "",
        "keyWord",
        "o0",
        "(Ljava/lang/String;)V",
        "a",
        "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;",
        "mClickListener",
        "Lkq/c;",
        "b",
        "Lkotlin/Lazy;",
        "j0",
        "()Lkq/c;",
        "mViewModel",
        "Lcom/transsion/search_pugc/fragment/suggest/e;",
        "c",
        "Lcom/transsion/search_pugc/fragment/suggest/e;",
        "mAdapter",
        "d",
        "Ljava/lang/String;",
        "mKeyWord",
        "e",
        "mOps",
        "Lvg/a;",
        "f",
        "Lvg/a;",
        "exposeUtil",
        "Lcom/transsion/search_pugc/g;",
        "g",
        "getSearchReporter",
        "()Lcom/transsion/search_pugc/g;",
        "searchReporter",
        "h",
        "Search_psRelease"
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
.field public static final h:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$a;


# instance fields
.field private a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;

.field private final b:Lkotlin/Lazy;

.field private c:Lcom/transsion/search_pugc/fragment/suggest/e;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Lvg/a;

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->h:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/search_pugc/fragment/suggest/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/search_pugc/fragment/suggest/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->b:Lkotlin/Lazy;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lvg/a;

    .line 20
    .line 21
    invoke-direct {v0}, Lvg/a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f:Lvg/a;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/search_pugc/fragment/suggest/c;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/transsion/search_pugc/fragment/suggest/c;-><init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->g:Lkotlin/Lazy;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->m0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0()Lkq/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->n0()Lkq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->p0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->l0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/fragment/suggest/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getSearchReporter()Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/search_pugc/g;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final synthetic h0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0(Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method private final j0()Lkq/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkq/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g;->i(Lqi/b;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getOps()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/fragment/suggest/e;->R1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->i0(Ljava/util/List;Ljava/util/List;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f:Lvg/a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lvg/a;->l()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/util/Collection;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f:Lvg/a;

    .line 90
    .line 91
    invoke-virtual {p0}, Lvg/a;->k()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 96
    .line 97
    if-eqz p0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0
.end method

.method private static final m0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->getWord()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 36
    .line 37
    :cond_2
    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/transsion/search_pugc/g;->B(Lcom/transsion/search_pugc/bean/SearchSuggestItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e:Ljava/lang/String;

    .line 57
    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    const-string p0, ""

    .line 61
    .line 62
    :cond_3
    invoke-interface {p2, p1, p3, v0, p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;->a(Lcom/transsion/search_pugc/bean/SearchSuggestItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    return-void
.end method

.method private static final n0()Lkq/c;
    .locals 3

    .line 1
    new-instance v0, Lkq/c;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkq/c;-><init>(Landroid/app/Application;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private static final p0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->k0(Landroid/view/LayoutInflater;)Lvp/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f:Lvg/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lvp/j;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lvp/j;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;-><init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lvg/a;->n(Landroidx/recyclerview/widget/RecyclerView;Lvg/a$b;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->j0()Lkq/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lkq/c;->m()Landroidx/lifecycle/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/transsion/search_pugc/fragment/suggest/d;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/fragment/suggest/d;-><init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$e;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lvp/j;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lvp/j;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 31
    .line 32
    invoke-direct {p2}, Lcom/transsion/search_pugc/fragment/suggest/e;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$d;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$d;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    new-instance p2, Lcom/transsion/search_pugc/fragment/suggest/a;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/transsion/search_pugc/fragment/suggest/a;-><init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/g;->j(Lqi/b;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public k0(Landroid/view/LayoutInflater;)Lvp/j;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lvp/j;->c(Landroid/view/LayoutInflater;)Lvp/j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/ugc_search/search_suggest"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g;->g(Ljava/lang/String;)Lqi/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final o0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "keyWord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->j0()Lkq/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/transsion/search_pugc/g;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-virtual {v0, p1, v2, v1}, Lkq/c;->j(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const-string v1, "keyword"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final q0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;

    .line 7
    .line 8
    return-void
.end method
