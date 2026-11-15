.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lvp/d;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 R2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001SB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u0019\u0010\u000e\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J5\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010&\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00122\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010(\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00122\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008(\u0010\'J\u000f\u0010)\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0005J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008/\u0010.J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00081\u00102R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00170>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010B\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010D\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010F\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010ER\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010ER\u0016\u0010H\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001b\u0010Q\u001a\u00020L8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\u00a8\u0006T"
    }
    d2 = {
        "Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lvp/d;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "clear",
        "",
        "resetContent",
        "(Z)V",
        "postFinsh",
        "Lcom/transsion/publish/api/GroupBean;",
        "groupBean",
        "postGroup",
        "(Lcom/transsion/publish/api/GroupBean;)V",
        "searchJob",
        "initViewModel",
        "Landroid/view/View;",
        "emptyView",
        "()Landroid/view/View;",
        "clearTipsDialog",
        "showCheckDialog",
        "",
        "group_id",
        "subject_id",
        "opt",
        "",
        "position",
        "reportClick",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lvp/d;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initView",
        "lazyLoadData",
        "onDestroyView",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "isRefreshing",
        "Z",
        "Lcom/transsion/search/fragment/group/adapter/a;",
        "mSearchGroupAdapter",
        "Lcom/transsion/search/fragment/group/adapter/a;",
        "Lcom/transsion/search/fragment/group/adapter/b;",
        "mSearchKeywordAdapter",
        "Lcom/transsion/search/fragment/group/adapter/b;",
        "Lcom/transsion/search/adapter/b;",
        "mSearchWorkAdapter",
        "Lcom/transsion/search/adapter/b;",
        "",
        "mHistoryList",
        "Ljava/util/List;",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mSearchViewModel",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "mType",
        "I",
        "page",
        "perPage",
        "mKeyword",
        "Ljava/lang/String;",
        "selectGroup",
        "Lcom/transsion/publish/api/GroupBean;",
        "Lcom/transsion/search/dialog/CheckTipsDialog;",
        "mCheckTipsDialog$delegate",
        "Lkotlin/Lazy;",
        "getMCheckTipsDialog",
        "()Lcom/transsion/search/dialog/CheckTipsDialog;",
        "mCheckTipsDialog",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;


# instance fields
.field private isRefreshing:Z

.field private final mCheckTipsDialog$delegate:Lkotlin/Lazy;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyword:Ljava/lang/String;

.field private mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

.field private mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

.field private mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

.field private mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

.field private mType:I

.field private page:I

.field private perPage:I

.field private selectGroup:Lcom/transsion/publish/api/GroupBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->Companion:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/search/fragment/group/e;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/transsion/search/fragment/group/e;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$11(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getMSearchGroupAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMSearchKeywordAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMSearchViewModel$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMSearchWorkAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/adapter/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectGroup$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/publish/api/GroupBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$resetContent(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->resetContent(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$searchJob(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMHistoryList$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMKeyword$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$7$lambda$6(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$19(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final clearTipsDialog()V
    .locals 3

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
    sget v1, Lcom/transsion/search/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/transsion/search/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget v1, Lcom/transsion/baseui/R$color;->base_color_black:I

    .line 73
    .line 74
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "clear_tips"

    .line 91
    .line 92
    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    :catch_0
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$2(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog_delegate$lambda$0()Lcom/transsion/search/dialog/CheckTipsDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final emptyView()Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/search/R$layout;->view_search_manager_empty:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/transsion/search/R$id;->tv_empty_tips:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .line 20
    sget v3, Lcom/transsion/search/R$id;->iv_tips:I

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/widget/ImageView;

    .line 27
    .line 28
    sget v4, Lcom/transsion/search/R$id;->tv_retry:I

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget-object v5, Lyg/l;->a:Lyg/l;

    .line 37
    .line 38
    invoke-virtual {v5}, Lyg/l;->e()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lvp/d;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    iget-object v5, v5, Lvp/d;->b:Landroid/widget/EditText;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sget v5, Lcom/transsion/search/R$string;->user_works_empty:I

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v5, " \""

    .line 79
    .line 80
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "\""

    .line 87
    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    sget v1, Lcom/tn/lib/widget/R$mipmap;->ic_no_content:I

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    sget v2, Lcom/transsion/baseui/R$string;->base_net_err:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .line 113
    .line 114
    sget v1, Lcom/tn/lib/widget/R$mipmap;->ic_no_network:I

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/transsion/search/fragment/group/d;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/d;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method

.method private static final emptyView$lambda$29(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$4(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$17(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mCheckTipsDialog$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/search/dialog/CheckTipsDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$7(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$26(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initViewModel()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

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
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->o()Landroidx/lifecycle/b0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/transsion/search/fragment/group/f;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/f;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    .line 37
    .line 38
    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->q()Landroidx/lifecycle/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lcom/transsion/search/fragment/group/g;

    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/g;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    .line 58
    .line 59
    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->m()Landroidx/lifecycle/b0;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Lcom/transsion/search/fragment/group/h;

    .line 74
    .line 75
    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/h;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 87
    .line 88
    return-void
.end method

.method private static final initViewModel$lambda$28$lambda$24(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getItems()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsion/search/bean/PagerEntity;->getHasMore()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_1
    const/4 v4, 0x1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/transsion/search/bean/PagerEntity;->getNextPage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v5, v4

    .line 52
    :goto_2
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchGroupEntity;->getPager()Lcom/transsion/search/bean/PagerEntity;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/transsion/search/bean/PagerEntity;->getPerPage()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v5, 0xa

    .line 68
    .line 69
    :goto_3
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lvp/d;

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    iget-object v5, v5, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    invoke-static {v5}, Luf/c;->g(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 87
    .line 88
    if-eqz v5, :cond_12

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lt6/f;->s()V

    .line 95
    .line 96
    .line 97
    move-object v6, v1

    .line 98
    check-cast v6, Ljava/util/Collection;

    .line 99
    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_7

    .line 107
    .line 108
    :cond_5
    iget-object v7, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 109
    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    new-instance v8, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v8}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v5, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z1(Z)V

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lvp/d;

    .line 135
    .line 136
    if-eqz v4, :cond_8

    .line 137
    .line 138
    iget-object v4, v4, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_8
    instance-of v0, v0, Lcom/transsion/search/fragment/group/adapter/b;

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lvp/d;

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    iget-object v0, v0, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    const/16 v4, 0x8

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lvp/d;

    .line 172
    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    iget-object v0, v0, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    iget-object v4, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    if-eqz v6, :cond_10

    .line 185
    .line 186
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_b
    check-cast v1, Ljava/lang/Iterable;

    .line 194
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_d

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    move-object v6, v4

    .line 215
    check-cast v6, Lcom/transsion/publish/api/GroupBean;

    .line 216
    .line 217
    iget-object v7, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 218
    .line 219
    if-eqz v7, :cond_c

    .line 220
    .line 221
    invoke-virtual {v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    if-eqz v7, :cond_c

    .line 226
    .line 227
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_c

    .line 232
    .line 233
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_f

    .line 242
    .line 243
    iget-boolean v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    .line 244
    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    iput-boolean v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    .line 248
    .line 249
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 250
    .line 251
    if-eqz p0, :cond_10

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_e
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 258
    .line 259
    if-eqz p0, :cond_10

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_f
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p0, v2}, Lt6/f;->t(Z)V

    .line 270
    .line 271
    .line 272
    :cond_10
    :goto_5
    if-nez v3, :cond_11

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-virtual {p0, v2}, Lt6/f;->t(Z)V

    .line 279
    .line 280
    .line 281
    :cond_11
    if-nez p1, :cond_12

    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 288
    .line 289
    .line 290
    :cond_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 291
    .line 292
    return-object p0
.end method

.method private static final initViewModel$lambda$28$lambda$26(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getItems()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsion/search/bean/Pager;->getHasMore()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_1
    const/4 v4, 0x1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/transsion/search/bean/Pager;->getNextPage()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v5, v4

    .line 40
    :goto_2
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/transsion/search/bean/Pager;->getPerPage()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/16 v5, 0xa

    .line 56
    .line 57
    :goto_3
    iput v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lvp/d;

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    iget-object v5, v5, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    invoke-static {v5}, Luf/c;->g(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object v5, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 75
    .line 76
    if-eqz v5, :cond_14

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lt6/f;->s()V

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 86
    .line 87
    if-eqz v6, :cond_5

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_5

    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move-object v6, v0

    .line 105
    :goto_4
    check-cast v1, Ljava/util/Collection;

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    :cond_6
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_9

    .line 122
    .line 123
    iget v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 124
    .line 125
    if-eq v6, v4, :cond_7

    .line 126
    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchWorkEntity;->getPager()Lcom/transsion/search/bean/Pager;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-eqz v6, :cond_9

    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/transsion/search/bean/Pager;->getPage()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-ne v6, v4, :cond_9

    .line 140
    .line 141
    :cond_7
    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 142
    .line 143
    if-eqz v6, :cond_8

    .line 144
    .line 145
    new-instance v7, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v5, v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z1(Z)V

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lvp/d;

    .line 168
    .line 169
    if-eqz v6, :cond_a

    .line 170
    .line 171
    iget-object v6, v6, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    .line 173
    if-eqz v6, :cond_a

    .line 174
    .line 175
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :cond_a
    instance-of v0, v0, Lcom/transsion/search/fragment/group/adapter/b;

    .line 180
    .line 181
    if-eqz v0, :cond_c

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lvp/d;

    .line 188
    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    iget-object v0, v0, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    const/16 v6, 0x8

    .line 196
    .line 197
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lvp/d;

    .line 205
    .line 206
    if-eqz v0, :cond_c

    .line 207
    .line 208
    iget-object v0, v0, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    if-eqz v0, :cond_c

    .line 211
    .line 212
    iget-object v6, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 213
    .line 214
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    .line 216
    .line 217
    :cond_c
    if-eqz v1, :cond_11

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_d

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    .line 227
    .line 228
    if-eqz v0, :cond_e

    .line 229
    .line 230
    iput-boolean v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    .line 231
    .line 232
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 233
    .line 234
    if-eqz v0, :cond_f

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_e
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 241
    .line 242
    if-eqz v0, :cond_f

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 245
    .line 246
    .line 247
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Lqi/b;->k(Z)V

    .line 254
    .line 255
    .line 256
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_12

    .line 261
    .line 262
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_12

    .line 267
    .line 268
    iget p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 269
    .line 270
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    const-string v1, "type"

    .line 275
    .line 276
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_11
    :goto_6
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0, v2}, Lt6/f;->t(Z)V

    .line 285
    .line 286
    .line 287
    :cond_12
    :goto_7
    if-nez v3, :cond_13

    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0, v2}, Lt6/f;->t(Z)V

    .line 294
    .line 295
    .line 296
    :cond_13
    if-nez p1, :cond_14

    .line 297
    .line 298
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 303
    .line 304
    .line 305
    :cond_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 306
    .line 307
    return-object p0
.end method

.method private static final initViewModel$lambda$28$lambda$27(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postGroup(Lcom/transsion/publish/api/GroupBean;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$5$lambda$2$lambda$1(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$27(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$16(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView$lambda$29(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mCheckTipsDialog_delegate$lambda$0()Lcom/transsion/search/dialog/CheckTipsDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search/dialog/CheckTipsDialog;->g:Lcom/transsion/search/dialog/CheckTipsDialog$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search/dialog/CheckTipsDialog$a;->a()Lcom/transsion/search/dialog/CheckTipsDialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$15(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$10$lambda$9(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$7(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 4

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 14
    .line 15
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->C(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 24
    .line 25
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lvp/d;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v1, Lcom/transsion/search/fragment/group/a;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/a;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v2, 0x12c

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$7$lambda$6(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$10$lambda$9(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/transsion/publish/api/GroupBean;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/publish/api/GroupBean;->getGroupId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, ""

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/publish/api/GroupBean;->getOps()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->selectGroup:Lcom/transsion/publish/api/GroupBean;

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postGroup(Lcom/transsion/publish/api/GroupBean;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$11(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->clearTipsDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$14(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sget p2, Lcom/transsion/search/R$id;->tv_keyword:I

    .line 16
    .line 17
    if-ne p1, p2, :cond_7

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lvp/d;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lvp/d;

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iget-object p2, p2, Lvp/d;->b:Landroid/widget/EditText;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lvp/d;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    iget-object p1, p1, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 101
    .line 102
    const/4 p2, 0x1

    .line 103
    if-eq p1, p2, :cond_6

    .line 104
    .line 105
    const/4 p3, 0x2

    .line 106
    if-eq p1, p3, :cond_5

    .line 107
    .line 108
    const/4 p3, 0x3

    .line 109
    if-eq p1, p3, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iput p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iput p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lvp/d;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lvp/d;->j:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$16(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    check-cast p1, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lvp/d;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p1, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    check-cast p1, Ljava/util/Collection;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lvp/d;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p1, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iget-object p2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_5

    .line 121
    .line 122
    const-string p2, "keyword"

    .line 123
    .line 124
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method private static final onViewCreated$lambda$17(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->searchJob()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$18(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->resetContent(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final onViewCreated$lambda$19(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->postFinsh()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$2(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 4

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 14
    .line 15
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->D(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 24
    .line 25
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lvp/d;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v1, Lcom/transsion/search/fragment/group/i;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/i;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v2, 0x12c

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$2$lambda$1(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$4(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p4

    .line 3
    .line 4
    const-string v2, "<unused var>"

    .line 5
    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "view"

    .line 12
    .line 13
    move-object/from16 v3, p3

    .line 14
    .line 15
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v10, v2

    .line 33
    check-cast v10, Lcom/transsion/search/bean/SearchSubject;

    .line 34
    .line 35
    if-eqz v10, :cond_4

    .line 36
    .line 37
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, ""

    .line 46
    .line 47
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget v1, v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    if-ne v1, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ne v1, v2, :cond_1

    .line 73
    .line 74
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v4, v0

    .line 90
    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    .line 91
    .line 92
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const/16 v13, 0x180

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    const-string v5, "searchpage"

    .line 100
    .line 101
    const-string v6, ""

    .line 102
    .line 103
    const-string v8, "download_subject"

    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    invoke-static/range {v3 .. v14}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    :goto_0
    const-string v1, "/movie/detail"

    .line 113
    .line 114
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    :goto_1
    const-string v3, "subject_type"

    .line 136
    .line 137
    invoke-virtual {v1, v3, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string v2, "id"

    .line 142
    .line 143
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v2, "ops"

    .line 152
    .line 153
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/4 v2, 0x2

    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-static {v1, v0, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    new-instance v1, Ljo/b;

    .line 172
    .line 173
    invoke-direct {v1}, Ljo/b;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 181
    .line 182
    .line 183
    const/4 v2, 0x1

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v10}, Ljo/b;->s(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 192
    .line 193
    .line 194
    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 195
    .line 196
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 203
    .line 204
    const-class v3, Ljo/b;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const-string v4, "getName(...)"

    .line 211
    .line 212
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-wide/16 v4, 0x0

    .line 216
    .line 217
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_4

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$18(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final postFinsh()V
    .locals 5

    .line 1
    new-instance v0, Ltp/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ltp/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v2, Ltp/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final postGroup(Lcom/transsion/publish/api/GroupBean;)V
    .locals 4

    .line 1
    new-instance v0, Ljo/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljo/b;->m(Lcom/transsion/publish/api/GroupBean;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 26
    .line 27
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 34
    .line 35
    const-class v1, Ljo/b;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getName(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated$lambda$14(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel$lambda$28$lambda$24(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final reportClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    move-object p1, v1

    .line 11
    :cond_0
    const-string v2, "group_id"

    .line 12
    .line 13
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    move-object p2, v1

    .line 19
    :cond_1
    const-string p1, "subject_id"

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string p1, "sequence"

    .line 25
    .line 26
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    move-object p3, v1

    .line 36
    :cond_2
    const-string p1, "ops"

    .line 37
    .line 38
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 42
    .line 43
    const-string p2, "searchresult"

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final resetContent(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lvp/d;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    iget p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_4

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq p1, v0, :cond_4

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 48
    .line 49
    if-eqz p1, :cond_a

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->H0()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->H0()V

    .line 72
    .line 73
    .line 74
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/transsion/search/SearchManager;->l()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mHistoryList:Ljava/util/List;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lvp/d;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    iget-object v0, v0, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lvp/d;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    iget-object p1, p1, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 138
    .line 139
    if-eqz p1, :cond_a

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lvp/d;

    .line 151
    .line 152
    if-eqz p1, :cond_a

    .line 153
    .line 154
    iget-object p1, p1, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    if-eqz p1, :cond_a

    .line 157
    .line 158
    const/16 v0, 0x8

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lvp/d;

    .line 168
    .line 169
    if-eqz p1, :cond_b

    .line 170
    .line 171
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 172
    .line 173
    if-eqz p1, :cond_b

    .line 174
    .line 175
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :cond_b
    return-void
.end method

.method private final searchJob()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/toast/core/h;->e(I)V

    .line 19
    .line 20
    .line 21
    sget v1, Lcom/transsion/search/R$string;->tips_room:I

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/toast/core/h;->e(I)V

    .line 34
    .line 35
    .line 36
    sget v1, Lcom/transsion/search/R$string;->tips_movie:I

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->isRefreshing:Z

    .line 48
    .line 49
    sget-object v2, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/transsion/search/SearchManager;->g(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lvp/d;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object v2, v2, Lvp/d;->b:Landroid/widget/EditText;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 79
    .line 80
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v3, 0x3

    .line 85
    if-nez v2, :cond_8

    .line 86
    .line 87
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 88
    .line 89
    if-eq v2, v0, :cond_5

    .line 90
    .line 91
    if-eq v2, v1, :cond_3

    .line 92
    .line 93
    if-eq v2, v3, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->emptyView()Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_2
    return-void

    .line 144
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lvp/d;

    .line 149
    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    iget-object v2, v2, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 153
    .line 154
    if-eqz v2, :cond_9

    .line 155
    .line 156
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Lvp/d;

    .line 164
    .line 165
    if-eqz v2, :cond_a

    .line 166
    .line 167
    iget-object v2, v2, Lvp/d;->j:Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 175
    .line 176
    if-eq v2, v0, :cond_c

    .line 177
    .line 178
    if-eq v2, v1, :cond_b

    .line 179
    .line 180
    if-eq v2, v3, :cond_c

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 184
    .line 185
    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 186
    .line 187
    if-eqz v1, :cond_d

    .line 188
    .line 189
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 190
    .line 191
    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/search/viewmodel/SearchViewModel;->C(IILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_c
    iput v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->page:I

    .line 198
    .line 199
    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchViewModel:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 200
    .line 201
    if-eqz v1, :cond_d

    .line 202
    .line 203
    iget v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->perPage:I

    .line 204
    .line 205
    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/search/viewmodel/SearchViewModel;->D(IILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v1, "module_name"

    .line 216
    .line 217
    const-string v2, "search"

    .line 218
    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v1, "key_word"

    .line 223
    .line 224
    iget-object v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mKeyword:Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "type"

    .line 236
    .line 237
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 241
    .line 242
    const-string v2, "searchpage"

    .line 243
    .line 244
    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private final showCheckDialog()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mCheckTipsDialog"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lvp/d;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lvp/d;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lvp/d;->c(Landroid/view/LayoutInflater;)Lvp/d;

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
    new-instance p1, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$b;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->setNetListener(Lyg/m;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
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
    const-string v3, "searchpage"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lvp/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    .line 17
    .line 18
    .line 19
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
    if-eqz p1, :cond_1

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
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lvp/d;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p1, Lvp/d;->g:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/16 v0, 0x8

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "type"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, p2

    .line 24
    :goto_0
    iput p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eq p1, p2, :cond_4

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq p1, v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lvp/d;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget v2, Lcom/transsion/search/R$string;->search_hint_input_group:I

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    new-instance p1, Lcom/transsion/search/fragment/group/adapter/a;

    .line 56
    .line 57
    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/search/fragment/group/adapter/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Lcom/transsion/search/fragment/group/m;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/m;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lt6/f;->D(Lr6/f;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/transsion/search/fragment/group/n;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/group/n;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lvp/d;

    .line 87
    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    if-eqz p1, :cond_8

    .line 93
    .line 94
    new-instance v2, Lnj/a;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchGroupAdapter:Lcom/transsion/search/fragment/group/adapter/a;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move-object v3, v0

    .line 106
    :goto_1
    invoke-direct {v2, v3}, Lnj/a;-><init>(Lt6/f;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    new-instance p1, Lcom/transsion/search/adapter/b;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "requireContext(...)"

    .line 120
    .line 121
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v2, v3}, Lcom/transsion/search/adapter/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-instance v3, Lcom/transsion/search/fragment/group/j;

    .line 137
    .line 138
    invoke-direct {v3, p0}, Lcom/transsion/search/fragment/group/j;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lt6/f;->D(Lr6/f;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lcom/transsion/search/fragment/group/l;

    .line 145
    .line 146
    invoke-direct {v2, p0, p1}, Lcom/transsion/search/fragment/group/l;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/adapter/b;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lvp/d;

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-direct {v2, v3, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lvp/d;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    .line 188
    if-eqz p1, :cond_6

    .line 189
    .line 190
    iget-object v2, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lvp/d;

    .line 200
    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    new-instance v2, Lnj/a;

    .line 208
    .line 209
    iget-object v3, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchWorkAdapter:Lcom/transsion/search/adapter/b;

    .line 210
    .line 211
    if-eqz v3, :cond_7

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    goto :goto_2

    .line 218
    :cond_7
    move-object v3, v0

    .line 219
    :goto_2
    invoke-direct {v2, v3}, Lnj/a;-><init>(Lt6/f;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lvp/d;

    .line 230
    .line 231
    if-eqz p1, :cond_9

    .line 232
    .line 233
    iget-object p1, p1, Lvp/d;->i:Landroid/widget/TextView;

    .line 234
    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    new-instance v2, Lcom/transsion/search/fragment/group/o;

    .line 238
    .line 239
    invoke-direct {v2, p0}, Lcom/transsion/search/fragment/group/o;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    new-instance p1, Lcom/transsion/search/fragment/group/adapter/b;

    .line 246
    .line 247
    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/search/fragment/group/adapter/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    .line 249
    .line 250
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 251
    .line 252
    sget v0, Lcom/transsion/search/R$id;->tv_keyword:I

    .line 253
    .line 254
    filled-new-array {v0}, [I

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 262
    .line 263
    if-eqz p1, :cond_a

    .line 264
    .line 265
    new-instance v0, Lcom/transsion/search/fragment/group/p;

    .line 266
    .line 267
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/p;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 271
    .line 272
    .line 273
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lvp/d;

    .line 278
    .line 279
    if-eqz p1, :cond_b

    .line 280
    .line 281
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    if-eqz p1, :cond_b

    .line 284
    .line 285
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-direct {v0, v2, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 295
    .line 296
    .line 297
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Lvp/d;

    .line 302
    .line 303
    if-eqz p1, :cond_c

    .line 304
    .line 305
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    .line 307
    if-eqz p1, :cond_c

    .line 308
    .line 309
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mSearchKeywordAdapter:Lcom/transsion/search/fragment/group/adapter/b;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 312
    .line 313
    .line 314
    :cond_c
    sget-object p1, Lcom/transsion/search/SearchManager;->f:Lcom/transsion/search/SearchManager$a;

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/transsion/search/SearchManager$a;->a()Lcom/transsion/search/SearchManager;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iget v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->mType:I

    .line 321
    .line 322
    new-instance v1, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;

    .line 323
    .line 324
    invoke-direct {v1, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v0, v1}, Lcom/transsion/search/SearchManager;->m(ILcom/transsion/search/a;)V

    .line 328
    .line 329
    .line 330
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->initViewModel()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    check-cast p1, Lvp/d;

    .line 338
    .line 339
    if-eqz p1, :cond_d

    .line 340
    .line 341
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 342
    .line 343
    if-eqz p1, :cond_d

    .line 344
    .line 345
    new-instance v0, Lcom/transsion/search/fragment/group/q;

    .line 346
    .line 347
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/q;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Lvp/d;

    .line 358
    .line 359
    if-eqz p1, :cond_e

    .line 360
    .line 361
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 362
    .line 363
    if-eqz p1, :cond_e

    .line 364
    .line 365
    new-instance v0, Lcom/transsion/search/fragment/group/r;

    .line 366
    .line 367
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/r;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 371
    .line 372
    .line 373
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, Lvp/d;

    .line 378
    .line 379
    if-eqz p1, :cond_f

    .line 380
    .line 381
    iget-object p1, p1, Lvp/d;->j:Landroid/widget/TextView;

    .line 382
    .line 383
    if-eqz p1, :cond_f

    .line 384
    .line 385
    new-instance v0, Lcom/transsion/search/fragment/group/b;

    .line 386
    .line 387
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/b;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    check-cast p1, Lvp/d;

    .line 398
    .line 399
    if-eqz p1, :cond_10

    .line 400
    .line 401
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 402
    .line 403
    if-eqz p1, :cond_10

    .line 404
    .line 405
    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;

    .line 406
    .line 407
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    .line 412
    .line 413
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    check-cast p1, Lvp/d;

    .line 418
    .line 419
    if-eqz p1, :cond_11

    .line 420
    .line 421
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 422
    .line 423
    if-eqz p1, :cond_11

    .line 424
    .line 425
    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$c;

    .line 426
    .line 427
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$c;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 431
    .line 432
    .line 433
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    check-cast p1, Lvp/d;

    .line 438
    .line 439
    if-eqz p1, :cond_12

    .line 440
    .line 441
    iget-object p1, p1, Lvp/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 442
    .line 443
    if-eqz p1, :cond_12

    .line 444
    .line 445
    new-instance v0, Lcom/transsion/search/fragment/group/c;

    .line 446
    .line 447
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/c;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .line 452
    .line 453
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    check-cast p1, Lvp/d;

    .line 458
    .line 459
    if-eqz p1, :cond_13

    .line 460
    .line 461
    iget-object p1, p1, Lvp/d;->f:Landroid/widget/ProgressBar;

    .line 462
    .line 463
    if-eqz p1, :cond_13

    .line 464
    .line 465
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 466
    .line 467
    .line 468
    :cond_13
    invoke-direct {p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->getMCheckTipsDialog()Lcom/transsion/search/dialog/CheckTipsDialog;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    new-instance v0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;

    .line 473
    .line 474
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v0}, Lcom/transsion/search/dialog/CheckTipsDialog;->s0(Lwp/a;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    check-cast p1, Lvp/d;

    .line 485
    .line 486
    if-eqz p1, :cond_14

    .line 487
    .line 488
    iget-object p1, p1, Lvp/d;->c:Landroid/widget/ImageView;

    .line 489
    .line 490
    if-eqz p1, :cond_14

    .line 491
    .line 492
    new-instance v0, Lcom/transsion/search/fragment/group/k;

    .line 493
    .line 494
    invoke-direct {v0, p0}, Lcom/transsion/search/fragment/group/k;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    .line 499
    .line 500
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    check-cast p1, Lvp/d;

    .line 505
    .line 506
    if-eqz p1, :cond_15

    .line 507
    .line 508
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 509
    .line 510
    if-eqz p1, :cond_15

    .line 511
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 513
    .line 514
    .line 515
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    check-cast p1, Lvp/d;

    .line 520
    .line 521
    if-eqz p1, :cond_16

    .line 522
    .line 523
    iget-object p1, p1, Lvp/d;->b:Landroid/widget/EditText;

    .line 524
    .line 525
    if-eqz p1, :cond_16

    .line 526
    .line 527
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 528
    .line 529
    .line 530
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    if-eqz p1, :cond_17

    .line 535
    .line 536
    invoke-virtual {p1, p2}, Lqi/b;->k(Z)V

    .line 537
    .line 538
    .line 539
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    check-cast p1, Lvp/d;

    .line 544
    .line 545
    if-eqz p1, :cond_18

    .line 546
    .line 547
    iget-object p1, p1, Lvp/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 548
    .line 549
    if-eqz p1, :cond_18

    .line 550
    .line 551
    new-instance p2, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$e;

    .line 552
    .line 553
    invoke-direct {p2, p0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$e;-><init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 557
    .line 558
    .line 559
    :cond_18
    return-void
.end method
