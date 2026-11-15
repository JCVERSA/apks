.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;
.super Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$a;,
        Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment<",
        "Lvp/n;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 ]2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002^_B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u001d\u0010\u0012\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u001d\u0010\u0017\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\'\u0010 \u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0005J\u0017\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J!\u0010.\u001a\u00020\u00062\u0006\u0010+\u001a\u00020*2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00080\u0010\u0005J\u000f\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00081\u0010\u0005J\u000f\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0006\u00a2\u0006\u0004\u00085\u0010\u0005J\u0015\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u001d\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010:\u001a\u00020\u00062\u0006\u00109\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008:\u0010\rJ\u0017\u0010=\u001a\u00020\u00062\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008?\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010C\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010FR\u0018\u0010H\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u001d0J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010LR\u0018\u0010R\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010U\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u001b\u0010\\\u001a\u00020W8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\u00a8\u0006`"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;",
        "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;",
        "Lvp/n;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initViewModel",
        "initHistory",
        "loadHistoryData",
        "",
        "isExpand",
        "expandHistoryLine",
        "(Z)V",
        "showHistoryList",
        "",
        "Lcom/transsion/search_pugc/bean/HotWord;",
        "hotWords",
        "initHotWordWithData",
        "(Ljava/util/List;)V",
        "initEveryoneSearch",
        "Lcom/transsion/search_pugc/bean/HotRank;",
        "rankRanks",
        "initRankWithData",
        "initViewPager",
        "Landroid/content/Context;",
        "context",
        "",
        "index",
        "",
        "textStr",
        "Lxy/d;",
        "getIndicatorText",
        "(Landroid/content/Context;ILjava/lang/String;)Lxy/d;",
        "Lxy/c;",
        "getIndicatorView",
        "(Landroid/content/Context;)Lxy/c;",
        "clearTipsDialog",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lvp/n;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "lazyLoadData",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "onConnected",
        "keyword",
        "addHistoryWord",
        "(Ljava/lang/String;)V",
        "hidden",
        "onHiddenChanged",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "Lcom/transsion/search_pugc/fragment/hot/adapter/c;",
        "mSearchHistoryAdapter",
        "Lcom/transsion/search_pugc/fragment/hot/adapter/c;",
        "expand",
        "Z",
        "historyExpandLine",
        "I",
        "historyCollapseLine",
        "hotSearchWord",
        "Ljava/lang/String;",
        "",
        "mHistoryList",
        "Ljava/util/List;",
        "Lcom/transsion/search_pugc/fragment/hot/adapter/e;",
        "everyOneSearchAdapter",
        "Lcom/transsion/search_pugc/fragment/hot/adapter/e;",
        "rankList",
        "Lkq/c;",
        "mSearchViewModel",
        "Lkq/c;",
        "Lcom/transsion/search_pugc/ad/SearchHotAdHelper;",
        "adHelper",
        "Lcom/transsion/search_pugc/ad/SearchHotAdHelper;",
        "Lcom/transsion/search_pugc/g;",
        "searchReporter$delegate",
        "Lkotlin/Lazy;",
        "getSearchReporter",
        "()Lcom/transsion/search_pugc/g;",
        "searchReporter",
        "Companion",
        "a",
        "b",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "/ugc_search/search_manager"


# instance fields
.field private adHelper:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

.field private everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

.field private expand:Z

.field private historyCollapseLine:I

.field private historyExpandLine:I

.field private hotSearchWord:Ljava/lang/String;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

.field private mSearchViewModel:Lkq/c;

.field private rankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/search_pugc/bean/HotRank;",
            ">;"
        }
    .end annotation
.end field

.field private final searchReporter$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->Companion:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->rankList:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 24
    .line 25
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 33
    .line 34
    new-instance v0, Lhq/g;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lhq/g;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->searchReporter$delegate:Lkotlin/Lazy;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initView$lambda$2(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getIndicatorText(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lxy/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lxy/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getIndicatorView(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lxy/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getIndicatorView(Landroid/content/Context;)Lxy/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->rankList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setMHistoryList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showHistoryList(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->showHistoryList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHistory$lambda$10$lambda$9(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final clearTipsDialog()V
    .locals 5

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/transsion/search/R$string;->search_clear_title:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->k(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/transsion/search/R$string;->search_clear_des:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lcom/transsion/search/R$string;->search_clear_cancel:I

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget v2, Lcom/transsion/search/R$string;->search_clear_clear:I

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_sub_btn2_normal:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "clear_tips"

    .line 75
    .line 76
    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "e "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v2, 0x2

    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-static {v1, v0, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22$lambda$21$lambda$20(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final expandHistoryLine(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lhq/n;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lhq/n;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final expandHistoryLine$lambda$12(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    instance-of v2, v0, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 26
    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->n0()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-gtz v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->q0(I)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez p1, :cond_6

    .line 49
    .line 50
    iget v3, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 51
    .line 52
    if-le v0, v3, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    const/4 v0, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_6
    :goto_2
    move v0, v2

    .line 58
    :goto_3
    invoke-virtual {v1}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->o0()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v3, v2

    .line 63
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 64
    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    invoke-virtual {v2, v0, p1, v3}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->Z1(ZZI)V

    .line 68
    .line 69
    .line 70
    :cond_7
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 71
    .line 72
    if-eqz v2, :cond_8

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 75
    .line 76
    .line 77
    :cond_8
    if-eqz v0, :cond_9

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lvp/n;

    .line 84
    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    new-instance v2, Lhq/l;

    .line 92
    .line 93
    invoke-direct {v2, v1, v3, p0, p1}, Lhq/l;-><init>(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    :cond_9
    return-void
.end method

.method private static final expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-gt p0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p2, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, v0, p3, p1}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->Z1(ZZI)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p2, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewModel$lambda$5$lambda$3(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lcom/transsion/search_pugc/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->searchReporter_delegate$lambda$0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lcom/transsion/search_pugc/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lxy/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    .line 2
    .line 3
    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    .line 5
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    invoke-direct {v0, p1, v2, v1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, 0x41800000    # 16.0f

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;->setSelectTextSize(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private final getIndicatorView(Landroid/content/Context;)Lxy/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    .line 18
    .line 19
    .line 20
    const/high16 v2, 0x41f00000    # 30.0f

    .line 21
    .line 22
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    .line 45
    .line 46
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 47
    .line 48
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0, p1, p1, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method private final getSearchReporter()Lcom/transsion/search_pugc/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->searchReporter$delegate:Lkotlin/Lazy;

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

.method public static synthetic h0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->showHistoryList$lambda$13(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->showHistoryList$lambda$16(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initEveryoneSearch()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "hot_search_word"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/search_pugc/fragment/hot/adapter/e;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/transsion/search/R$id;->tv_keyword:I

    .line 26
    .line 27
    filled-new-array {v1}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lhq/h;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lhq/h;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lvp/n;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, v0, Lvp/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "requireContext(...)"

    .line 63
    .line 64
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v4}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->q0(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p2, p1, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/transsion/search_pugc/bean/HotWord;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    check-cast p1, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotWord;->getWord()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lhq/m;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lhq/m;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "hot"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v2, v1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->z0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotWord;->getWord()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v2, v0}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotWord;->getWord()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/transsion/search_pugc/g;->r(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    nop

    .line 68
    :cond_0
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22$lambda$21$lambda$20(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final initHistory()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->t:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lhq/j;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lhq/j;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 27
    .line 28
    sget v1, Lcom/transsion/search/R$id;->search_history_text:I

    .line 29
    .line 30
    filled-new-array {v1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v1, Lhq/k;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lhq/k;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->loadHistoryData()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private static final initHistory$lambda$10(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p2, p1, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    check-cast p1, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 37
    .line 38
    new-instance v0, Lhq/i;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lhq/i;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "history"

    .line 44
    .line 45
    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->z0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/transsion/search_pugc/g;->p(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v1, p2}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method private static final initHistory$lambda$10$lambda$9(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final initHistory$lambda$8(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->clearTipsDialog()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p0, Landroid/app/Activity;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p0, Landroid/app/Activity;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private final initHotWordWithData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/search_pugc/bean/HotWord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->u:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lhq/o;

    .line 14
    .line 15
    invoke-direct {v1}, Lhq/o;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    move-object v0, p1

    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lvp/n;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lvp/n;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v2, v1

    .line 67
    check-cast v2, Lcom/transsion/search_pugc/bean/HotWord;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/transsion/search_pugc/bean/HotWord;->getWord()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lvp/n;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    iget-object p1, p1, Lvp/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    new-instance v1, Lhq/p;

    .line 105
    .line 106
    invoke-direct {v1, p0, v0}, Lhq/p;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lvp/n;

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-object p1, p1, Lvp/n;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_1
    return-void
.end method

.method private static final initHotWordWithData$lambda$17(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final initHotWordWithData$lambda$19(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    instance-of v1, v0, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    check-cast v0, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->o0()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/transsion/search_pugc/bean/HotWord;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/transsion/search_pugc/bean/HotWord;->getWord()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3, v1}, Lcom/transsion/search_pugc/g;->q(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    return-void
.end method

.method private final initRankWithData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/search_pugc/bean/HotRank;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lvp/n;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p1, Lvp/n;->q:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lvp/n;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lvp/n;->q:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lvp/n;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Lvp/n;->o:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->getNavigator()Lvy/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Lvy/a;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lvp/n;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p1, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method private static final initView$lambda$2(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    const-string p2, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->g(Landroid/app/Activity;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lvp/n;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lvp/n;->s:Landroidx/core/widget/NestedScrollView;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {p0}, Lro/o;->a(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final initViewModel()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 13
    .line 14
    .line 15
    const-class v1, Lkq/c;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lkq/c;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lkq/c;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/transsion/search_pugc/g;->F(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lkq/c;->k()Landroidx/lifecycle/b0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Lhq/b;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lhq/b;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lkq/c;->l()Landroidx/lifecycle/b0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lhq/c;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lhq/c;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;

    .line 61
    .line 62
    invoke-direct {v4, v3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchViewModel:Lkq/c;

    .line 69
    .line 70
    new-instance v0, Landroidx/lifecycle/v0;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 80
    .line 81
    .line 82
    const-class v1, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->l()Landroidx/lifecycle/b0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lhq/d;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Lhq/d;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;

    .line 104
    .line 105
    invoke-direct {v3, v2}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final initViewModel$lambda$5$lambda$3(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->h:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lvp/n;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lvp/n;->n:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;->getHotWords()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHotWordWithData(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_4
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Lcom/transsion/search_pugc/g;->i(Lqi/b;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method

.method private static final initViewModel$lambda$5$lambda$4(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCRankSearchData;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCRankSearchData;->getHotRanks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->rankList:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initRankWithData(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final initViewModel$lambda$7$lambda$6(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCSearchResultData;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getItems()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lvp/n;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lvp/n;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lvp/n;

    .line 43
    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    iget-object p0, p0, Lvp/n;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lvp/n;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Lvp/n;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lvp/n;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    iget-object p0, p0, Lvp/n;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method private final initViewPager()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/n;->o:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lxy/a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lvy/a;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lvp/n;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lvp/n;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, v0, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lvp/n;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v3, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$b;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v3, v4, v2, v1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lvp/n;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lvp/n;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, v0, Lvp/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    new-instance v1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$f;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$f;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHistory$lambda$10(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHistory$lambda$8(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final loadHistoryData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/SearchManager;->f:Lcom/transsion/search_pugc/SearchManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search_pugc/SearchManager$a;->a()Lcom/transsion/search_pugc/SearchManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/transsion/search_pugc/SearchManager;->p(ILcom/transsion/search_pugc/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "null cannot be cast to non-null type com.transsion.search_pugc.fragment.SearchSubjectFragment"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->S0()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCRankSearchData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewModel$lambda$5$lambda$4(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCRankSearchData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCSearchResultData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewModel$lambda$7$lambda$6(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCSearchResultData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHotWordWithData$lambda$19(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHotWordWithData$lambda$17(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final searchReporter_delegate$lambda$0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lcom/transsion/search_pugc/g;
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

.method private final showHistoryList()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_a

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "sa_history_lines_double"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, v1

    .line 49
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    iput v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    iput v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v3, Lhq/e;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Lhq/e;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->Y1(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lvp/n;

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    new-instance v4, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "requireContext(...)"

    .line 95
    .line 96
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v5}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 109
    .line 110
    .line 111
    iget-boolean v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expand:Z

    .line 112
    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    iget v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v4, v2}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->q0(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lvp/n;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lvp/n;

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 159
    .line 160
    check-cast v0, Ljava/lang/Iterable;

    .line 161
    .line 162
    new-instance v1, Ljava/util/ArrayList;

    .line 163
    .line 164
    const/16 v2, 0xa

    .line 165
    .line 166
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/lang/String;

    .line 188
    .line 189
    new-instance v4, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    .line 190
    .line 191
    invoke-direct {v4, v3, v2}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 203
    .line 204
    if-eqz v1, :cond_9

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Lvp/n;

    .line 214
    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    iget-object v0, v0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    new-instance v1, Lhq/f;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lhq/f;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 227
    .line 228
    .line 229
    :cond_a
    :goto_3
    return-void
.end method

.method private static final showHistoryList$lambda$13(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expand:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expand:Z

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lvp/n;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-static {p0}, Lro/o;->a(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final showHistoryList$lambda$16(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expand:Z

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addHistoryWord(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/transsion/search_pugc/SearchManager;->f:Lcom/transsion/search_pugc/SearchManager$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/search_pugc/SearchManager$a;->a()Lcom/transsion/search_pugc/SearchManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/search_pugc/SearchManager;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v0, 0x1e

    .line 36
    .line 37
    if-le p1, v0, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lvp/n;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lvp/n;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lvp/n;->c(Landroid/view/LayoutInflater;)Lvp/n;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewModel()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initHistory()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initEveryoneSearch()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewPager()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lvp/n;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p2, Lvp/n;->b:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p2, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->m(Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lvp/n;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p1, Lvp/n;->s:Landroidx/core/widget/NestedScrollView;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p2, Lhq/a;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lhq/a;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$e;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/g;->j(Lqi/b;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchViewModel:Lkq/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/transsion/search_pugc/g;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lkq/c;->h(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchViewModel:Lkq/c;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/transsion/search_pugc/g;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lkq/c;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lvp/n;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Lvp/n;->h:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lvp/n;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, v0, Lvp/n;->n:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "/ugc_search/search_manager"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g;->g(Ljava/lang/String;)Lqi/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final onConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->rankList:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->lazyLoadData()V

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search_pugc/ad/SearchHotAdHelper;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->p()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->loadHistoryData()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "clear_tips"

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/search_pugc/SearchManager;->f:Lcom/transsion/search_pugc/SearchManager$a;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/search_pugc/SearchManager$a;->a()Lcom/transsion/search_pugc/SearchManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/transsion/search_pugc/SearchManager;->j()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lvp/n;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p1, Lvp/n;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lvp/n;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p1, Lvp/n;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p1, 0x0

    .line 79
    :goto_0
    const-string v0, "null cannot be cast to non-null type com.transsion.search_pugc.widget.LinesFlexBoxLayoutManager"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast p1, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/search_pugc/widget/LinesFlexBoxLayoutManager;->p0()V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expand:Z

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getSearchReporter()Lcom/transsion/search_pugc/g;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/transsion/search_pugc/g;->m()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method
