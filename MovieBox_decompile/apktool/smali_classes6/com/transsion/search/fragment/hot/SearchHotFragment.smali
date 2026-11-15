.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment;
.super Lcom/transsion/search/fragment/BaseSearchMainFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/hot/SearchHotFragment$a;,
        Lcom/transsion/search/fragment/hot/SearchHotFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/search/fragment/BaseSearchMainFragment<",
        "Lvp/c;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 V2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002WXB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u0019\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0005J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0005J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\r\u00103\u001a\u00020\u0006\u00a2\u0006\u0004\u00083\u0010\u0005J\u0015\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001b\u00a2\u0006\u0004\u00085\u00106J\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00088\u0010\rJ\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010A\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010C\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u001b0H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010U\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/transsion/search/fragment/hot/SearchHotFragment;",
        "Lcom/transsion/search/fragment/BaseSearchMainFragment;",
        "Lvp/c;",
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
        "Lcom/transsion/search/bean/HotSubjectEntity;",
        "subjectEntity",
        "initHotWordWithData",
        "(Lcom/transsion/search/bean/HotSubjectEntity;)V",
        "initEveryoneSearch",
        "it",
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
        "(Landroid/view/LayoutInflater;)Lvp/c;",
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
        "Lcom/transsion/search/fragment/hot/adapter/d;",
        "mSearchHistoryAdapter",
        "Lcom/transsion/search/fragment/hot/adapter/d;",
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
        "Lcom/transsion/search/fragment/hot/adapter/f;",
        "everyOneSearchAdapter",
        "Lcom/transsion/search/fragment/hot/adapter/f;",
        "mHotSubjectEntity",
        "Lcom/transsion/search/bean/HotSubjectEntity;",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mSearchViewModel",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "Lcom/transsion/search/ad/SearchHotAdHelper;",
        "adHelper",
        "Lcom/transsion/search/ad/SearchHotAdHelper;",
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
.field public static final Companion:Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "search_hot_subject"


# instance fields
.field private adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

.field private everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

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

.field private mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

.field private mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

.field private mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->Companion:Lcom/transsion/search/fragment/hot/SearchHotFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/BaseSearchMainFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel$lambda$6$lambda$5$lambda$4(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getIndicatorText(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lxy/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lxy/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getIndicatorView(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lxy/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getIndicatorView(Landroid/content/Context;)Lxy/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setMHistoryList$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showHistoryList(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel$lambda$6$lambda$5(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$10(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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

.method public static synthetic d0(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList$lambda$13(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHotWordWithData$lambda$19$lambda$18(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lyp/g;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lyp/g;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

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

.method private static final expandHistoryLine$lambda$12(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

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
    instance-of v0, v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lvp/c;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    const-string v0, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->n0()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-gtz v0, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    :goto_2
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    iget v3, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 71
    .line 72
    if-le v0, v3, :cond_6

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    const/4 v0, 0x0

    .line 76
    :goto_3
    invoke-virtual {v1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->o0()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    sub-int/2addr v3, v2

    .line 81
    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 82
    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    invoke-virtual {v2, v0, p1, v3}, Lcom/transsion/search/fragment/hot/adapter/d;->W1(ZZI)V

    .line 86
    .line 87
    .line 88
    :cond_7
    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 89
    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 93
    .line 94
    .line 95
    :cond_8
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lvp/c;

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    new-instance v2, Lyp/k;

    .line 110
    .line 111
    invoke-direct {v2, v1, v3, p0, p1}, Lyp/k;-><init>(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    :cond_9
    return-void
.end method

.method private static final expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
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
    iget-object p0, p2, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, v0, p3, p1}, Lcom/transsion/search/fragment/hot/adapter/d;->W1(ZZI)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p2, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

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

.method public static synthetic f0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$10$lambda$9(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12$lambda$11(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    .line 2
    .line 3
    .line 4
    return-void
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
    new-instance p1, Lcom/transsion/search/fragment/hot/SearchHotFragment$c;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/transsion/search/fragment/hot/SearchHotFragment$c;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;I)V

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

.method public static synthetic h0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine$lambda$12(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/f;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/f;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    new-instance v1, Lyp/i;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lyp/i;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lvp/c;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, v0, Lvp/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

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
    invoke-direct {v1, v4}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

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
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    instance-of p2, p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    .line 14
    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/transsion/search/bean/HotSearchKeyWord;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v0, p2

    .line 40
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    move-object p2, v0

    .line 63
    :goto_3
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    check-cast p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    .line 69
    .line 70
    new-instance v0, Lyp/j;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lyp/j;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "hot"

    .line 76
    .line 77
    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->u0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    :cond_3
    const-string p0, "mb_sug"

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p1, p2, p3, p0}, Lcom/transsion/search/widget/d$a;->h(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    return-void
.end method

.method private static final initEveryoneSearch$lambda$23$lambda$22$lambda$21(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

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
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->q:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lyp/e;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lyp/e;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/d;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/transsion/search/fragment/hot/adapter/d;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    :cond_1
    const-string v1, "mb_sug"

    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/search/fragment/hot/adapter/d;->Y1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget v1, Lcom/transsion/search/R$id;->search_history_text:I

    .line 48
    .line 49
    filled-new-array {v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    new-instance v1, Lyp/f;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lyp/f;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->loadHistoryData()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final initHistory$lambda$10(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    instance-of p2, p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    .line 14
    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/transsion/search/fragment/hot/adapter/a;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/search/fragment/hot/adapter/a;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v0, p2

    .line 40
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    move-object p2, v0

    .line 63
    :goto_3
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    check-cast p1, Lcom/transsion/search/fragment/SearchSubjectFragment;

    .line 69
    .line 70
    new-instance v0, Lyp/h;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lyp/h;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "history"

    .line 76
    .line 77
    invoke-virtual {p1, p2, v1, v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->u0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    :cond_3
    const-string p0, "mb_sug"

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p1, p2, p3, p0}, Lcom/transsion/search/widget/d$a;->f(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    return-void
.end method

.method private static final initHistory$lambda$10$lambda$9(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/search/fragment/hot/adapter/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

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

.method private static final initHistory$lambda$7(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->clearTipsDialog()V

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

.method private final initHotWordWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-lez v1, :cond_4

    .line 28
    .line 29
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/transsion/search/bean/HotSearchKeyWord;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->hotSearchWord:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->everyOneSearchAdapter:Lcom/transsion/search/fragment/hot/adapter/f;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lvp/c;

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    iget-object p1, p1, Lvp/c;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    new-instance v1, Lyp/d;

    .line 99
    .line 100
    invoke-direct {v1, p0, v0}, Lyp/d;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    return-void
.end method

.method private static final initHotWordWithData$lambda$19$lambda$18(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->c:Landroidx/recyclerview/widget/RecyclerView;

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
    instance-of v1, v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    check-cast v0, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->o0()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, v0, :cond_4

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_3

    .line 37
    .line 38
    sget-object v2, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 39
    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/transsion/search/bean/HotSearchKeyWord;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/transsion/search/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    :cond_1
    const-string v4, "mb_sug"

    .line 61
    .line 62
    :cond_2
    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/search/widget/d$a;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    return-void
.end method

.method private final initRankWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lvp/c;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lvp/c;->n:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lvp/c;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lvp/c;->l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->getNavigator()Lvy/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Lvy/a;->notifyDataSetChanged()V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lvp/c;

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-object p1, p1, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lvp/c;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object p1, p1, Lvp/c;->n:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void
.end method

.method private static final initView$lambda$2(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
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
    check-cast p0, Lvp/c;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lvp/c;->p:Landroidx/core/widget/NestedScrollView;

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
    .locals 4

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
    const-class v1, Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v2, "sug_source"

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lyp/c;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lyp/c;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/transsion/search/fragment/hot/SearchHotFragment$h;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lcom/transsion/search/fragment/hot/SearchHotFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 65
    .line 66
    return-void
.end method

.method private static final initViewModel$lambda$6$lambda$5(Lcom/transsion/search/fragment/hot/SearchHotFragment;Lcom/transsion/search/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->e:Landroid/widget/ProgressBar;

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
    check-cast v0, Lvp/c;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lvp/c;->k:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v1, Lyp/a;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lyp/a;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/transsion/search/ad/SearchHotAdHelper;->y(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHotWordWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initRankWithData(Lcom/transsion/search/bean/HotSubjectEntity;)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method private static final initViewModel$lambda$6$lambda$5$lambda$4(Lcom/transsion/search/fragment/hot/SearchHotFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvp/c;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lvp/c;->d:Landroidx/cardview/widget/CardView;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
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
    check-cast v0, Lvp/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/c;->l:Lnet/lucode/hackware/magicindicator/MagicIndicator;

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
    new-instance v2, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

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
    check-cast v0, Lvp/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

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
    check-cast v0, Lvp/c;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

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
    check-cast v0, Lvp/c;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v3, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v3, v4, v2, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    check-cast v0, Lvp/c;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

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
    check-cast v0, Lvp/c;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, v0, Lvp/c;->o:Landroidx/viewpager2/widget/ViewPager2;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$f;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$f;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

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

.method public static synthetic j0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initView$lambda$2(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroidx/core/widget/NestedScrollView;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch$lambda$23$lambda$22$lambda$21(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->showHistoryList$lambda$16(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final loadHistoryData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/transsion/search/SearchManager;->m(ILcom/transsion/search/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/transsion/search/fragment/SearchSubjectFragment;

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
    const-string v1, "null cannot be cast to non-null type com.transsion.search.fragment.SearchSubjectFragment"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lcom/transsion/search/fragment/SearchSubjectFragment;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/search/fragment/SearchSubjectFragment;->K0()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory$lambda$7(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    iput v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v3, Lyp/m;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Lyp/m;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lcom/transsion/search/fragment/hot/adapter/d;->V1(Lkotlin/jvm/functions/Function0;)V

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
    check-cast v0, Lvp/c;

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    new-instance v4, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

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
    invoke-direct {v4, v5}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;-><init>(Landroid/content/Context;)V

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
    iget-boolean v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    .line 112
    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyExpandLine:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    iget v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->historyCollapseLine:I

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v4, v2}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->q0(I)V

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
    check-cast v0, Lvp/c;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget-object v2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

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
    check-cast v0, Lvp/c;

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

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
    new-instance v4, Lcom/transsion/search/fragment/hot/adapter/a;

    .line 190
    .line 191
    invoke-direct {v4, v3, v2}, Lcom/transsion/search/fragment/hot/adapter/a;-><init>(ILjava/lang/String;)V

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
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

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
    check-cast v0, Lvp/c;

    .line 214
    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    new-instance v1, Lyp/b;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lyp/b;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

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

.method private static final showHistoryList$lambda$13(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lvp/c;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

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

.method private static final showHistoryList$lambda$16(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

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
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

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
    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

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
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lvp/c;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lvp/c;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lvp/c;->c(Landroid/view/LayoutInflater;)Lvp/c;

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
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewModel()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initHistory()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initEveryoneSearch()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewPager()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Lcom/transsion/search/ad/SearchHotAdHelper;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lvp/c;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lvp/c;->b:Lcom/transsion/search/ad/SearchHotAdContainerView;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/transsion/search/ad/SearchHotAdHelper;->m(Lcom/transsion/search/ad/SearchHotAdContainerView;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lvp/c;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Lvp/c;->p:Landroidx/core/widget/NestedScrollView;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    new-instance p2, Lyp/l;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lyp/l;-><init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$e;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->k()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lvp/c;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lvp/c;->e:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lvp/c;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, v0, Lvp/c;->k:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "search_hot_subject"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lqi/b;->l(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/transsion/search/fragment/BaseSearchMainFragment;->Companion:Lcom/transsion/search/fragment/BaseSearchMainFragment$a;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsion/search/fragment/BaseSearchMainFragment$a;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "search_id"

    .line 26
    .line 27
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final onConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHotSubjectEntity:Lcom/transsion/search/bean/HotSubjectEntity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->lazyLoadData()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lvp/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/search/ad/SearchHotAdHelper;->p()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->adHelper:Lcom/transsion/search/ad/SearchHotAdHelper;

    .line 30
    .line 31
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/search/fragment/BaseSearchMainFragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->loadHistoryData()V

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
    if-eqz p1, :cond_5

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/transsion/search/SearchManager;->j()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mHistoryList:Ljava/util/List;

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
    check-cast p1, Lvp/c;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p1, Lvp/c;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iget-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchHistoryAdapter:Lcom/transsion/search/fragment/hot/adapter/d;

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
    check-cast p1, Lvp/c;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p1, Lvp/c;->g:Landroidx/recyclerview/widget/RecyclerView;

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
    const-string v0, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast p1, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;->p0()V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expand:Z

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->expandHistoryLine(Z)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    :cond_3
    const-string v0, "mb_sug"

    .line 108
    .line 109
    :cond_4
    invoke-virtual {p1, v0}, Lcom/transsion/search/widget/d$a;->c(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    return-void
.end method
