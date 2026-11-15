.class public final Lcom/transsion/member/MemberFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lqx/b;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/MemberFragment$a;,
        Lcom/transsion/member/MemberFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lgm/i;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lqx/b;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u0000 \u00a3\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001hB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0019\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0007J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0007J\u0017\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\u00082\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000e0 H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010\'\u001a\u00020\u00082\u0006\u0010%\u001a\u00020$2\u0008\u0008\u0002\u0010&\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0007J\u000f\u0010*\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0007J\u000f\u0010+\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0007J#\u00100\u001a\u00020\u00082\u0006\u0010.\u001a\u00020$2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010$H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00082\u0006\u0010/\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00082\u00103J+\u00107\u001a\u00020\u00082\u0006\u0010/\u001a\u00020$2\u0008\u00105\u001a\u0004\u0018\u0001042\u0008\u00106\u001a\u0004\u0018\u00010$H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010;\u001a\u00020\u00082\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u001f\u0010?\u001a\u0002042\u0006\u0010=\u001a\u0002042\u0006\u0010>\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0007J\u000f\u0010H\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008H\u0010\u0007J\u0011\u0010J\u001a\u0004\u0018\u00010IH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008L\u0010,J\u000f\u0010M\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0007J\u0019\u0010P\u001a\u00020\u00082\u0008\u0010O\u001a\u0004\u0018\u00010NH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008R\u0010\u0007J\u000f\u0010S\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0007J\u0017\u0010U\u001a\u00020\u00082\u0006\u0010T\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008U\u0010\u0016J\r\u0010V\u001a\u00020\u0008\u00a2\u0006\u0004\u0008V\u0010\u0007J\r\u0010W\u001a\u00020\u0008\u00a2\u0006\u0004\u0008W\u0010\u0007J\u0017\u0010Y\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008Y\u0010\rJ\u000f\u0010Z\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008Z\u0010\u0007J\u0017\u0010[\u001a\u00020\u00082\u0006\u0010X\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008[\u0010\rJ\u0015\u0010]\u001a\u00020\u00082\u0006\u0010\\\u001a\u000204\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008_\u0010\u0007J\u000f\u0010`\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008`\u0010\u0007J\u0019\u0010c\u001a\u00020\u00082\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008e\u0010\u0007J\u000f\u0010f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008f\u0010\u0007R$\u0010n\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR$\u0010s\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010F\"\u0004\u0008r\u00103R\u0018\u0010v\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u001b\u0010~\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}R\"\u0010\u0083\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0080\u0001\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\"\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0090\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0091\u0001\u0010{\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R \u0010\u0099\u0001\u001a\u00030\u0095\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0096\u0001\u0010{\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009b\u0001R\u0019\u0010\u00a0\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u009b\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u009b\u0001\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/transsion/member/MemberFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lgm/i;",
        "Landroid/view/View$OnClickListener;",
        "Lqx/b;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "h1",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "w1",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "Lcom/transsion/memberapi/SkuItem;",
        "skuItem",
        "g1",
        "(Lcom/transsion/memberapi/SkuItem;)V",
        "I0",
        "",
        "isAutoRenew",
        "f1",
        "(Z)V",
        "Lcom/transsion/memberapi/MemberDetail;",
        "memberDetail",
        "n1",
        "(Lcom/transsion/memberapi/MemberDetail;)V",
        "i1",
        "Lcom/transsion/memberapi/SkuData;",
        "data",
        "p1",
        "(Lcom/transsion/memberapi/SkuData;)V",
        "",
        "redeemList",
        "j1",
        "(Ljava/util/List;)V",
        "",
        "productId",
        "isSubscription",
        "u1",
        "(Ljava/lang/String;Z)V",
        "P0",
        "L0",
        "d1",
        "()Z",
        "H0",
        "optType",
        "skuId",
        "k1",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "m1",
        "(Ljava/lang/String;)V",
        "",
        "code",
        "message",
        "l1",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V",
        "",
        "alpha",
        "v1",
        "(F)V",
        "color",
        "fraction",
        "G0",
        "(IF)I",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "O0",
        "(Landroid/view/LayoutInflater;)Lgm/i;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "loadDefaultData",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "isShowPageStateLayoutTitle",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPause",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "showLoading",
        "K0",
        "user",
        "onLogin",
        "onLogout",
        "onUpdateUserInfo",
        "points",
        "t1",
        "(I)V",
        "initListener",
        "retryLoadData",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "logResume",
        "onDestroy",
        "Lcom/transsion/memberapi/MemberSource;",
        "a",
        "Lcom/transsion/memberapi/MemberSource;",
        "getSource",
        "()Lcom/transsion/memberapi/MemberSource;",
        "s1",
        "(Lcom/transsion/memberapi/MemberSource;)V",
        "source",
        "b",
        "Ljava/lang/String;",
        "getSceneId",
        "o1",
        "sceneId",
        "c",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "mUserInfo",
        "d",
        "Lcom/transsion/memberapi/MemberDetail;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "e",
        "Lkotlin/Lazy;",
        "M0",
        "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "mLoadingDialog",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "f",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "Lcom/transsion/member/adapter/h;",
        "g",
        "Lcom/transsion/member/adapter/h;",
        "taskAdapter",
        "Lcom/transsion/member/adapter/g;",
        "h",
        "Lcom/transsion/member/adapter/g;",
        "skuListAdapter",
        "Lcom/transsion/member/adapter/e;",
        "i",
        "Lcom/transsion/member/adapter/e;",
        "redeemListAdapter",
        "Lqx/a;",
        "j",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Lcom/transsion/member/MemberViewModel;",
        "k",
        "N0",
        "()Lcom/transsion/member/MemberViewModel;",
        "memberViewModel",
        "l",
        "Z",
        "isFirstResume",
        "m",
        "shouldRefreshPurchasedInfo",
        "n",
        "isPremium",
        "o",
        "isSelf",
        "p",
        "Member_psRelease"
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
.field public static final p:Lcom/transsion/member/MemberFragment$a;

.field public static final q:I


# instance fields
.field private a:Lcom/transsion/memberapi/MemberSource;

.field private b:Ljava/lang/String;

.field private c:Lcom/transsnet/loginapi/bean/UserInfo;

.field private d:Lcom/transsion/memberapi/MemberDetail;

.field private final e:Lkotlin/Lazy;

.field private f:Landroidx/activity/result/b;

.field private g:Lcom/transsion/member/adapter/h;

.field private h:Lcom/transsion/member/adapter/g;

.field private i:Lcom/transsion/member/adapter/e;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/member/MemberFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/member/MemberFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/member/MemberFragment;->p:Lcom/transsion/member/MemberFragment$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/member/MemberFragment;->q:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/member/i;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/member/i;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->e:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/member/j;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/member/j;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->j:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    .line 34
    .line 35
    const-class v1, Lcom/transsion/member/MemberViewModel;

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$2;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$3;

    .line 47
    .line 48
    invoke-direct {v3, v0, p0}, Lcom/transsion/member/MemberFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->k:Lkotlin/Lazy;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->l:Z

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic A0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->S0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/MemberDetail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C0(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/member/MemberFragment;->l1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->m1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F0(Lcom/transsion/member/MemberFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/member/MemberFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method private final G0(IF)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    mul-float/2addr p1, p2

    .line 19
    float-to-int p1, p1

    .line 20
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method private final H0()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final I0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "extra_member_scroll_bottom"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lgm/i;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Lgm/i;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/transsion/member/d;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/transsion/member/d;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v3, 0x1f4

    .line 41
    .line 42
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private static final J0(Lcom/transsion/member/MemberFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lgm/i;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lgm/i;->u:Landroidx/core/widget/NestedScrollView;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final L0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgm/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lgm/i;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->e(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/transsion/member/MemberActivity;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/transsion/member/MemberActivity;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->t0()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method private final M0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N0()Lcom/transsion/member/MemberViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/member/MemberViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final P0()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget v2, Lcom/transsion/member/R$string;->member_successfully_renewed:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget v2, Lcom/transsion/member/R$string;->member_successfully_upgraded_to_premium:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/transsion/member/MemberFragment;->a:Lcom/transsion/memberapi/MemberSource;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget-object v3, Lcom/transsion/member/MemberFragment$b;->b:[I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v2, v3, v2

    .line 46
    .line 47
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v2, v2, Lcom/transsion/member/MemberActivity;

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    sget v3, Lcom/transsion/member/R$string;->member_explore_now:I

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v2, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    sget v3, Lcom/transsion/member/R$string;->member_back:I

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_2

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    sget v3, Lcom/transsion/member/R$string;->member_back_to_download:I

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_2

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    sget v3, Lcom/transsion/member/R$string;->member_back:I

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_2

    .line 112
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    sget v3, Lcom/transsion/member/R$string;->member_back_to_watch:I

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/transsion/member/MemberFragment;->a:Lcom/transsion/memberapi/MemberSource;

    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v6, "The source is "

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v4, ", title: "

    .line 142
    .line 143
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v4, ", buttonTitle: "

    .line 150
    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const/4 v5, 0x2

    .line 162
    const/4 v6, 0x0

    .line 163
    invoke-static {v3, v4, v6, v5, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    new-instance v10, Lcom/transsion/member/MemberFragment$handlePurchaseSucceed$1;

    .line 171
    .line 172
    invoke-direct {v10, p0, v0, v2, v1}, Lcom/transsion/member/MemberFragment$handlePurchaseSucceed$1;-><init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 173
    .line 174
    .line 175
    const/4 v11, 0x3

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 180
    .line 181
    .line 182
    const-class v0, Lim/b;

    .line 183
    .line 184
    new-array v2, v6, [Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {v0, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lim/b;

    .line 191
    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    invoke-static {v0, v1, v2, v1}, Lim/b$a;->a(Lim/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_5
    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction;->i()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final Q0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->l()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static final R0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "/member/point_history"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final S0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "/member/point_history"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final T0(Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "/rewards/center"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "source"

    .line 13
    .line 14
    const-string v1, "memberdetail"

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-static {p0, v0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final U0(Landroidx/activity/result/ActivityResult;)V
    .locals 13

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "loginStatus"

    .line 18
    .line 19
    const-string v3, "\u767b\u5f55\u6210\u529f"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    const/4 v11, 0x4

    .line 29
    const/4 v12, 0x0

    .line 30
    const-string v8, "loginStatus"

    .line 31
    .line 32
    const-string v9, "\u767b\u5f55\u5931\u8d25\u6216\u8005\u53d6\u6d88"

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private static final V0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->f:Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/member/MemberFragment$c;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/member/MemberFragment$c;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;->a(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "getChildFragmentManager(...)"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "MemberPromoCodeDialog"

    .line 22
    .line 23
    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final W0(Lgm/i;Lcom/transsion/member/MemberFragment;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lgm/i;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    if-ge p2, p3, :cond_0

    .line 9
    .line 10
    const/high16 p0, 0x42400000    # 48.0f

    .line 11
    .line 12
    invoke-static {p0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lgm/i;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    int-to-float p2, p4

    .line 24
    const/high16 p3, 0x3f800000    # 1.0f

    .line 25
    .line 26
    mul-float/2addr p2, p3

    .line 27
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p0, p0

    .line 32
    div-float/2addr p2, p0

    .line 33
    invoke-direct {p1, p2}, Lcom/transsion/member/MemberFragment;->v1(F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final X0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->p1(Lcom/transsion/memberapi/SkuData;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->K0()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final Y0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/member/bean/RedeemResult;->getVipDurationDays()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget v3, Lcom/transsion/member/R$string;->member_claimed_succeed_1_day:I

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    move-object v5, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move-object v5, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    sget v4, Lcom/transsion/member/R$string;->member_claimed_succeed_days:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-array v5, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p1, v5, v0

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    if-eqz v5, :cond_2

    .line 50
    .line 51
    sget-object v3, Lfh/b;->a:Lfh/b$a;

    .line 52
    .line 53
    sget v4, Lcom/transsion/member/R$layout;->claim_succeed_layout:I

    .line 54
    .line 55
    const/high16 p1, 0x42840000    # 66.0f

    .line 56
    .line 57
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const/16 v9, 0x8

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const/16 v6, 0x50

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-static/range {v3 .. v10}, Lfh/b$a;->h(Lfh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 71
    .line 72
    .line 73
    new-array p1, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    const-class v0, Lim/b;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lim/b;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-static {p1, v2, v1, v2}, Lim/b$a;->a(Lim/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 90
    .line 91
    sget v0, Lcom/tn/lib/widget/R$string;->failed_toast:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->K0()V

    .line 97
    .line 98
    .line 99
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0
.end method

.method private static final Z0(Lcom/transsion/member/MemberFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/member/adapter/h;->n1(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->I0()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final a1(Lcom/transsion/member/MemberFragment;Lim/e;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v4, v1

    .line 33
    check-cast v4, Lcom/transsion/memberapi/MemberTaskItem;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v3, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v1, v2

    .line 50
    :goto_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    .line 51
    .line 52
    if-eqz v1, :cond_9

    .line 53
    .line 54
    invoke-virtual {p1}, Lim/e;->a()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1}, Lim/e;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lim/e;->b()Lcom/transsion/memberapi/MemberTaskRewardInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_8

    .line 67
    .line 68
    const-string v5, "0"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_5

    .line 75
    .line 76
    if-ltz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    check-cast v0, Ljava/lang/Iterable;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    move-object v6, v5

    .line 101
    check-cast v6, Lcom/transsion/memberapi/MemberTaskItemInvite;

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    move-object v2, v5

    .line 114
    :cond_4
    check-cast v2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    .line 115
    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    check-cast v0, Ljava/lang/Iterable;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/4 v5, 0x1

    .line 151
    if-ne v4, v5, :cond_6

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->setStatus(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    :goto_3
    invoke-virtual {v1, p1}, Lcom/transsion/memberapi/MemberTaskItem;->setRewardInfo(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 161
    .line 162
    if-eqz p0, :cond_9

    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 165
    .line 166
    .line 167
    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p0
.end method

.method private static final b1(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Lcom/transsion/memberapi/MemberTaskItem;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    if-ne v2, v3, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v1, 0x0

    .line 50
    :goto_1
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->setHasCheckIn(Z)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object p0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 91
    .line 92
    if-eqz p0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0
.end method

.method private static final c1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->n1(Lcom/transsion/memberapi/MemberDetail;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->w1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_3

    .line 26
    .line 27
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 28
    .line 29
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 36
    .line 37
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 44
    .line 45
    sget v0, Lcom/tn/lib/widget/R$string;->failed_toast:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->K0()V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method private final d1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method private static final e1()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final f1(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lgm/i;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p1, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 27
    .line 28
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lgm/i;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, v1, Lgm/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :cond_0
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 47
    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    .line 49
    .line 50
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    .line 56
    .line 57
    const/high16 v0, 0x41940000    # 18.5f

    .line 58
    .line 59
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lgm/i;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-object p1, p1, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 89
    .line 90
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lgm/i;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    iget-object v1, v1, Lgm/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :cond_2
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 116
    .line 117
    .line 118
    const/high16 v0, 0x42300000    # 44.0f

    .line 119
    .line 120
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    return-void
.end method

.method private final g1(Lcom/transsion/memberapi/SkuItem;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/member/MemberViewModel;->J(Lcom/transsion/memberapi/SkuItem;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->q()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->s()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->I0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final i1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->P0()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->m:Z

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->c1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j1(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgm/i;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lgm/i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lgm/i;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lgm/i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lgm/i;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object v0, v0, Lgm/i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/memberapi/PointInfo;->getPoint()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_1
    move-object v2, p1

    .line 64
    check-cast v2, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/transsion/memberapi/SkuItem;

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/transsion/memberapi/SkuItem;->setUserPoints(Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "null cannot be cast to non-null type com.transsion.member.adapter.RedeemInfoAdapter"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v0, Lcom/transsion/member/adapter/e;

    .line 106
    .line 107
    check-cast p1, Ljava/util/Collection;

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic k0(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->T0(Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "opt_type"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p1, "skuId"

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Lqi/b;->f()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    :cond_1
    const-string p2, ""

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1, p2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->b1(Lcom/transsion/member/MemberFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final l1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "opt_type"

    .line 7
    .line 8
    const-string v2, "pay_result"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sku_id"

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "fail_code"

    .line 23
    .line 24
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, ""

    .line 28
    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    move-object p3, p1

    .line 32
    :cond_0
    const-string p2, "fail_message"

    .line 33
    .line 34
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p2, "result_type"

    .line 38
    .line 39
    const-string p3, "result_fail"

    .line 40
    .line 41
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p3}, Lqi/b;->f()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object p1, p3

    .line 60
    :cond_2
    :goto_0
    const-string p3, "purchase"

    .line 61
    .line 62
    invoke-virtual {p2, p1, p3, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->r1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "opt_type"

    .line 7
    .line 8
    const-string v2, "pay_result"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sku_id"

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "result_type"

    .line 19
    .line 20
    const-string v1, "result_success"

    .line 21
    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lqi/b;->f()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v1, ""

    .line 40
    .line 41
    :cond_1
    const-string v2, "purchase"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final mLoginApi_delegate$lambda$1()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->X0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n1(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "member detail is "

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v1, v2, v3, v4, v5}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/memberapi/PointInfo;->getPoint()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v3

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v2, Lcom/transsion/memberapi/MembershipDetailType;->Companion:Lcom/transsion/memberapi/MembershipDetailType$a;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v2, v6}, Lcom/transsion/memberapi/MembershipDetailType$a;->a(Lcom/transsion/memberapi/MemberInfo;)Lcom/transsion/memberapi/MembershipDetailType;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v2, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    .line 55
    .line 56
    :goto_1
    sget-object v6, Lcom/transsion/member/MemberFragment$b;->a:[I

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    aget v2, v6, v2

    .line 63
    .line 64
    if-eq v2, v0, :cond_2e

    .line 65
    .line 66
    if-eq v2, v4, :cond_19

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    if-eq v2, v4, :cond_b

    .line 70
    .line 71
    const/4 p1, 0x4

    .line 72
    if-eq v2, p1, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lgm/i;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p1, Lgm/i;->l:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lgm/i;

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p1, Lgm/i;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lgm/i;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p1, Lgm/i;->e:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lgm/i;

    .line 124
    .line 125
    if-eqz p1, :cond_3c

    .line 126
    .line 127
    iget-object p1, p1, Lgm/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    if-eqz p1, :cond_3c

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    sget v2, Lcom/transsion/member/R$string;->member_your_premium_benefits:I

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    :cond_5
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_16

    .line 147
    .line 148
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lgm/i;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    iget-object p1, p1, Lgm/i;->l:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lgm/i;

    .line 168
    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    iget-object p1, p1, Lgm/i;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 172
    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lgm/i;

    .line 183
    .line 184
    if-eqz p1, :cond_9

    .line 185
    .line 186
    iget-object p1, p1, Lgm/i;->e:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 187
    .line 188
    if-eqz p1, :cond_9

    .line 189
    .line 190
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lgm/i;

    .line 198
    .line 199
    if-eqz p1, :cond_3c

    .line 200
    .line 201
    iget-object p1, p1, Lgm/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    if-eqz p1, :cond_3c

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    sget v2, Lcom/transsion/member/R$string;->member_your_premium_benefits:I

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    :cond_a
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_16

    .line 221
    .line 222
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Lgm/i;

    .line 227
    .line 228
    if-eqz v2, :cond_c

    .line 229
    .line 230
    iget-object v2, v2, Lgm/i;->l:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 231
    .line 232
    if-eqz v2, :cond_c

    .line 233
    .line 234
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 235
    .line 236
    .line 237
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Lgm/i;

    .line 242
    .line 243
    if-eqz v2, :cond_d

    .line 244
    .line 245
    iget-object v2, v2, Lgm/i;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 246
    .line 247
    if-eqz v2, :cond_d

    .line 248
    .line 249
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lgm/i;

    .line 257
    .line 258
    if-eqz v2, :cond_e

    .line 259
    .line 260
    iget-object v2, v2, Lgm/i;->e:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 261
    .line 262
    if-eqz v2, :cond_e

    .line 263
    .line 264
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lgm/i;

    .line 272
    .line 273
    if-eqz v2, :cond_10

    .line 274
    .line 275
    iget-object v2, v2, Lgm/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    if-eqz v2, :cond_10

    .line 278
    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    if-eqz v4, :cond_f

    .line 284
    .line 285
    sget v6, Lcom/transsion/member/R$string;->member_premium_title:I

    .line 286
    .line 287
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    goto :goto_2

    .line 292
    :cond_f
    move-object v4, v5

    .line 293
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lgm/i;

    .line 301
    .line 302
    if-eqz v2, :cond_11

    .line 303
    .line 304
    iget-object v2, v2, Lgm/i;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 305
    .line 306
    if-eqz v2, :cond_11

    .line 307
    .line 308
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 309
    .line 310
    .line 311
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Lgm/i;

    .line 316
    .line 317
    if-eqz v2, :cond_13

    .line 318
    .line 319
    iget-object v2, v2, Lgm/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 320
    .line 321
    if-eqz v2, :cond_13

    .line 322
    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    if-eqz v4, :cond_12

    .line 328
    .line 329
    sget v6, Lcom/transsion/member/R$string;->member_extend_your_premium_benefits:I

    .line 330
    .line 331
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    goto :goto_3

    .line 336
    :cond_12
    move-object v4, v5

    .line 337
    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Lgm/i;

    .line 345
    .line 346
    if-eqz v2, :cond_18

    .line 347
    .line 348
    iget-object v2, v2, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    if-eqz v2, :cond_18

    .line 351
    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    if-eqz v4, :cond_17

    .line 357
    .line 358
    if-eqz p1, :cond_14

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-eqz v5, :cond_14

    .line 365
    .line 366
    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    if-eqz v5, :cond_14

    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    goto :goto_4

    .line 377
    :cond_14
    move v5, v3

    .line 378
    :goto_4
    if-le v5, v0, :cond_15

    .line 379
    .line 380
    sget v5, Lcom/transsion/member/R$string;->member_days_left:I

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_15
    sget v5, Lcom/transsion/member/R$string;->member_day_left:I

    .line 384
    .line 385
    :goto_5
    if-eqz p1, :cond_16

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    if-eqz p1, :cond_16

    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    if-eqz p1, :cond_16

    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    goto :goto_6

    .line 404
    :cond_16
    move p1, v3

    .line 405
    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    new-array v0, v0, [Ljava/lang/Object;

    .line 410
    .line 411
    aput-object p1, v0, v3

    .line 412
    .line 413
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    :cond_17
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    :cond_18
    invoke-direct {p0, v3}, Lcom/transsion/member/MemberFragment;->f1(Z)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_16

    .line 424
    .line 425
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Lgm/i;

    .line 430
    .line 431
    if-eqz v2, :cond_1a

    .line 432
    .line 433
    iget-object v2, v2, Lgm/i;->l:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 434
    .line 435
    if-eqz v2, :cond_1a

    .line 436
    .line 437
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 438
    .line 439
    .line 440
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Lgm/i;

    .line 445
    .line 446
    if-eqz v2, :cond_1b

    .line 447
    .line 448
    iget-object v2, v2, Lgm/i;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 449
    .line 450
    if-eqz v2, :cond_1b

    .line 451
    .line 452
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lgm/i;

    .line 460
    .line 461
    if-eqz v2, :cond_1c

    .line 462
    .line 463
    iget-object v2, v2, Lgm/i;->e:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 464
    .line 465
    if-eqz v2, :cond_1c

    .line 466
    .line 467
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 468
    .line 469
    .line 470
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Lgm/i;

    .line 475
    .line 476
    if-eqz v2, :cond_1e

    .line 477
    .line 478
    iget-object v2, v2, Lgm/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 479
    .line 480
    if-eqz v2, :cond_1e

    .line 481
    .line 482
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    if-eqz v4, :cond_1d

    .line 487
    .line 488
    sget v6, Lcom/transsion/member/R$string;->member_premium_title:I

    .line 489
    .line 490
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    goto :goto_7

    .line 495
    :cond_1d
    move-object v4, v5

    .line 496
    :goto_7
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    :cond_1e
    if-eqz p1, :cond_20

    .line 500
    .line 501
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-eqz v2, :cond_20

    .line 506
    .line 507
    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberInfo;->getNextRenewDate()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    if-eqz v2, :cond_20

    .line 512
    .line 513
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-lez v2, :cond_1f

    .line 518
    .line 519
    move v2, v0

    .line 520
    goto :goto_8

    .line 521
    :cond_1f
    move v2, v3

    .line 522
    :goto_8
    if-ne v2, v0, :cond_20

    .line 523
    .line 524
    move v2, v0

    .line 525
    goto :goto_9

    .line 526
    :cond_20
    move v2, v3

    .line 527
    :goto_9
    if-eqz v2, :cond_24

    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    check-cast v2, Lgm/i;

    .line 534
    .line 535
    if-eqz v2, :cond_21

    .line 536
    .line 537
    iget-object v2, v2, Lgm/i;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 538
    .line 539
    if-eqz v2, :cond_21

    .line 540
    .line 541
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 542
    .line 543
    .line 544
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Lgm/i;

    .line 549
    .line 550
    if-eqz v2, :cond_25

    .line 551
    .line 552
    iget-object v2, v2, Lgm/i;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 553
    .line 554
    if-eqz v2, :cond_25

    .line 555
    .line 556
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    if-eqz v4, :cond_23

    .line 561
    .line 562
    sget v6, Lcom/transsion/member/R$string;->member_next_billing_date:I

    .line 563
    .line 564
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    if-eqz v7, :cond_22

    .line 569
    .line 570
    invoke-virtual {v7}, Lcom/transsion/memberapi/MemberInfo;->getNextRenewDate()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    goto :goto_a

    .line 575
    :cond_22
    move-object v7, v5

    .line 576
    :goto_a
    new-array v8, v0, [Ljava/lang/Object;

    .line 577
    .line 578
    aput-object v7, v8, v3

    .line 579
    .line 580
    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    goto :goto_b

    .line 585
    :cond_23
    move-object v4, v5

    .line 586
    :goto_b
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    .line 588
    .line 589
    goto :goto_c

    .line 590
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    check-cast v2, Lgm/i;

    .line 595
    .line 596
    if-eqz v2, :cond_25

    .line 597
    .line 598
    iget-object v2, v2, Lgm/i;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 599
    .line 600
    if-eqz v2, :cond_25

    .line 601
    .line 602
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 603
    .line 604
    .line 605
    :cond_25
    :goto_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    check-cast v2, Lgm/i;

    .line 610
    .line 611
    if-eqz v2, :cond_27

    .line 612
    .line 613
    iget-object v2, v2, Lgm/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 614
    .line 615
    if-eqz v2, :cond_27

    .line 616
    .line 617
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    if-eqz v4, :cond_26

    .line 622
    .line 623
    sget v6, Lcom/transsion/member/R$string;->member_extend_your_premium_benefits:I

    .line 624
    .line 625
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    goto :goto_d

    .line 630
    :cond_26
    move-object v4, v5

    .line 631
    :goto_d
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .line 633
    .line 634
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    check-cast v2, Lgm/i;

    .line 639
    .line 640
    if-eqz v2, :cond_2c

    .line 641
    .line 642
    iget-object v2, v2, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 643
    .line 644
    if-eqz v2, :cond_2c

    .line 645
    .line 646
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    if-eqz v4, :cond_2b

    .line 651
    .line 652
    if-eqz p1, :cond_28

    .line 653
    .line 654
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    if-eqz v5, :cond_28

    .line 659
    .line 660
    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    if-eqz v5, :cond_28

    .line 665
    .line 666
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    goto :goto_e

    .line 671
    :cond_28
    move v5, v3

    .line 672
    :goto_e
    if-le v5, v0, :cond_29

    .line 673
    .line 674
    sget v5, Lcom/transsion/member/R$string;->member_days_left:I

    .line 675
    .line 676
    goto :goto_f

    .line 677
    :cond_29
    sget v5, Lcom/transsion/member/R$string;->member_day_left:I

    .line 678
    .line 679
    :goto_f
    if-eqz p1, :cond_2a

    .line 680
    .line 681
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    if-eqz p1, :cond_2a

    .line 686
    .line 687
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    if-eqz p1, :cond_2a

    .line 692
    .line 693
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    goto :goto_10

    .line 698
    :cond_2a
    move p1, v3

    .line 699
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    new-array v6, v0, [Ljava/lang/Object;

    .line 704
    .line 705
    aput-object p1, v6, v3

    .line 706
    .line 707
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v5

    .line 711
    :cond_2b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    :cond_2c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    check-cast p1, Lgm/i;

    .line 719
    .line 720
    if-eqz p1, :cond_2d

    .line 721
    .line 722
    iget-object p1, p1, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 723
    .line 724
    if-eqz p1, :cond_2d

    .line 725
    .line 726
    sget v2, Lcom/transsion/baseui/R$mipmap;->ic_premium:I

    .line 727
    .line 728
    invoke-virtual {p1, v2, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 729
    .line 730
    .line 731
    :cond_2d
    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->f1(Z)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_16

    .line 735
    .line 736
    :cond_2e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Lgm/i;

    .line 741
    .line 742
    if-eqz v2, :cond_2f

    .line 743
    .line 744
    iget-object v2, v2, Lgm/i;->l:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 745
    .line 746
    if-eqz v2, :cond_2f

    .line 747
    .line 748
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 749
    .line 750
    .line 751
    :cond_2f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    check-cast v2, Lgm/i;

    .line 756
    .line 757
    if-eqz v2, :cond_30

    .line 758
    .line 759
    iget-object v2, v2, Lgm/i;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 760
    .line 761
    if-eqz v2, :cond_30

    .line 762
    .line 763
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 764
    .line 765
    .line 766
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    check-cast v2, Lgm/i;

    .line 771
    .line 772
    if-eqz v2, :cond_31

    .line 773
    .line 774
    iget-object v2, v2, Lgm/i;->e:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 775
    .line 776
    if-eqz v2, :cond_31

    .line 777
    .line 778
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 779
    .line 780
    .line 781
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    check-cast v2, Lgm/i;

    .line 786
    .line 787
    if-eqz v2, :cond_33

    .line 788
    .line 789
    iget-object v2, v2, Lgm/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 790
    .line 791
    if-eqz v2, :cond_33

    .line 792
    .line 793
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    if-eqz v4, :cond_32

    .line 798
    .line 799
    sget v6, Lcom/transsion/member/R$string;->member_free_trial:I

    .line 800
    .line 801
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    goto :goto_11

    .line 806
    :cond_32
    move-object v4, v5

    .line 807
    :goto_11
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    .line 809
    .line 810
    :cond_33
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    check-cast v2, Lgm/i;

    .line 815
    .line 816
    if-eqz v2, :cond_34

    .line 817
    .line 818
    iget-object v2, v2, Lgm/i;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 819
    .line 820
    if-eqz v2, :cond_34

    .line 821
    .line 822
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 823
    .line 824
    .line 825
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    check-cast v2, Lgm/i;

    .line 830
    .line 831
    if-eqz v2, :cond_36

    .line 832
    .line 833
    iget-object v2, v2, Lgm/i;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 834
    .line 835
    if-eqz v2, :cond_36

    .line 836
    .line 837
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    if-eqz v4, :cond_35

    .line 842
    .line 843
    sget v6, Lcom/transsion/member/R$string;->member_extend_your_premium_benefits:I

    .line 844
    .line 845
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v4

    .line 849
    goto :goto_12

    .line 850
    :cond_35
    move-object v4, v5

    .line 851
    :goto_12
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    .line 853
    .line 854
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    check-cast v2, Lgm/i;

    .line 859
    .line 860
    if-eqz v2, :cond_3b

    .line 861
    .line 862
    iget-object v2, v2, Lgm/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 863
    .line 864
    if-eqz v2, :cond_3b

    .line 865
    .line 866
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 867
    .line 868
    .line 869
    move-result-object v4

    .line 870
    if-eqz v4, :cond_3a

    .line 871
    .line 872
    if-eqz p1, :cond_37

    .line 873
    .line 874
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    if-eqz v5, :cond_37

    .line 879
    .line 880
    invoke-virtual {v5}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object v5

    .line 884
    if-eqz v5, :cond_37

    .line 885
    .line 886
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 887
    .line 888
    .line 889
    move-result v5

    .line 890
    goto :goto_13

    .line 891
    :cond_37
    move v5, v3

    .line 892
    :goto_13
    if-le v5, v0, :cond_38

    .line 893
    .line 894
    sget v5, Lcom/transsion/member/R$string;->member_days_left:I

    .line 895
    .line 896
    goto :goto_14

    .line 897
    :cond_38
    sget v5, Lcom/transsion/member/R$string;->member_day_left:I

    .line 898
    .line 899
    :goto_14
    if-eqz p1, :cond_39

    .line 900
    .line 901
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    if-eqz p1, :cond_39

    .line 906
    .line 907
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object p1

    .line 911
    if-eqz p1, :cond_39

    .line 912
    .line 913
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 914
    .line 915
    .line 916
    move-result p1

    .line 917
    goto :goto_15

    .line 918
    :cond_39
    move p1, v3

    .line 919
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 920
    .line 921
    .line 922
    move-result-object p1

    .line 923
    new-array v0, v0, [Ljava/lang/Object;

    .line 924
    .line 925
    aput-object p1, v0, v3

    .line 926
    .line 927
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v5

    .line 931
    :cond_3a
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    .line 933
    .line 934
    :cond_3b
    invoke-direct {p0, v3}, Lcom/transsion/member/MemberFragment;->f1(Z)V

    .line 935
    .line 936
    .line 937
    :cond_3c
    :goto_16
    invoke-virtual {p0, v1}, Lcom/transsion/member/MemberFragment;->t1(I)V

    .line 938
    .line 939
    .line 940
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->i1()V

    .line 941
    .line 942
    .line 943
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/member/MemberFragment;Lim/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->a1(Lcom/transsion/member/MemberFragment;Lim/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->V0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p1(Lcom/transsion/memberapi/SkuData;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuPointList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    check-cast p1, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object p1, v1

    .line 37
    :goto_1
    if-nez p1, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 v4, 0xa

    .line 48
    .line 49
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lcom/transsion/memberapi/SkuItem;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Lcom/transsion/memberapi/SkuItem;->setMemberDetail(Lcom/transsion/memberapi/MemberDetail;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsion/memberapi/PointInfo;->getPoint()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    const/4 v0, 0x0

    .line 97
    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    .line 98
    .line 99
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/transsion/memberapi/SkuItem;

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v4, v6}, Lcom/transsion/memberapi/SkuItem;->setUserPoints(Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->h:Lcom/transsion/member/adapter/g;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_5

    .line 144
    :cond_7
    move-object p1, v1

    .line 145
    :goto_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_9

    .line 154
    .line 155
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->i:Lcom/transsion/member/adapter/e;

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :cond_8
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_9

    .line 172
    .line 173
    return-void

    .line 174
    :cond_9
    new-instance p1, Lcom/transsion/member/adapter/g;

    .line 175
    .line 176
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {p1, v0}, Lcom/transsion/member/adapter/g;-><init>(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    sget v0, Lcom/transsion/member/R$id;->item_root:I

    .line 184
    .line 185
    filled-new-array {v0}, [I

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lcom/transsion/member/k;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/transsion/member/k;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/transsion/member/adapter/g;->F1(Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->h:Lcom/transsion/member/adapter/g;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Lgm/i;

    .line 207
    .line 208
    const/high16 v0, 0x41000000    # 8.0f

    .line 209
    .line 210
    if-eqz p1, :cond_b

    .line 211
    .line 212
    iget-object p1, p1, Lgm/i;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    .line 214
    if-eqz p1, :cond_b

    .line 215
    .line 216
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-direct {v1, v3, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-gtz v1, :cond_a

    .line 233
    .line 234
    new-instance v1, Lcom/transsion/member/adapter/a;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-direct {v1, v2, v3}, Lcom/transsion/member/adapter/a;-><init>(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 244
    .line 245
    .line 246
    :cond_a
    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->h:Lcom/transsion/member/adapter/g;

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 249
    .line 250
    .line 251
    :cond_b
    new-instance p1, Lcom/transsion/member/adapter/e;

    .line 252
    .line 253
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {p1, v1}, Lcom/transsion/member/adapter/e;-><init>(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    sget v1, Lcom/transsion/member/R$id;->item_root:I

    .line 261
    .line 262
    filled-new-array {v1}, [I

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 267
    .line 268
    .line 269
    new-instance v1, Lcom/transsion/member/l;

    .line 270
    .line 271
    invoke-direct {v1, p0}, Lcom/transsion/member/l;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v1}, Lcom/transsion/member/adapter/e;->F1(Lkotlin/jvm/functions/Function2;)V

    .line 275
    .line 276
    .line 277
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->i:Lcom/transsion/member/adapter/e;

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lgm/i;

    .line 284
    .line 285
    if-eqz p1, :cond_d

    .line 286
    .line 287
    iget-object p1, p1, Lgm/i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 288
    .line 289
    if-eqz p1, :cond_d

    .line 290
    .line 291
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-direct {v1, v3, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-gtz v1, :cond_c

    .line 308
    .line 309
    new-instance v1, Lcom/transsion/member/adapter/a;

    .line 310
    .line 311
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-direct {v1, v2, v0}, Lcom/transsion/member/adapter/a;-><init>(II)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 319
    .line 320
    .line 321
    :cond_c
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->i:Lcom/transsion/member/adapter/e;

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    return-void
.end method

.method public static synthetic q0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->U0(Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "item"

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
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCoin()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "The productId and coins: "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", "

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x2

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static {p2, v0, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCategory()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    sget-object v0, Lcom/transsion/memberapi/SkuCategory;->AUTO_RENEW:Lcom/transsion/memberapi/SkuCategory;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuCategory;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getDuration()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, "_subscription"

    .line 98
    .line 99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getDuration()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p2, "_purchased"

    .line 120
    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {p0, p2, v1}, Lcom/transsion/member/MemberFragment;->k1(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_2

    .line 140
    .line 141
    invoke-interface {p2}, Lqx/a;->a()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    const/4 v1, 0x1

    .line 146
    if-ne p2, v1, :cond_2

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCategory()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuCategory;->getValue()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-direct {p0, p2, p1}, Lcom/transsion/member/MemberFragment;->u1(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_3

    .line 175
    .line 176
    invoke-interface {p1, p0}, Lqx/a;->e(Lqx/b;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    const-string p2, "requireContext(...)"

    .line 190
    .line 191
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, p0}, Lqx/a;->k(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberFragment;->q1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final r1(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "item"

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
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getCoin()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "The productId and coins: "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", "

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x2

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static {p2, v0, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getDuration()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, "_reward"

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p0, p2, v0}, Lcom/transsion/member/MemberFragment;->k1(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->g1(Lcom/transsion/memberapi/SkuItem;)V

    .line 98
    .line 99
    .line 100
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/member/MemberFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->Z0(Lcom/transsion/member/MemberFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lgm/i;Lcom/transsion/member/MemberFragment;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/member/MemberFragment;->W0(Lgm/i;Lcom/transsion/member/MemberFragment;Landroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->J0(Lcom/transsion/member/MemberFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u1(Ljava/lang/String;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    const/4 v2, 0x2

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v0, v1

    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v3, v1

    .line 45
    :goto_2
    iput-boolean v3, p0, Lcom/transsion/member/MemberFragment;->n:Z

    .line 46
    .line 47
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v5, "before pay isPremium: "

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-static {v0, v3, v1, v2, v4}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 71
    .line 72
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    move-object v4, v1

    .line 84
    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    .line 85
    .line 86
    :cond_3
    move-object v6, v4

    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    sget-object v1, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v11, Lcom/transsion/member/MemberFragment$startPay$1$1;

    .line 96
    .line 97
    invoke-direct {v11, p0, p1, v0}, Lcom/transsion/member/MemberFragment$startPay$1$1;-><init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 98
    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    move-object v7, p1

    .line 103
    move v9, p2

    .line 104
    invoke-virtual/range {v5 .. v11}, Lcom/transsion/payment/lib/f;->e(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->Y0(Lcom/transsion/member/MemberFragment;Lcom/transsion/member/bean/RedeemResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v1(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lgm/i;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lgm/i;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/tn/lib/widget/R$color;->gray_dark_00:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->g(FF)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, v1, p1}, Lcom/transsion/member/MemberFragment;->G0(IF)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static synthetic w0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/member/MemberFragment;->mLoginApi_delegate$lambda$1()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final w1(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lgm/i;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 13
    .line 14
    iget-object v2, v0, Lgm/i;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "getContext(...)"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v0, Lgm/i;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 44
    .line 45
    const-string v3, "ivAvatarPremium"

    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/core/text/a;->c()Landroidx/core/text/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v2, Landroidx/core/text/t;->a:Landroidx/core/text/s;

    .line 62
    .line 63
    invoke-virtual {v1, p1, v2}, Landroidx/core/text/a;->m(Ljava/lang/String;Landroidx/core/text/s;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, v0, Lgm/i;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public static synthetic x0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->R0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/MemberFragment;->Q0(Lcom/transsion/member/MemberFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/member/MemberFragment;->e1()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final K0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->M0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->M0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v3, "Dialog not is added"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v3, v4, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public O0(Landroid/view/LayoutInflater;)Lgm/i;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lgm/i;->c(Landroid/view/LayoutInflater;)Lgm/i;

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

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberFragment;->O0(Landroid/view/LayoutInflater;)Lgm/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgm/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lgm/i;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/member/m;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/member/m;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lgm/i;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lgm/i;->f:Lcom/transsion/member/widget/PointView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/transsion/member/n;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsion/member/n;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lgm/i;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lgm/i;->o:Lcom/transsion/member/widget/PointView;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/member/o;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/transsion/member/o;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lgm/i;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v1, v0, Lgm/i;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    new-instance v4, Lcom/transsion/member/p;

    .line 74
    .line 75
    invoke-direct {v4}, Lcom/transsion/member/p;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    const/4 v6, 0x0

    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public initViewData()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->L0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->d1()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lqx/a;->e(Lqx/b;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lf/j;

    .line 20
    .line 21
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/transsion/member/q;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/transsion/member/q;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/transsion/member/MemberFragment;->f:Landroidx/activity/result/b;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lgm/i;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v1, v1, Lcom/transsion/member/MemberActivity;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, v0, Lgm/i;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, v0, Lgm/i;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v1, v0, Lgm/i;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    new-instance v3, Lcom/transsion/member/r;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Lcom/transsion/member/r;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lgm/i;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, v1, Lgm/i;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/4 v5, 0x1

    .line 94
    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/transsion/member/adapter/h$a;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/transsion/member/adapter/h$a;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/transsion/member/adapter/h;

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-direct {v2, p0, v3, p0}, Lcom/transsion/member/adapter/h;-><init>(Landroidx/lifecycle/u;Lcom/transsion/member/MemberViewModel;Lcom/transsion/member/MemberFragment;)V

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, Lcom/transsion/member/MemberFragment;->g:Lcom/transsion/member/adapter/h;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->H0()V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lgm/i;->u:Landroidx/core/widget/NestedScrollView;

    .line 126
    .line 127
    new-instance v2, Lcom/transsion/member/s;

    .line 128
    .line 129
    invoke-direct {v2, v0, p0}, Lcom/transsion/member/s;-><init>(Lgm/i;Lcom/transsion/member/MemberFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->v1(F)V

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void
.end method

.method public initViewModel()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->v()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lcom/transsion/member/t;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/transsion/member/t;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    .line 19
    .line 20
    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lcom/transsion/member/u;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lcom/transsion/member/u;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->x()Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lcom/transsion/member/e;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lcom/transsion/member/e;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    .line 61
    .line 62
    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->D()Landroidx/lifecycle/LiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/transsion/member/f;

    .line 77
    .line 78
    invoke-direct {v3, p0}, Lcom/transsion/member/f;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    .line 82
    .line 83
    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->C()Landroidx/lifecycle/LiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Lcom/transsion/member/g;

    .line 98
    .line 99
    invoke-direct {v3, p0}, Lcom/transsion/member/g;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 100
    .line 101
    .line 102
    new-instance v4, Lcom/transsion/member/MemberFragment$d;

    .line 103
    .line 104
    invoke-direct {v4, v3}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Lcom/transsion/member/h;

    .line 119
    .line 120
    invoke-direct {v2, p0}, Lcom/transsion/member/h;-><init>(Lcom/transsion/member/MemberFragment;)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Lcom/transsion/member/MemberFragment$d;

    .line 124
    .line 125
    invoke-direct {v3, v2}, Lcom/transsion/member/MemberFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->E()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Lcom/transsion/member/MemberFragment;->w1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public loadDefaultData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    const-class v0, Lim/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lim/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lim/b;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lgm/i;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lgm/i;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lgm/i;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, v0, Lgm/i;->j:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lgm/i;

    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, v0, Lgm/i;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lgm/i;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, v0, Lgm/i;->j:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :goto_3
    return-void
.end method

.method public logResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 2
    .line 3
    .line 4
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
    const-string v3, "memberdetail"

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

.method public final o1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object p1, v0

    .line 27
    :goto_1
    if-eqz p1, :cond_6

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->c:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move-object p1, v0

    .line 46
    :goto_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    const/4 p1, 0x0

    .line 70
    goto :goto_4

    .line 71
    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 72
    :goto_4
    iput-boolean p1, p0, Lcom/transsion/member/MemberFragment;->o:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    const-string v0, "scene_id"

    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    :cond_7
    iget-object p1, p0, Lcom/transsion/member/MemberFragment;->a:Lcom/transsion/memberapi/MemberSource;

    .line 97
    .line 98
    const-string v0, "source"

    .line 99
    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_a

    .line 107
    .line 108
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    iget-object v1, p0, Lcom/transsion/member/MemberFragment;->a:Lcom/transsion/memberapi/MemberSource;

    .line 115
    .line 116
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberSource;->getValue()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    instance-of p1, p1, Lcom/transsion/member/MemberActivity;

    .line 135
    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    const-string v1, "OTHER"

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_a

    .line 164
    .line 165
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_a

    .line 170
    .line 171
    const-string v1, "TAB"

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Ljava/lang/String;

    .line 178
    .line 179
    :cond_a
    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->getMLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqx/a;->j(Lqx/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/member/MemberFragment;->logResume()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    const/16 v5, 0x9

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v2, p0

    .line 28
    move v3, p1

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->r()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onLogout()V
    .locals 1

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->r()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-static {v0, p0, v0, v1, v0}, Lcom/transsion/baseui/activity/k;->l(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->h1()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "visible="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, p0, v0, v1, v2}, Lcom/transsion/baseui/activity/k;->p(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/transsion/member/MemberFragment;->l:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/member/MemberFragment;->l:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/transsion/member/MemberViewModel;->r()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->d1()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->w1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public retryLoadData()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lim/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lim/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, v1, v2}, Lim/b$a;->a(Lim/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final s1(Lcom/transsion/memberapi/MemberSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberFragment;->a:Lcom/transsion/memberapi/MemberSource;

    .line 2
    .line 3
    return-void
.end method

.method public final showLoading()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->M0()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "LoadingDialog"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final t1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/MemberFragment;->d:Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberDetail;->getPointInfo()Lcom/transsion/memberapi/PointInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/memberapi/PointInfo;->setPoint(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lgm/i;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lgm/i;->o:Lcom/transsion/member/widget/PointView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/transsion/member/widget/PointView;->setPoints(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lgm/i;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lgm/i;->f:Lcom/transsion/member/widget/PointView;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/transsion/member/widget/PointView;->setPoints(I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/transsion/member/MemberFragment;->N0()Lcom/transsion/member/MemberViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/transsion/member/MemberViewModel;->z()Lcom/transsion/memberapi/SkuData;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuData;->getSkuPointList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/member/MemberFragment;->j1(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method
