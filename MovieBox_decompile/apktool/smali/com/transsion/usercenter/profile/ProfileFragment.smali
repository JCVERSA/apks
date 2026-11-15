.class public final Lcom/transsion/usercenter/profile/ProfileFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lqx/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/ProfileFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lxu/j0;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lqx/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00a7\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001[B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0019\u0010\u000e\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J?\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u001b\u0010#\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010\'\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0006J\u001b\u0010,\u001a\u00020\u0007*\u00020+2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008.\u0010\u001fJ\u0019\u00101\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010/H\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00083\u0010\u0006J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u00072\u0006\u00108\u001a\u000204H\u0002\u00a2\u0006\u0004\u00089\u00107J\u000f\u0010:\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0006J\u0017\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0019\u0010A\u001a\u00020\u00072\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0004\u0008D\u0010EJ!\u0010F\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0004\u0008F\u0010EJ\u000f\u0010G\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0006J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008K\u0010\u0006J\u000f\u0010L\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0006J\u000f\u0010M\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0006J\u000f\u0010N\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0006J\u0017\u0010O\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0006J\u0017\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008S\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008T\u0010\u000fJ\u000f\u0010U\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008U\u0010\u0006J\u000f\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u0015\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u001d\u00a2\u0006\u0004\u0008Z\u0010JR\u0018\u0010]\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u001d\u0010o\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010c\u001a\u0004\u0008m\u0010nR\u001e\u0010t\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u001e\u0010v\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010sR\u0016\u0010y\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0016\u0010}\u001a\u00020z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010\u007f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010xR \u0010\u0082\u0001\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0080\u0001\u0010c\u001a\u0005\u0008\u0081\u0001\u0010nR\u0019\u0010\u0085\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0084\u0001R \u0010\u008c\u0001\u001a\u00030\u0088\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0089\u0001\u0010c\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001f\u0010\u0090\u0001\u001a\u00020\u00148\u0006X\u0086D\u00a2\u0006\u0010\n\u0006\u0008\u008d\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001f\u0010\u0093\u0001\u001a\u00020\u00148\u0006X\u0086D\u00a2\u0006\u0010\n\u0006\u0008\u0091\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u008f\u0001R)\u0010\u0098\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0094\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u008f\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001a\u0010\u009c\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0018\u0010\u00a0\u0001\u001a\u00030\u009d\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R(\u0010\u00a6\u0001\u001a\u00020z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00a1\u0001\u0010|\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/ProfileFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lxu/j0;",
        "Landroid/view/View$OnClickListener;",
        "Lqx/b;",
        "<init>",
        "()V",
        "",
        "g1",
        "G0",
        "D0",
        "O0",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "m1",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "Lcom/transsion/usercenter/profile/bean/ProfileInfo;",
        "profileInfo",
        "k1",
        "(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V",
        "",
        "amount",
        "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
        "url1",
        "url2",
        "url3",
        "url4",
        "h1",
        "(ILcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;)V",
        "",
        "X0",
        "()Z",
        "W0",
        "",
        "alpha",
        "j1",
        "(Lxu/j0;F)V",
        "color",
        "fraction",
        "z0",
        "(IF)I",
        "d1",
        "refresh",
        "Landroid/view/View;",
        "A0",
        "(Landroid/view/View;F)V",
        "checkLogin",
        "Lcom/transsion/usercenter/profile/bean/EntranceInfo;",
        "entranceInfo",
        "F0",
        "(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V",
        "C0",
        "",
        "moduleName",
        "e1",
        "(Ljava/lang/String;)V",
        "tabName",
        "f1",
        "c1",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "I0",
        "(Landroid/view/LayoutInflater;)Lxu/j0;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "logPause",
        "onPause",
        "logResume",
        "lazyLoadData",
        "onClick",
        "(Landroid/view/View;)V",
        "onDestroy",
        "user",
        "onUpdateUserInfo",
        "onLogin",
        "onLogout",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "isExpand",
        "B0",
        "a",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "mUserInfo",
        "b",
        "Lcom/transsion/usercenter/profile/bean/ProfileInfo;",
        "mProfileInfo",
        "Lcom/transsion/usercenter/profile/ProfileViewModel;",
        "c",
        "Lkotlin/Lazy;",
        "H0",
        "()Lcom/transsion/usercenter/profile/ProfileViewModel;",
        "mProfileViewModel",
        "Lcom/transsion/usercenter/profile/f;",
        "d",
        "Lcom/transsion/usercenter/profile/f;",
        "mNoticeMessageViewModel",
        "Lqx/a;",
        "e",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "f",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "g",
        "seeListLaunch",
        "h",
        "Z",
        "isNeedShowLoginActivity",
        "",
        "i",
        "J",
        "recordRefreshingTime",
        "j",
        "isSelf",
        "k",
        "getMLoginApi",
        "mLoginApi",
        "l",
        "I",
        "mTabSelectIndex",
        "m",
        "refreshTime",
        "Landroid/os/Handler;",
        "n",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler",
        "o",
        "getMaxStep",
        "()I",
        "maxStep",
        "p",
        "getStep",
        "step",
        "q",
        "getDefault",
        "setDefault",
        "(I)V",
        "default",
        "Lkj/h;",
        "r",
        "Lkj/h;",
        "mLoadingDialog",
        "Landroid/view/animation/DecelerateInterpolator;",
        "s",
        "Landroid/view/animation/DecelerateInterpolator;",
        "appbarChildAlphaDecelerateInterpolator",
        "t",
        "getResumeTimeStamp",
        "()J",
        "setResumeTimeStamp",
        "(J)V",
        "resumeTimeStamp",
        "u",
        "UserCenter_psRelease"
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
.field public static final u:Lcom/transsion/usercenter/profile/ProfileFragment$a;


# instance fields
.field private a:Lcom/transsnet/loginapi/bean/UserInfo;

.field private b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/usercenter/profile/f;

.field private final e:Lkotlin/Lazy;

.field private f:Landroidx/activity/result/b;

.field private g:Landroidx/activity/result/b;

.field private h:Z

.field private i:J

.field private j:Z

.field private final k:Lkotlin/Lazy;

.field private l:I

.field private m:I

.field private final n:Lkotlin/Lazy;

.field private final o:I

.field private final p:I

.field private q:I

.field private r:Lkj/h;

.field private final s:Landroid/view/animation/DecelerateInterpolator;

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/ProfileFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/profile/ProfileFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/profile/ProfileFragment;->u:Lcom/transsion/usercenter/profile/ProfileFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    const-class v1, Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$3;

    .line 21
    .line 22
    invoke-direct {v3, v0, p0}, Lcom/transsion/usercenter/profile/ProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/usercenter/profile/g;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/g;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->e:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lcom/transsion/usercenter/profile/r;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/r;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->k:Lkotlin/Lazy;

    .line 52
    .line 53
    const/16 v0, 0xf

    .line 54
    .line 55
    iput v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->m:I

    .line 56
    .line 57
    new-instance v0, Lcom/transsion/usercenter/profile/u;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/u;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->n:Lkotlin/Lazy;

    .line 67
    .line 68
    const/16 v0, 0x80

    .line 69
    .line 70
    iput v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->o:I

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    iput v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->p:I

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->q:I

    .line 77
    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 84
    .line 85
    return-void
.end method

.method private final A0(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C0()V
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
    sget-object v0, Lzg/g;->a:Lzg/g;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lzg/g;->a(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->refresh()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->r:Lkj/h;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "mLoadingDialog"

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_2
    invoke-virtual {v0}, Lkj/h;->dismiss()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 43
    .line 44
    sget v1, Lcom/transsion/usercenter/R$string;->no_network:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private final D0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getBlockInfo()Lcom/transsion/usercenter/profile/bean/BlockInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/BlockInfo;->getBlock()Z

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
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getBlockInfo()Lcom/transsion/usercenter/profile/bean/BlockInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/BlockInfo;->getBlocked()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_b

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    if-eqz v2, :cond_b

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lxu/j0;

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, v0, Lxu/j0;->B:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lxu/j0;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, v0, Lxu/j0;->w:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lxu/j0;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object v0, v0, Lxu/j0;->R:Landroid/view/View;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lxu/j0;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object v0, v0, Lxu/j0;->E:Lcom/google/android/material/tabs/TabLayout;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lxu/j0;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    iget-object v0, v0, Lxu/j0;->e:Landroid/view/View;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_7
    if-eqz v2, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lxu/j0;

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    iget-object v0, v0, Lxu/j0;->H:Lcom/tn/lib/widget/TnTextView;

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    sget v2, Lcom/transsion/usercenter/R$string;->str_block_been:I

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lxu/j0;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    iget-object v0, v0, Lxu/j0;->H:Lcom/tn/lib/widget/TnTextView;

    .line 149
    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    new-instance v2, Lcom/transsion/usercenter/profile/t;

    .line 153
    .line 154
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/profile/t;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lxu/j0;

    .line 165
    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    iget-object v0, v0, Lxu/j0;->Y:Landroid/view/View;

    .line 169
    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lxu/j0;

    .line 180
    .line 181
    if-eqz v0, :cond_12

    .line 182
    .line 183
    iget-object v0, v0, Lxu/j0;->u:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 184
    .line 185
    if-eqz v0, :cond_12

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lxu/j0;

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    iget-object v0, v0, Lxu/j0;->B:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 200
    .line 201
    if-eqz v0, :cond_c

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lxu/j0;

    .line 211
    .line 212
    if-eqz v0, :cond_d

    .line 213
    .line 214
    iget-object v0, v0, Lxu/j0;->w:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lxu/j0;

    .line 226
    .line 227
    if-eqz v0, :cond_e

    .line 228
    .line 229
    iget-object v0, v0, Lxu/j0;->R:Landroid/view/View;

    .line 230
    .line 231
    if-eqz v0, :cond_e

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lxu/j0;

    .line 241
    .line 242
    if-eqz v0, :cond_f

    .line 243
    .line 244
    iget-object v0, v0, Lxu/j0;->E:Lcom/google/android/material/tabs/TabLayout;

    .line 245
    .line 246
    if-eqz v0, :cond_f

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lxu/j0;

    .line 256
    .line 257
    if-eqz v0, :cond_10

    .line 258
    .line 259
    iget-object v0, v0, Lxu/j0;->e:Landroid/view/View;

    .line 260
    .line 261
    if-eqz v0, :cond_10

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lxu/j0;

    .line 271
    .line 272
    const/16 v1, 0x8

    .line 273
    .line 274
    if-eqz v0, :cond_11

    .line 275
    .line 276
    iget-object v0, v0, Lxu/j0;->Y:Landroid/view/View;

    .line 277
    .line 278
    if-eqz v0, :cond_11

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Lxu/j0;

    .line 288
    .line 289
    if-eqz v0, :cond_12

    .line 290
    .line 291
    iget-object v0, v0, Lxu/j0;->u:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 292
    .line 293
    if-eqz v0, :cond_12

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :cond_12
    :goto_3
    return-void
.end method

.method private static final E0(Lcom/transsion/usercenter/profile/ProfileFragment;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$string;->str_block_blocked:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " "

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private final F0(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, v0, Lxu/j0;->f:Lxu/r0;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    const-class v1, Lim/b;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v1, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lim/b;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Lim/b;->z()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-string v3, "getRoot(...)"

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getJumpUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getTitle()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    if-nez v2, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v0}, Lxu/r0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lxu/r0;->d:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getTitle()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lxu/r0;->b:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getDescription()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lxu/r0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    return-void
.end method

.method private final G0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxu/j0;->F:Lcom/tn/lib/view/NoTouchToolBar;

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
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lxu/j0;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lxu/j0;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Luf/c;->e(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v1, v0, Lcom/transsion/usercenter/profile/ProfileActivity;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    check-cast v0, Lcom/transsion/usercenter/profile/ProfileActivity;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->t0()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method private final H0()Lcom/transsion/usercenter/profile/ProfileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final J0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->k1(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->r:Lkj/h;

    .line 7
    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    const-string p0, "mLoadingDialog"

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lkj/h;->dismiss()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final K0(Lcom/transsion/usercenter/profile/ProfileFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    new-array v1, v1, [Lcom/transsion/usercenter/widget/MyRoomView$b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput-object v0, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aput-object v0, v1, v3

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    aput-object v0, v1, v4

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/util/List;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    check-cast v5, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move v6, v2

    .line 38
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    add-int/lit8 v8, v6, 0x1

    .line 49
    .line 50
    if-gez v6, :cond_0

    .line 51
    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 53
    .line 54
    .line 55
    :cond_0
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    new-instance v9, Lcom/transsion/usercenter/widget/MyRoomView$b;

    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-direct {v9, v10, v7}, Lcom/transsion/usercenter/widget/MyRoomView$b;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move v6, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lxu/j0;

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    iget-object v6, v5, Lxu/j0;->y:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 86
    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move p1, v2

    .line 105
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    move-object v9, p1

    .line 114
    check-cast v9, Lcom/transsion/usercenter/widget/MyRoomView$b;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    move-object v10, p1

    .line 121
    check-cast v10, Lcom/transsion/usercenter/widget/MyRoomView$b;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    move-object v11, p1

    .line 128
    check-cast v11, Lcom/transsion/usercenter/widget/MyRoomView$b;

    .line 129
    .line 130
    new-instance v12, Lcom/transsion/usercenter/profile/n;

    .line 131
    .line 132
    invoke-direct {v12, p0}, Lcom/transsion/usercenter/profile/n;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 133
    .line 134
    .line 135
    const/4 v7, 0x2

    .line 136
    invoke-virtual/range {v6 .. v12}, Lcom/transsion/usercenter/widget/MyRoomView;->showDownloadsData(ILjava/lang/Integer;Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    :cond_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 146
    .line 147
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p0
.end method

.method private static final L0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "downloads"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "/download/panel_activity"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final M0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;->getEntranceInfo()Lcom/transsion/usercenter/profile/bean/EntranceInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->F0(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final N0(Lcom/transsion/usercenter/profile/ProfileFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lxu/j0;->W:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lez v3, :cond_0

    .line 21
    .line 22
    move v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v1

    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lxu/j0;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lxu/j0;->X:Landroid/view/View;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-lez p1, :cond_2

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method private final O0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 10
    .line 11
    iget-object v2, v0, Lxu/j0;->E:Lcom/google/android/material/tabs/TabLayout;

    .line 12
    .line 13
    iget-object v3, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    new-instance v4, Lcom/transsion/usercenter/profile/m;

    .line 16
    .line 17
    invoke-direct {v4, p0}, Lcom/transsion/usercenter/profile/m;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lxu/j0;->E:Lcom/google/android/material/tabs/TabLayout;

    .line 24
    .line 25
    new-instance v2, Lcom/transsion/usercenter/profile/ProfileFragment$b;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/transsion/usercenter/profile/ProfileFragment$b;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private static final P0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 7

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/tn/lib/widget/TnTextView;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "requireContext(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/tn/lib/widget/TnTextView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/transsion/usercenter/R$string;->profile_post:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Lcom/transsion/usercenter/R$string;->profile_like:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x2

    .line 33
    new-array v4, v3, [Ljava/lang/Integer;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v1, v4, v5

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    aput-object v2, v4, v1

    .line 40
    .line 41
    new-array v2, v5, [I

    .line 42
    .line 43
    new-array v3, v3, [[I

    .line 44
    .line 45
    const v6, 0x10100a1

    .line 46
    .line 47
    .line 48
    filled-new-array {v6}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    aput-object v6, v3, v5

    .line 53
    .line 54
    aput-object v2, v3, v1

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 61
    .line 62
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget v5, Lcom/tn/lib/widget/R$color;->text_02:I

    .line 71
    .line 72
    invoke-static {v2, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    filled-new-array {v1, v2}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    invoke-direct {v2, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 83
    .line 84
    .line 85
    aget-object p2, v4, p2

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {v0, p2}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    .line 92
    .line 93
    .line 94
    const/16 p2, 0x11

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    .line 98
    .line 99
    const/high16 p2, 0x41800000    # 16.0f

    .line 100
    .line 101
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 108
    .line 109
    .line 110
    iget-object p2, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 111
    .line 112
    new-instance v0, Lcom/transsion/usercenter/profile/s;

    .line 113
    .line 114
    invoke-direct {v0, p1, p0}, Lcom/transsion/usercenter/profile/s;-><init>(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private static final Q0(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/transsion/usercenter/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lxu/j0;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, "post"

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->f1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "like"

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->f1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private static final R0(Lxu/j0;Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/transsion/usercenterapi/UpdateResultEvent;->getHasUpdate()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    iget-object p2, p0, Lxu/j0;->D:Landroid/view/View;

    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lxu/j0;->C:Landroid/view/View;

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    move v0, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v0, v1

    .line 48
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 52
    .line 53
    iget-boolean v0, p1, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move v0, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v0, v1

    .line 60
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lxu/j0;->O:Landroid/view/View;

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    move v1, v2

    .line 70
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    iget-object p1, p0, Lxu/j0;->D:Landroid/view/View;

    .line 75
    .line 76
    const-string p2, "settingRedTips"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lxu/j0;->C:Landroid/view/View;

    .line 85
    .line 86
    const-string p2, "settingBlankRedTips"

    .line 87
    .line 88
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    .line 96
    const-string p2, "ivUpdate"

    .line 97
    .line 98
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lxu/j0;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 105
    .line 106
    const-string p2, "updateRedTips"

    .line 107
    .line 108
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 115
    .line 116
    const-string p2, "ivUpdateBlank"

    .line 117
    .line 118
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lxu/j0;->O:Landroid/view/View;

    .line 125
    .line 126
    const-string p1, "updateBlankRedTips"

    .line 127
    .line 128
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method

.method private static final S0(Lcom/transsion/usercenter/profile/ProfileFragment;Lxu/j0;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, p3

    .line 9
    :goto_0
    int-to-float p3, p3

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr p3, v0

    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    int-to-float p2, p2

    .line 18
    div-float/2addr p3, p2

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/transsion/usercenter/profile/ProfileFragment;->j1(Lxu/j0;F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final T0(Lcom/transsion/usercenter/profile/ProfileFragment;FZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    cmpl-float p2, p1, p2

    .line 5
    .line 6
    if-lez p2, :cond_1

    .line 7
    .line 8
    const p2, 0x3dcccccd    # 0.1f

    .line 9
    .line 10
    .line 11
    cmpg-float p1, p1, p2

    .line 12
    .line 13
    if-gez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->r:Lkj/h;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "mLoadingDialog"

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    iget-wide v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->i:J

    .line 36
    .line 37
    sub-long/2addr p1, v0

    .line 38
    const-wide/16 v0, 0x1f4

    .line 39
    .line 40
    cmp-long p1, p1, v0

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->i:J

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->C0()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
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

.method private static final V0(Lcom/transsion/usercenter/profile/ProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/Subject;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/Subject;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/Subject;->getWantToSeeCount()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const-string v1, "want2SeeCount"

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {v0, p0}, Lcom/transsion/usercenter/profile/bean/Subject;->setWantToSeeCount(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private final W0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method private final X0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->isVisitor()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method private static final Y0(Lxu/j0;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final Z0()Lqx/a;
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

.method public static synthetic a0(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/transsion/usercenter/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->Q0(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/transsion/usercenter/profile/ProfileFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final a1()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->i1(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b1(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->l()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;->getEntranceInfo()Lcom/transsion/usercenter/profile/bean/EntranceInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getJumpUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getJumpType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "jumpUrl :"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, ", jumpType:"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/EntranceInfo;->getJumpType()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x2

    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    const-string v0, "/web/web"

    .line 69
    .line 70
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "url"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-static {v0, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget-object v1, Lhj/b;->a:Lhj/b;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string p0, "requireContext(...)"

    .line 96
    .line 97
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x4

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static/range {v1 .. v6}, Lhj/b;->d(Lhj/b;Landroid/content/Context;Ljava/lang/String;Lhj/c;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->b1(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c1()V
    .locals 4

    .line 1
    const-string v0, "/profile/qr_code"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-static {v0, v1, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final checkLogin()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->f:Landroidx/activity/result/b;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->h:Z

    .line 19
    .line 20
    :cond_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lqx/a;->p(Landroid/content/Context;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    return v0

    .line 40
    :cond_2
    return v1
.end method

.method public static synthetic d0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->J0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->j()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->i()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/profile/ProfileFragment;Lxu/j0;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/ProfileFragment;->S0(Lcom/transsion/usercenter/profile/ProfileFragment;Lxu/j0;Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e1(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :cond_1
    const-string v3, "user_id"

    .line 20
    .line 21
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string v1, "me"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "others"

    .line 32
    .line 33
    :goto_0
    const-string v3, "user_status"

    .line 34
    .line 35
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v1, "module_name"

    .line 39
    .line 40
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {v1}, Lqi/b;->f()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v2, v1

    .line 59
    :cond_4
    :goto_1
    invoke-virtual {p1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->o1(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f1(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "page_tab_name"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lqi/b;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v1, ""

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic g0()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileFragment;->a1()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final g1()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lxu/j0;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v3, Lxu/j0;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v3, v1

    .line 45
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lxu/j0;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v4, v4, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-object v4, v1

    .line 68
    :goto_2
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lxu/j0;

    .line 78
    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    iget-object v5, v5, Lxu/j0;->M:Lcom/tn/lib/widget/TnTextView;

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object v5, v1

    .line 91
    :goto_3
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 100
    .line 101
    .line 102
    const/16 v7, 0x20

    .line 103
    .line 104
    invoke-static {v7}, Llj/a;->b(I)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Lxu/j0;

    .line 115
    .line 116
    if-eqz v7, :cond_4

    .line 117
    .line 118
    iget-object v7, v7, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 119
    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    const/16 v0, 0x8

    .line 126
    .line 127
    invoke-static {v0}, Llj/a;->b(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 132
    .line 133
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 137
    .line 138
    .line 139
    const/4 v0, -0x2

    .line 140
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 141
    .line 142
    const/4 v0, -0x1

    .line 143
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 144
    .line 145
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 146
    .line 147
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 148
    .line 149
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 150
    .line 151
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    .line 152
    .line 153
    const/4 v7, 0x2

    .line 154
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    .line 155
    .line 156
    sget v7, Lcom/transsion/usercenter/R$id;->iv_avatar:I

    .line 157
    .line 158
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 159
    .line 160
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 161
    .line 162
    sget v7, Lcom/transsion/usercenter/R$id;->tv_gender:I

    .line 163
    .line 164
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Lxu/j0;

    .line 171
    .line 172
    if-eqz v7, :cond_5

    .line 173
    .line 174
    iget-object v7, v7, Lxu/j0;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    if-eqz v7, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lxu/j0;

    .line 186
    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    iget-object v3, v3, Lxu/j0;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    const/16 v7, 0xc8

    .line 194
    .line 195
    invoke-static {v7}, Llj/a;->b(I)I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 200
    .line 201
    .line 202
    :cond_6
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 203
    .line 204
    const/4 v3, 0x4

    .line 205
    invoke-static {v3}, Llj/a;->b(I)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 210
    .line 211
    .line 212
    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 213
    .line 214
    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 215
    .line 216
    sget v3, Lcom/transsion/usercenter/R$id;->tv_user_name:I

    .line 217
    .line 218
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 219
    .line 220
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 221
    .line 222
    sget v7, Lcom/transsion/usercenter/R$id;->iv_avatar:I

    .line 223
    .line 224
    iput v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 225
    .line 226
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Lxu/j0;

    .line 233
    .line 234
    if-eqz v3, :cond_7

    .line 235
    .line 236
    iget-object v3, v3, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 237
    .line 238
    if-eqz v3, :cond_7

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 244
    .line 245
    .line 246
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 247
    .line 248
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 249
    .line 250
    sget v0, Lcom/transsion/usercenter/R$id;->iv_avatar:I

    .line 251
    .line 252
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 253
    .line 254
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 255
    .line 256
    sget v0, Lcom/transsion/usercenter/R$id;->tv_user_name:I

    .line 257
    .line 258
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lxu/j0;

    .line 265
    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    iget-object v0, v0, Lxu/j0;->M:Lcom/tn/lib/widget/TnTextView;

    .line 269
    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lxu/j0;

    .line 280
    .line 281
    if-eqz v0, :cond_9

    .line 282
    .line 283
    iget-object v0, v0, Lxu/j0;->w:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 284
    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    goto :goto_4

    .line 292
    :cond_9
    move-object v0, v1

    .line 293
    :goto_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 297
    .line 298
    const/16 v3, 0x47

    .line 299
    .line 300
    invoke-static {v3}, Llj/a;->b(I)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    check-cast v4, Lxu/j0;

    .line 311
    .line 312
    if-eqz v4, :cond_a

    .line 313
    .line 314
    iget-object v4, v4, Lxu/j0;->w:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 315
    .line 316
    if-eqz v4, :cond_a

    .line 317
    .line 318
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    .line 320
    .line 321
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lxu/j0;

    .line 326
    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    iget-object v0, v0, Lxu/j0;->Q:Landroid/view/View;

    .line 330
    .line 331
    if-eqz v0, :cond_b

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    :cond_b
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 341
    .line 342
    invoke-static {v3}, Llj/a;->b(I)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Lxu/j0;

    .line 353
    .line 354
    if-eqz v0, :cond_c

    .line 355
    .line 356
    iget-object v0, v0, Lxu/j0;->Q:Landroid/view/View;

    .line 357
    .line 358
    if-eqz v0, :cond_c

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Lxu/j0;

    .line 368
    .line 369
    if-eqz v0, :cond_d

    .line 370
    .line 371
    iget-object v0, v0, Lxu/j0;->x:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 372
    .line 373
    if-eqz v0, :cond_d

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/transsion/usercenter/widget/MyRoomView;->resetUserUi()V

    .line 376
    .line 377
    .line 378
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lxu/j0;

    .line 383
    .line 384
    if-eqz v0, :cond_e

    .line 385
    .line 386
    iget-object v0, v0, Lxu/j0;->z:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 387
    .line 388
    if-eqz v0, :cond_e

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/transsion/usercenter/widget/MyRoomView;->resetUserUi()V

    .line 391
    .line 392
    .line 393
    :cond_e
    return-void
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->e:Lkotlin/Lazy;

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

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->n:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->k:Lkotlin/Lazy;

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

.method public static synthetic h0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileFragment;->mLoginApi_delegate$lambda$1()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final h1(ILcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lxu/j0;->z:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v9, Lcom/transsion/usercenter/profile/q;

    .line 22
    .line 23
    invoke-direct {v9, p0}, Lcom/transsion/usercenter/profile/q;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    move-object v5, p2

    .line 28
    move-object v6, p3

    .line 29
    move-object v7, p4

    .line 30
    move-object v8, p5

    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/usercenter/widget/MyRoomView;->showCollectionData(IZLjava/lang/Integer;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/usercenter/profile/ProfileFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->N0(Lcom/transsion/usercenter/profile/ProfileFragment;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i1(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "want_to_see"

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-class v3, Lcom/transsion/usercenter/profile/see/ProfileSeeActivity;

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "userId"

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->g:Landroidx/activity/result/b;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->M0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j1(Lxu/j0;F)V
    .locals 8

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
    const v0, 0x3e4ccccd    # 0.2f

    .line 9
    .line 10
    .line 11
    cmpg-float v1, p2, v0

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    move p2, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 21
    .line 22
    .line 23
    cmpg-float v1, p2, v1

    .line 24
    .line 25
    if-gez v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 28
    .line 29
    sub-float/2addr p2, v0

    .line 30
    const/high16 v0, 0x40a00000    # 5.0f

    .line 31
    .line 32
    mul-float/2addr p2, v0

    .line 33
    invoke-virtual {v1, p2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move p2, v2

    .line 39
    :goto_0
    cmpg-float v0, p2, v2

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    move v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v0, v1

    .line 48
    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/usercenter/profile/ProfileFragment;->B0(Z)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-string v4, "ivMoreBlank"

    .line 56
    .line 57
    const-string v5, "ivMore"

    .line 58
    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    iget-object v0, p1, Lxu/j0;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 62
    .line 63
    const-string v6, "ivSetting"

    .line 64
    .line 65
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    int-to-float v6, v2

    .line 69
    sub-float/2addr v6, p2

    .line 70
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p1, Lxu/j0;->q:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    const-string v7, "ivSettingBlank"

    .line 76
    .line 77
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p1, Lxu/j0;->D:Landroid/view/View;

    .line 96
    .line 97
    const-string v7, "settingRedTips"

    .line 98
    .line 99
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lxu/j0;->C:Landroid/view/View;

    .line 106
    .line 107
    const-string v7, "settingBlankRedTips"

    .line 108
    .line 109
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p1, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    const-string v7, "ivUpdate"

    .line 118
    .line 119
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p1, Lxu/j0;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 126
    .line 127
    const-string v7, "updateRedTips"

    .line 128
    .line 129
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p1, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 136
    .line 137
    const-string v7, "ivUpdateBlank"

    .line 138
    .line 139
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p1, Lxu/j0;->O:Landroid/view/View;

    .line 146
    .line 147
    const-string v7, "updateBlankRedTips"

    .line 148
    .line 149
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 153
    .line 154
    .line 155
    :cond_4
    iget-object v0, p1, Lxu/j0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 156
    .line 157
    const-string v7, "ivNotice"

    .line 158
    .line 159
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p1, Lxu/j0;->W:Landroid/view/View;

    .line 166
    .line 167
    const-string v7, "viewRed"

    .line 168
    .line 169
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p1, Lxu/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 176
    .line 177
    const-string v7, "ivQrCode"

    .line 178
    .line 179
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p1, Lxu/j0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 186
    .line 187
    const-string v7, "ivNoticeBlank"

    .line 188
    .line 189
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p1, Lxu/j0;->X:Landroid/view/View;

    .line 196
    .line 197
    const-string v7, "viewRedBlank"

    .line 198
    .line 199
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p1, Lxu/j0;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 206
    .line 207
    const-string v7, "ivQrCodeBlank"

    .line 208
    .line 209
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lxu/j0;

    .line 220
    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    iget-object v0, v0, Lxu/j0;->W:Landroid/view/View;

    .line 224
    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_6

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lxu/j0;

    .line 238
    .line 239
    if-eqz v0, :cond_5

    .line 240
    .line 241
    iget-object v0, v0, Lxu/j0;->W:Landroid/view/View;

    .line 242
    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    invoke-direct {p0, v0, v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 246
    .line 247
    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Lxu/j0;

    .line 253
    .line 254
    if-eqz v0, :cond_6

    .line 255
    .line 256
    iget-object v0, v0, Lxu/j0;->X:Landroid/view/View;

    .line 257
    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 261
    .line 262
    .line 263
    :cond_6
    iget-object v0, p1, Lxu/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 264
    .line 265
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p1, Lxu/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 272
    .line 273
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_7
    iget-object v0, p1, Lxu/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 281
    .line 282
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    int-to-float v5, v2

    .line 286
    sub-float/2addr v5, p2

    .line 287
    invoke-direct {p0, v0, v5}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p1, Lxu/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 291
    .line 292
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p1, Lxu/j0;->f:Lxu/r0;

    .line 299
    .line 300
    invoke-virtual {v0}, Lxu/r0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const-string v4, "getRoot(...)"

    .line 305
    .line 306
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    instance-of v0, v0, Lcom/transsion/usercenter/profile/ProfileActivity;

    .line 317
    .line 318
    if-eqz v0, :cond_8

    .line 319
    .line 320
    iget-object v0, p1, Lxu/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 321
    .line 322
    const-string v4, "ivBack"

    .line 323
    .line 324
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p1, Lxu/j0;->i:Lcom/tn/lib/widget/TnTextView;

    .line 331
    .line 332
    const-string v5, "ivBackBlack"

    .line 333
    .line 334
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p1, Lxu/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 341
    .line 342
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    int-to-float v4, v2

    .line 346
    sub-float/2addr v4, p2

    .line 347
    invoke-direct {p0, v0, v4}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p1, Lxu/j0;->i:Lcom/tn/lib/widget/TnTextView;

    .line 351
    .line 352
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_8
    iget-object v0, p1, Lxu/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 360
    .line 361
    const/16 v4, 0x8

    .line 362
    .line 363
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p1, Lxu/j0;->i:Lcom/tn/lib/widget/TnTextView;

    .line 367
    .line 368
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    :goto_3
    iget-object v0, p1, Lxu/j0;->F:Lcom/tn/lib/view/NoTouchToolBar;

    .line 372
    .line 373
    cmpg-float v3, p2, v3

    .line 374
    .line 375
    if-nez v3, :cond_9

    .line 376
    .line 377
    move v1, v2

    .line 378
    :cond_9
    xor-int/2addr v1, v2

    .line 379
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/NoTouchToolBar;->setIntercept(Z)V

    .line 380
    .line 381
    .line 382
    iget-object v0, p1, Lxu/j0;->r:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 383
    .line 384
    const-string v1, "ivTitleAvatar"

    .line 385
    .line 386
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p1, Lxu/j0;->L:Lcom/tn/lib/widget/TnTextView;

    .line 393
    .line 394
    const-string v1, "tvTitleUserName"

    .line 395
    .line 396
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->A0(Landroid/view/View;F)V

    .line 400
    .line 401
    .line 402
    iget-object p1, p1, Lxu/j0;->F:Lcom/tn/lib/view/NoTouchToolBar;

    .line 403
    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    sget v1, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 409
    .line 410
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-direct {p0, v0, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->z0(IF)I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method public static synthetic k0(Lxu/j0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->Y0(Lxu/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k1(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v5}, Lqi/b;->k(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v1, v7, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v7, v0}, Lcom/transsion/usercenter/profile/ProfileFragment;->m1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lxu/j0;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v8, v0, Lxu/j0;->x:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMyGroup()Lcom/transsion/usercenter/profile/bean/Group;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/Group;->getCount()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v11, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v11, v6

    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMyGroupIconByIndex(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-virtual {v1, v5}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMyGroupIconByIndex(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    invoke-virtual {v1, v3}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMyGroupIconByIndex(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    invoke-virtual {v1, v4}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMyGroupIconByIndex(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    new-instance v0, Lcom/transsion/usercenter/profile/l;

    .line 74
    .line 75
    invoke-direct {v0, v7}, Lcom/transsion/usercenter/profile/l;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 76
    .line 77
    .line 78
    const/4 v9, 0x1

    .line 79
    move-object/from16 v16, v0

    .line 80
    .line 81
    invoke-virtual/range {v8 .. v16}, Lcom/transsion/usercenter/widget/MyRoomView;->showMyRoomData(IZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const/4 v0, 0x4

    .line 85
    new-array v0, v0, [Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 86
    .line 87
    aput-object v6, v0, v2

    .line 88
    .line 89
    aput-object v6, v0, v5

    .line 90
    .line 91
    aput-object v6, v0, v3

    .line 92
    .line 93
    aput-object v6, v0, v4

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/Subject;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/Subject;->getWantSubjects()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    check-cast v0, Ljava/lang/Iterable;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    move v0, v2

    .line 116
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_4

    .line 121
    .line 122
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    add-int/lit8 v10, v0, 0x1

    .line 127
    .line 128
    if-gez v0, :cond_3

    .line 129
    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 131
    .line 132
    .line 133
    :cond_3
    check-cast v9, Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 134
    .line 135
    :try_start_0
    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 136
    .line 137
    invoke-virtual {v6, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 148
    .line 149
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :goto_2
    move v0, v10

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getMySubject()Lcom/transsion/usercenter/profile/bean/Subject;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/Subject;->getWantToSeeCount()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    move-object v8, v1

    .line 171
    check-cast v8, Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 172
    .line 173
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    move-object v5, v1

    .line 178
    check-cast v5, Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 179
    .line 180
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    move-object v9, v1

    .line 185
    check-cast v9, Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 186
    .line 187
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move-object v6, v1

    .line 192
    check-cast v6, Lcom/transsion/usercenter/profile/bean/CoverUrl;

    .line 193
    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    move v2, v0

    .line 197
    move-object v3, v8

    .line 198
    move-object v4, v5

    .line 199
    move-object v5, v9

    .line 200
    invoke-direct/range {v1 .. v6}, Lcom/transsion/usercenter/profile/ProfileFragment;->h1(ILcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;)V

    .line 201
    .line 202
    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    iget-object v0, v7, Lcom/transsion/usercenter/profile/ProfileFragment;->d:Lcom/transsion/usercenter/profile/f;

    .line 210
    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/f;->d()V

    .line 214
    .line 215
    .line 216
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->D0()V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->P0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l1(Lcom/transsion/usercenter/profile/ProfileFragment;I)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    const-string p1, "addroom"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "/room/home"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string p1, "myrooms"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-string p1, "/room/list"

    .line 47
    .line 48
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p1, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string p1, "/room/others_list"

    .line 61
    .line 62
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v0, v2

    .line 76
    :goto_0
    const-string v3, "user_id"

    .line 77
    .line 78
    invoke-virtual {p1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p1, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static synthetic m0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->U0(Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m1(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 13

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    :cond_1
    const-string v3, "user_id"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const-string v2, "me"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "others"

    .line 38
    .line 39
    :goto_0
    const-string v3, "user_status"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lxu/j0;

    .line 49
    .line 50
    if-eqz v0, :cond_18

    .line 51
    .line 52
    iget-object v2, v0, Lxu/j0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget v4, Lcom/tn/lib/widget/R$color;->cl31_30_p:I

    .line 59
    .line 60
    invoke-static {v3, v4}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lxu/j0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 74
    .line 75
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    iget-object v3, v0, Lxu/j0;->Q:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 87
    .line 88
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->X0()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const-string v6, "ivTitleAvatar"

    .line 98
    .line 99
    const-string v7, "ivAvatar"

    .line 100
    .line 101
    const-string v8, "getContext(...)"

    .line 102
    .line 103
    const/16 v9, 0x8

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    iget-object v4, v0, Lxu/j0;->K:Lcom/tn/lib/widget/TnTextView;

    .line 109
    .line 110
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v4, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 114
    .line 115
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 119
    .line 120
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 124
    .line 125
    iget-object v5, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    if-nez v11, :cond_4

    .line 143
    .line 144
    move-object v11, v1

    .line 145
    :cond_4
    invoke-virtual {v5, v11}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    sget v11, Lcom/transsion/usercenter/R$mipmap;->profile_visitor_avatar:I

    .line 150
    .line 151
    invoke-virtual {v5, v11}, Lni/f$b;->i(I)Lni/f$b;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    iget-object v11, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 156
    .line 157
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v11}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 161
    .line 162
    .line 163
    iget-object v5, v0, Lxu/j0;->r:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-nez v5, :cond_5

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    move-object v1, v5

    .line 184
    :goto_1
    invoke-virtual {v4, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget v4, Lcom/transsion/usercenter/R$mipmap;->profile_visitor_avatar:I

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Lni/f$b;->i(I)Lni/f$b;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v4, v0, Lxu/j0;->r:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 195
    .line 196
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_6

    .line 207
    .line 208
    const/high16 v1, 0x43300000    # 176.0f

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    const/high16 v1, 0x43390000    # 185.0f

    .line 212
    .line 213
    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    add-int/2addr v1, v4

    .line 222
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 223
    .line 224
    const/high16 v1, 0x42d40000    # 106.0f

    .line 225
    .line 226
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    add-int/2addr v1, v4

    .line 235
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 236
    .line 237
    iget-object v1, v0, Lxu/j0;->K:Lcom/tn/lib/widget/TnTextView;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 244
    .line 245
    goto/16 :goto_a

    .line 246
    .line 247
    :cond_7
    iget-object v5, v0, Lxu/j0;->K:Lcom/tn/lib/widget/TnTextView;

    .line 248
    .line 249
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    iget-object v5, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 253
    .line 254
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-eqz v11, :cond_8

    .line 259
    .line 260
    move v11, v10

    .line 261
    goto :goto_3

    .line 262
    :cond_8
    move v11, v9

    .line 263
    :goto_3
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 267
    .line 268
    iget-object v11, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 269
    .line 270
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v11}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-virtual {v11, v12}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    sget v12, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    .line 290
    .line 291
    invoke-virtual {v11, v12}, Lni/f$b;->i(I)Lni/f$b;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    iget-object v12, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 296
    .line 297
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v12}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 301
    .line 302
    .line 303
    iget-object v7, v0, Lxu/j0;->r:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5, v7}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v5, v7}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    sget v7, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    .line 325
    .line 326
    invoke-virtual {v5, v7}, Lni/f$b;->i(I)Lni/f$b;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    iget-object v7, v0, Lxu/j0;->r:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 331
    .line 332
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v7}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-nez v5, :cond_9

    .line 343
    .line 344
    move v5, v10

    .line 345
    goto :goto_4

    .line 346
    :cond_9
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    const/4 v6, 0x1

    .line 351
    if-ne v5, v6, :cond_a

    .line 352
    .line 353
    sget v5, Lcom/transsion/usercenter/R$mipmap;->profile_man:I

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_a
    sget v5, Lcom/transsion/usercenter/R$mipmap;->profile_female:I

    .line 357
    .line 358
    :goto_4
    iget-object v6, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 359
    .line 360
    invoke-virtual {v6, v5, v10, v10, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-gtz v5, :cond_b

    .line 368
    .line 369
    iget-object v5, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 370
    .line 371
    invoke-virtual {v5, v1}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_b
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-nez v1, :cond_c

    .line 380
    .line 381
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 382
    .line 383
    new-instance v5, Lcom/transsion/usercenter/profile/o;

    .line 384
    .line 385
    invoke-direct {v5, p0, p1}, Lcom/transsion/usercenter/profile/o;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v5}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_c
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    invoke-virtual {v1, v5}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    :goto_5
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_d

    .line 410
    .line 411
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-gtz v1, :cond_d

    .line 416
    .line 417
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 418
    .line 419
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eq v1, v9, :cond_e

    .line 424
    .line 425
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 426
    .line 427
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 431
    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 440
    .line 441
    const/high16 v4, 0x41800000    # 16.0f

    .line 442
    .line 443
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 448
    .line 449
    .line 450
    iget-object v4, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 451
    .line 452
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .line 454
    .line 455
    goto :goto_6

    .line 456
    :cond_d
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_e

    .line 463
    .line 464
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 465
    .line 466
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    iget-object v1, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 470
    .line 471
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 479
    .line 480
    const/high16 v4, 0x41000000    # 8.0f

    .line 481
    .line 482
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 487
    .line 488
    .line 489
    iget-object v4, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 490
    .line 491
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    .line 493
    .line 494
    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_f

    .line 499
    .line 500
    const/high16 v1, 0x431c0000    # 156.0f

    .line 501
    .line 502
    goto :goto_7

    .line 503
    :cond_f
    const/high16 v1, 0x432f0000    # 175.0f

    .line 504
    .line 505
    :goto_7
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    add-int/2addr v1, v4

    .line 514
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 515
    .line 516
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 517
    .line 518
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-nez v1, :cond_10

    .line 523
    .line 524
    iget-object v1, v0, Lxu/j0;->J:Lcom/tn/lib/widget/TnTextView;

    .line 525
    .line 526
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    goto :goto_9

    .line 531
    :cond_10
    iget-object v1, v0, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :goto_9
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 535
    .line 536
    :goto_a
    iget-object v1, v0, Lxu/j0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 537
    .line 538
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, Lxu/j0;->Q:Landroid/view/View;

    .line 542
    .line 543
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v0, Lxu/j0;->L:Lcom/tn/lib/widget/TnTextView;

    .line 547
    .line 548
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    invoke-static {}, Landroidx/core/text/a;->c()Landroidx/core/text/a;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    sget-object v3, Landroidx/core/text/t;->a:Landroidx/core/text/s;

    .line 564
    .line 565
    invoke-virtual {v1, v2, v3}, Landroidx/core/text/a;->m(Ljava/lang/String;Landroidx/core/text/s;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    iget-object v2, v0, Lxu/j0;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 570
    .line 571
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .line 573
    .line 574
    iget-object v1, v0, Lxu/j0;->M:Lcom/tn/lib/widget/TnTextView;

    .line 575
    .line 576
    new-instance v2, Lcom/transsion/usercenter/profile/p;

    .line 577
    .line 578
    invoke-direct {v2, p0, p1}, Lcom/transsion/usercenter/profile/p;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 582
    .line 583
    .line 584
    iget-object p1, v0, Lxu/j0;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 585
    .line 586
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_11

    .line 591
    .line 592
    move v1, v10

    .line 593
    goto :goto_b

    .line 594
    :cond_11
    move v1, v9

    .line 595
    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    sget-object p1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 599
    .line 600
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    if-eqz p1, :cond_18

    .line 609
    .line 610
    iget-object p1, v0, Lxu/j0;->D:Landroid/view/View;

    .line 611
    .line 612
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_12

    .line 617
    .line 618
    move v1, v10

    .line 619
    goto :goto_c

    .line 620
    :cond_12
    move v1, v9

    .line 621
    :goto_c
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .line 623
    .line 624
    iget-object p1, v0, Lxu/j0;->C:Landroid/view/View;

    .line 625
    .line 626
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-eqz v1, :cond_13

    .line 631
    .line 632
    move v1, v10

    .line 633
    goto :goto_d

    .line 634
    :cond_13
    move v1, v9

    .line 635
    :goto_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    .line 637
    .line 638
    iget-object p1, v0, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 639
    .line 640
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-eqz v1, :cond_14

    .line 645
    .line 646
    move v1, v10

    .line 647
    goto :goto_e

    .line 648
    :cond_14
    move v1, v9

    .line 649
    :goto_e
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    iget-object p1, v0, Lxu/j0;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 653
    .line 654
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_15

    .line 659
    .line 660
    move v1, v10

    .line 661
    goto :goto_f

    .line 662
    :cond_15
    move v1, v9

    .line 663
    :goto_f
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    iget-object p1, v0, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 667
    .line 668
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-eqz v1, :cond_16

    .line 673
    .line 674
    move v1, v10

    .line 675
    goto :goto_10

    .line 676
    :cond_16
    move v1, v9

    .line 677
    :goto_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    iget-object p1, v0, Lxu/j0;->O:Landroid/view/View;

    .line 681
    .line 682
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_17

    .line 687
    .line 688
    move v9, v10

    .line 689
    :cond_17
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    :cond_18
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

.method public static synthetic n0(Lcom/transsion/usercenter/profile/ProfileFragment;FZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->T0(Lcom/transsion/usercenter/profile/ProfileFragment;FZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n1(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    sget v0, Lcom/transsion/usercenter/R$string;->years_old:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "getString(...)"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    new-array v1, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p1, v1, v2

    .line 27
    .line 28
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "format(...)"

    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/profile/ProfileFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->E0(Lcom/transsion/usercenter/profile/ProfileFragment;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final o1(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget v0, Lcom/transsion/usercenter/R$string;->profile_one_room_id:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic p0(Lxu/j0;Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->R0(Lxu/j0;Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->n1(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/usercenter/profile/ProfileFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->K0(Lcom/transsion/usercenter/profile/ProfileFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final refresh()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->d1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lxu/j0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    instance-of v1, v0, Lcom/transsion/usercenter/profile/adapter/b;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/transsion/usercenter/profile/adapter/b;

    .line 27
    .line 28
    iget v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/profile/adapter/b;->h(I)V

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
    check-cast v0, Lxu/j0;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public static synthetic s0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->L0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileFragment;->Z0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u0(Lcom/transsion/usercenter/profile/ProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->V0(Lcom/transsion/usercenter/profile/ProfileFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/usercenter/profile/ProfileFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->l1(Lcom/transsion/usercenter/profile/ProfileFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/usercenter/profile/ProfileFragment;)Lcom/transsion/usercenter/profile/bean/ProfileInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->d1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y0(Lcom/transsion/usercenter/profile/ProfileFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 2
    .line 3
    return-void
.end method

.method private final z0(IF)I
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


# virtual methods
.method public final B0(Z)V
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lij/y;->a:Lij/y;

    .line 9
    .line 10
    invoke-virtual {p1}, Lij/y;->a()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public I0(Landroid/view/LayoutInflater;)Lxu/j0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lxu/j0;->c(Landroid/view/LayoutInflater;)Lxu/j0;

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

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->I0(Landroid/view/LayoutInflater;)Lxu/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMLoginApi()Lqx/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lqx/a;->e(Lqx/b;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->p()Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/transsion/usercenter/profile/v;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/v;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/transsion/usercenter/profile/ProfileFragment$e;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/profile/ProfileFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->m()Landroidx/lifecycle/LiveData;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/transsion/usercenter/profile/w;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/w;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/transsion/usercenter/profile/ProfileFragment$e;

    .line 63
    .line 64
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/profile/ProfileFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->l()Landroidx/lifecycle/b0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-instance v0, Lcom/transsion/usercenter/profile/x;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/x;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/transsion/usercenter/profile/ProfileFragment$e;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/ProfileFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->m1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    new-instance p2, Landroidx/lifecycle/v0;

    .line 103
    .line 104
    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 105
    .line 106
    .line 107
    const-class p1, Lcom/transsion/usercenter/profile/f;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/transsion/usercenter/profile/f;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->d:Lcom/transsion/usercenter/profile/f;

    .line 116
    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/f;->h()Landroidx/lifecycle/b0;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    new-instance v0, Lcom/transsion/usercenter/profile/y;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/y;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/transsion/usercenter/profile/ProfileFragment$e;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Lcom/transsion/usercenter/profile/ProfileFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_2

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->j()V

    .line 153
    .line 154
    .line 155
    :cond_2
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->G0()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lkj/h;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "requireContext(...)"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lkj/h;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->r:Lkj/h;

    .line 24
    .line 25
    new-instance p1, Lf/j;

    .line 26
    .line 27
    invoke-direct {p1}, Lf/j;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/transsion/usercenter/profile/b0;

    .line 31
    .line 32
    invoke-direct {p2}, Lcom/transsion/usercenter/profile/b0;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->f:Landroidx/activity/result/b;

    .line 40
    .line 41
    new-instance p1, Lf/j;

    .line 42
    .line 43
    invoke-direct {p1}, Lf/j;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/transsion/usercenter/profile/h;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/profile/h;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->g:Landroidx/activity/result/b;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lxu/j0;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    if-eqz p1, :cond_8

    .line 67
    .line 68
    iget-object v1, p1, Lxu/j0;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 69
    .line 70
    new-instance v2, Lcom/transsion/usercenter/profile/i;

    .line 71
    .line 72
    invoke-direct {v2, p0, p1}, Lcom/transsion/usercenter/profile/i;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;Lxu/j0;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$g;)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v1}, Lcom/transsion/usercenter/profile/ProfileFragment;->j1(Lxu/j0;F)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p1, Lxu/j0;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 85
    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    move v2, p2

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move v2, v0

    .line 91
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    iget-object v1, p1, Lxu/j0;->D:Landroid/view/View;

    .line 107
    .line 108
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 109
    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    move v2, p2

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    move v2, v0

    .line 115
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p1, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 119
    .line 120
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    move v2, p2

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move v2, v0

    .line 127
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p1, Lxu/j0;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 131
    .line 132
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 133
    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    move v2, p2

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    move v2, v0

    .line 139
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p1, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 145
    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    move v2, p2

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    move v2, v0

    .line 151
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p1, Lxu/j0;->O:Landroid/view/View;

    .line 155
    .line 156
    iget-boolean v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    move v2, p2

    .line 161
    goto :goto_5

    .line 162
    :cond_5
    move v2, v0

    .line 163
    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object v1, p1, Lxu/j0;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 173
    .line 174
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    instance-of v2, v1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    .line 184
    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    check-cast v1, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    .line 188
    .line 189
    new-instance v2, Lcom/transsion/usercenter/profile/j;

    .line 190
    .line 191
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/profile/j;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->S0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$d;)V

    .line 195
    .line 196
    .line 197
    :cond_7
    new-instance v9, Lcom/transsion/usercenter/profile/k;

    .line 198
    .line 199
    invoke-direct {v9, p1, p0}, Lcom/transsion/usercenter/profile/k;-><init>(Lxu/j0;Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 200
    .line 201
    .line 202
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 203
    .line 204
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object v3, v1

    .line 211
    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 212
    .line 213
    const-class v1, Lcom/transsion/usercenterapi/UpdateResultEvent;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const-string v1, "getName(...)"

    .line 220
    .line 221
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 225
    .line 226
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    const/4 v8, 0x0

    .line 235
    move-object v4, p0

    .line 236
    invoke-virtual/range {v3 .. v9}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 237
    .line 238
    .line 239
    iget-object v1, p1, Lxu/j0;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 240
    .line 241
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p1, Lxu/j0;->q:Landroidx/appcompat/widget/AppCompatImageView;

    .line 245
    .line 246
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p1, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 250
    .line 251
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, p1, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 255
    .line 256
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p1, Lxu/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 260
    .line 261
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p1, Lxu/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 265
    .line 266
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p1, Lxu/j0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 270
    .line 271
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p1, Lxu/j0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 275
    .line 276
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, p1, Lxu/j0;->K:Lcom/tn/lib/widget/TnTextView;

    .line 280
    .line 281
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, p1, Lxu/j0;->I:Lcom/tn/lib/widget/TnTextView;

    .line 285
    .line 286
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p1, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 290
    .line 291
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p1, Lxu/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 295
    .line 296
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, p1, Lxu/j0;->i:Lcom/tn/lib/widget/TnTextView;

    .line 300
    .line 301
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, p1, Lxu/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 305
    .line 306
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p1, Lxu/j0;->f:Lxu/r0;

    .line 310
    .line 311
    iget-object p1, p1, Lxu/r0;->c:Landroid/widget/TextView;

    .line 312
    .line 313
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Lxu/j0;

    .line 321
    .line 322
    if-eqz p1, :cond_9

    .line 323
    .line 324
    iget-object p1, p1, Lxu/j0;->x:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 325
    .line 326
    if-eqz p1, :cond_9

    .line 327
    .line 328
    sget v1, Lcom/transsion/usercenter/R$string;->profile_my_room:I

    .line 329
    .line 330
    invoke-virtual {p1, v1}, Lcom/transsion/usercenter/widget/MyRoomView;->setTitle(I)V

    .line 331
    .line 332
    .line 333
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    check-cast p1, Lxu/j0;

    .line 338
    .line 339
    if-eqz p1, :cond_a

    .line 340
    .line 341
    iget-object p1, p1, Lxu/j0;->y:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 342
    .line 343
    if-eqz p1, :cond_a

    .line 344
    .line 345
    sget v1, Lcom/transsion/usercenter/R$string;->profile_my_downloads:I

    .line 346
    .line 347
    invoke-virtual {p1, v1}, Lcom/transsion/usercenter/widget/MyRoomView;->setTitle(I)V

    .line 348
    .line 349
    .line 350
    :cond_a
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-nez p1, :cond_16

    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Lxu/j0;

    .line 361
    .line 362
    if-eqz p1, :cond_b

    .line 363
    .line 364
    iget-object p1, p1, Lxu/j0;->T:Landroid/view/View;

    .line 365
    .line 366
    if-eqz p1, :cond_b

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    check-cast p1, Lxu/j0;

    .line 376
    .line 377
    if-eqz p1, :cond_c

    .line 378
    .line 379
    iget-object p1, p1, Lxu/j0;->y:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 380
    .line 381
    if-eqz p1, :cond_c

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Lxu/j0;

    .line 391
    .line 392
    if-eqz p1, :cond_d

    .line 393
    .line 394
    iget-object p1, p1, Lxu/j0;->U:Landroid/view/View;

    .line 395
    .line 396
    if-eqz p1, :cond_d

    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    check-cast p1, Lxu/j0;

    .line 406
    .line 407
    if-eqz p1, :cond_e

    .line 408
    .line 409
    iget-object p1, p1, Lxu/j0;->V:Landroid/view/View;

    .line 410
    .line 411
    if-eqz p1, :cond_e

    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    check-cast p1, Lxu/j0;

    .line 421
    .line 422
    if-eqz p1, :cond_f

    .line 423
    .line 424
    iget-object p1, p1, Lxu/j0;->z:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 425
    .line 426
    if-eqz p1, :cond_f

    .line 427
    .line 428
    sget p2, Lcom/transsion/usercenter/R$string;->profile_list:I

    .line 429
    .line 430
    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/widget/MyRoomView;->setTitle(I)V

    .line 431
    .line 432
    .line 433
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    check-cast p1, Lxu/j0;

    .line 438
    .line 439
    if-eqz p1, :cond_10

    .line 440
    .line 441
    iget-object p1, p1, Lxu/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 442
    .line 443
    if-eqz p1, :cond_10

    .line 444
    .line 445
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 446
    .line 447
    .line 448
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Lxu/j0;

    .line 453
    .line 454
    if-eqz p1, :cond_11

    .line 455
    .line 456
    iget-object p1, p1, Lxu/j0;->o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 457
    .line 458
    if-eqz p1, :cond_11

    .line 459
    .line 460
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    check-cast p1, Lxu/j0;

    .line 468
    .line 469
    if-eqz p1, :cond_12

    .line 470
    .line 471
    iget-object p1, p1, Lxu/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 472
    .line 473
    if-eqz p1, :cond_12

    .line 474
    .line 475
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 476
    .line 477
    .line 478
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    check-cast p1, Lxu/j0;

    .line 483
    .line 484
    if-eqz p1, :cond_13

    .line 485
    .line 486
    iget-object p1, p1, Lxu/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 487
    .line 488
    if-eqz p1, :cond_13

    .line 489
    .line 490
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    check-cast p1, Lxu/j0;

    .line 498
    .line 499
    if-eqz p1, :cond_14

    .line 500
    .line 501
    iget-object p1, p1, Lxu/j0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 502
    .line 503
    if-eqz p1, :cond_14

    .line 504
    .line 505
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 506
    .line 507
    .line 508
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    check-cast p1, Lxu/j0;

    .line 513
    .line 514
    if-eqz p1, :cond_15

    .line 515
    .line 516
    iget-object p1, p1, Lxu/j0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 517
    .line 518
    if-eqz p1, :cond_15

    .line 519
    .line 520
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 521
    .line 522
    .line 523
    :cond_15
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->g1()V

    .line 524
    .line 525
    .line 526
    goto :goto_6

    .line 527
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    check-cast p1, Lxu/j0;

    .line 532
    .line 533
    if-eqz p1, :cond_17

    .line 534
    .line 535
    iget-object p1, p1, Lxu/j0;->z:Lcom/transsion/usercenter/widget/MyRoomView;

    .line 536
    .line 537
    if-eqz p1, :cond_17

    .line 538
    .line 539
    sget p2, Lcom/transsion/usercenter/R$string;->profile_your_list:I

    .line 540
    .line 541
    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/widget/MyRoomView;->setTitle(I)V

    .line 542
    .line 543
    .line 544
    :cond_17
    :goto_6
    return-void
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/j0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    new-instance v2, Lcom/transsion/usercenter/profile/adapter/b;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-direct {v2, v3, p0}, Lcom/transsion/usercenter/profile/adapter/b;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 36
    .line 37
    new-instance v2, Lcom/transsion/usercenter/profile/ProfileFragment$c;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/profile/ProfileFragment$c;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->O0()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->X0()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 55
    .line 56
    new-instance v2, Lcom/transsion/usercenter/profile/a0;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lcom/transsion/usercenter/profile/a0;-><init>(Lxu/j0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->i()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public logPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->t:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->t:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "profiledetail"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->t:J

    .line 9
    .line 10
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
    const-string v3, "profiledetail"

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

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sget v0, Lcom/transsion/usercenter/R$id;->tv_login:I

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    const-string p1, "login"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMLoginApi()Lqx/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1a

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "requireContext(...)"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lqx/a;->k(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->tv_find_movie:I

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    const-string p1, "findmovies"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "/main/tab"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, "tabIndex"

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "topTab"

    .line 78
    .line 79
    const-string v1, "Trending"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x2

    .line 90
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_2
    sget v0, Lcom/transsion/usercenter/R$id;->iv_setting:I

    .line 96
    .line 97
    if-eq p1, v0, :cond_18

    .line 98
    .line 99
    sget v0, Lcom/transsion/usercenter/R$id;->iv_setting_blank:I

    .line 100
    .line 101
    if-ne p1, v0, :cond_3

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_3
    sget v0, Lcom/transsion/usercenter/R$id;->iv_update:I

    .line 106
    .line 107
    if-eq p1, v0, :cond_13

    .line 108
    .line 109
    sget v0, Lcom/transsion/usercenter/R$id;->iv_update_blank:I

    .line 110
    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_4
    sget v0, Lcom/transsion/usercenter/R$id;->iv_notice_blank:I

    .line 116
    .line 117
    if-eq p1, v0, :cond_12

    .line 118
    .line 119
    sget v0, Lcom/transsion/usercenter/R$id;->iv_notice:I

    .line 120
    .line 121
    if-ne p1, v0, :cond_5

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_5
    sget v0, Lcom/transsion/usercenter/R$id;->tv_edit:I

    .line 126
    .line 127
    if-ne p1, v0, :cond_8

    .line 128
    .line 129
    const-string p1, "editinfo"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->checkLogin()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_1a

    .line 139
    .line 140
    sget-object p1, Lcom/transsion/usercenter/edit/u;->b:Lcom/transsion/usercenter/edit/u$a;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/transsion/usercenter/edit/u$a;->a()Lcom/transsion/usercenter/edit/u;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lxu/j0;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    iget-object v0, v0, Lxu/j0;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    goto :goto_0

    .line 163
    :cond_6
    move-object v0, v2

    .line 164
    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/edit/u;->f(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_1a

    .line 172
    .line 173
    sget-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 176
    .line 177
    if-eqz v1, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_7
    invoke-virtual {v0, p1, v2}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;->a(Landroid/content/Context;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_7

    .line 187
    .line 188
    :cond_8
    sget v0, Lcom/transsion/usercenter/R$id;->iv_back:I

    .line 189
    .line 190
    if-eq p1, v0, :cond_11

    .line 191
    .line 192
    sget v0, Lcom/transsion/usercenter/R$id;->iv_back_black:I

    .line 193
    .line 194
    if-ne p1, v0, :cond_9

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_9
    sget v0, Lcom/transsion/usercenter/R$id;->iv_more:I

    .line 199
    .line 200
    const/4 v3, 0x1

    .line 201
    if-eq p1, v0, :cond_d

    .line 202
    .line 203
    sget v0, Lcom/transsion/usercenter/R$id;->iv_more_blank:I

    .line 204
    .line 205
    if-ne p1, v0, :cond_a

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_a
    sget v0, Lcom/transsion/usercenter/R$id;->tvJump:I

    .line 209
    .line 210
    if-ne p1, v0, :cond_b

    .line 211
    .line 212
    new-instance p1, Lcom/transsion/usercenter/profile/z;

    .line 213
    .line 214
    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/z;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v0, 0x0

    .line 218
    .line 219
    invoke-static {v0, v1, p1, v3, v2}, Lcom/transsion/baseui/util/d;->b(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_b
    sget v0, Lcom/transsion/usercenter/R$id;->iv_qr_code:I

    .line 225
    .line 226
    if-eq p1, v0, :cond_c

    .line 227
    .line 228
    sget v0, Lcom/transsion/usercenter/R$id;->iv_qr_code_blank:I

    .line 229
    .line 230
    if-ne p1, v0, :cond_1a

    .line 231
    .line 232
    :cond_c
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->c1()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_7

    .line 236
    .line 237
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 238
    .line 239
    if-nez p1, :cond_e

    .line 240
    .line 241
    return-void

    .line 242
    :cond_e
    new-instance p1, Liv/c;

    .line 243
    .line 244
    invoke-direct {p1}, Liv/c;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lxu/j0;

    .line 252
    .line 253
    if-eqz v0, :cond_1a

    .line 254
    .line 255
    iget-object v0, v0, Lxu/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 256
    .line 257
    if-eqz v0, :cond_1a

    .line 258
    .line 259
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 260
    .line 261
    if-eqz v2, :cond_f

    .line 262
    .line 263
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getBlockInfo()Lcom/transsion/usercenter/profile/bean/BlockInfo;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-eqz v2, :cond_f

    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/BlockInfo;->getBlock()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    :cond_f
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 274
    .line 275
    if-eqz v2, :cond_10

    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getBlockInfo()Lcom/transsion/usercenter/profile/bean/BlockInfo;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-eqz v2, :cond_10

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/bean/BlockInfo;->getBlocked()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-ne v2, v3, :cond_10

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_10
    move v3, v1

    .line 291
    :goto_2
    invoke-virtual {p1, v0, v3}, Liv/c;->g(Landroid/view/View;Z)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/transsion/usercenter/profile/ProfileFragment$d;

    .line 295
    .line 296
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/ProfileFragment$d;-><init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0}, Liv/c;->f(Lcom/transsnet/downloader/adapter/u0$b;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_11
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    if-eqz p1, :cond_1a

    .line 309
    .line 310
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_7

    .line 314
    .line 315
    :cond_12
    :goto_4
    const-string p1, "notice"

    .line 316
    .line 317
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    new-instance p1, Landroid/content/Intent;

    .line 321
    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-class v1, Lcom/transsion/usercenter/message/UserMessageActivity;

    .line 327
    .line 328
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->d:Lcom/transsion/usercenter/profile/f;

    .line 335
    .line 336
    if-eqz p1, :cond_1a

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/f;->e()V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_7

    .line 342
    .line 343
    :cond_13
    :goto_5
    const-string p1, "update"

    .line 344
    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object p1, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_14

    .line 359
    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    if-eqz p1, :cond_1a

    .line 365
    .line 366
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    new-instance v6, Lcom/transsion/usercenter/profile/ProfileFragment$onClick$2$1;

    .line 371
    .line 372
    invoke-direct {v6, p1, p0, v2}, Lcom/transsion/usercenter/profile/ProfileFragment$onClick$2$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/usercenter/profile/ProfileFragment;Lkotlin/coroutines/Continuation;)V

    .line 373
    .line 374
    .line 375
    const/4 v7, 0x3

    .line 376
    const/4 v8, 0x0

    .line 377
    const/4 v4, 0x0

    .line 378
    const/4 v5, 0x0

    .line 379
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Lxu/j0;

    .line 388
    .line 389
    if-eqz p1, :cond_15

    .line 390
    .line 391
    iget-object p1, p1, Lxu/j0;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 392
    .line 393
    if-eqz p1, :cond_15

    .line 394
    .line 395
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 396
    .line 397
    .line 398
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Lxu/j0;

    .line 403
    .line 404
    if-eqz p1, :cond_16

    .line 405
    .line 406
    iget-object p1, p1, Lxu/j0;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 407
    .line 408
    if-eqz p1, :cond_16

    .line 409
    .line 410
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    check-cast p1, Lxu/j0;

    .line 418
    .line 419
    if-eqz p1, :cond_17

    .line 420
    .line 421
    iget-object p1, p1, Lxu/j0;->t:Landroidx/appcompat/widget/AppCompatImageView;

    .line 422
    .line 423
    if-eqz p1, :cond_17

    .line 424
    .line 425
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 426
    .line 427
    .line 428
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Lxu/j0;

    .line 433
    .line 434
    if-eqz p1, :cond_1a

    .line 435
    .line 436
    iget-object p1, p1, Lxu/j0;->O:Landroid/view/View;

    .line 437
    .line 438
    if-eqz p1, :cond_1a

    .line 439
    .line 440
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_18
    :goto_6
    const-string p1, "setting"

    .line 445
    .line 446
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->e1(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    if-eqz p1, :cond_1a

    .line 454
    .line 455
    sget-object v0, Lcom/transsion/usercenter/setting/SettingActivity;->t:Lcom/transsion/usercenter/setting/SettingActivity$a;

    .line 456
    .line 457
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 458
    .line 459
    if-eqz v1, :cond_19

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ProfileInfo;->getFissionState()Lcom/transsion/usercenter/profile/bean/FissionState;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    :cond_19
    invoke-virtual {v0, p1, v2}, Lcom/transsion/usercenter/setting/SettingActivity$a;->a(Landroid/content/Context;Lcom/transsion/usercenter/profile/bean/FissionState;)V

    .line 466
    .line 467
    .line 468
    :cond_1a
    :goto_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

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
    const-string v1, "userInfo"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string v1, "userId"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object p1, v0

    .line 37
    :goto_1
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 38
    .line 39
    if-nez v1, :cond_5

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    new-instance v1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getLoginApi()Lqx/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-interface {p1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move-object p1, v0

    .line 73
    :goto_3
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 74
    .line 75
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_5

    .line 84
    :cond_6
    move-object p1, v0

    .line 85
    :goto_5
    if-eqz p1, :cond_b

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_7
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 95
    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_6

    .line 103
    :cond_8
    move-object p1, v0

    .line 104
    :goto_6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMLoginApi()Lqx/a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_a

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_a
    const/4 p1, 0x0

    .line 128
    goto :goto_8

    .line 129
    :cond_b
    :goto_7
    const/4 p1, 0x1

    .line 130
    :goto_8
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->j:Z

    .line 131
    .line 132
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 133
    .line 134
    const-string v0, "ProfileDetailBottomScene"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_c

    .line 141
    .line 142
    const-string v1, "refreshTime"

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_c

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    goto :goto_9

    .line 155
    :cond_c
    const/16 p1, 0xf

    .line 156
    .line 157
    :goto_9
    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->m:I

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lxu/j0;

    .line 164
    .line 165
    if-eqz p1, :cond_d

    .line 166
    .line 167
    iget-object p1, p1, Lxu/j0;->A:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 168
    .line 169
    if-eqz p1, :cond_d

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->setSceneId(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lxu/j0;

    .line 179
    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    iget-object p1, p1, Lxu/j0;->A:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 183
    .line 184
    if-eqz p1, :cond_e

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->initAd()V

    .line 187
    .line 188
    .line 189
    :cond_e
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMLoginApi()Lqx/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lqx/a;->j(Lqx/b;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getMHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lxu/j0;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lxu/j0;->A:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->destroy()V

    .line 40
    .line 41
    .line 42
    :cond_1
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
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->d1()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->logResume()V

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
    .locals 3

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lxu/j0;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/usercenter/profile/adapter/b;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_0
    invoke-direct {v1, p1, p0}, Lcom/transsion/usercenter/profile/adapter/b;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lxu/j0;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lxu/j0;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p1, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public onLogout()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->getLoginApi()Lqx/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

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
    iput-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->b:Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->H0()Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v1

    .line 38
    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/usercenter/profile/ProfileViewModel;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lxu/j0;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    new-instance v2, Lcom/transsion/usercenter/profile/adapter/b;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_2
    invoke-direct {v2, v1, p0}, Lcom/transsion/usercenter/profile/adapter/b;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lxu/j0;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lxu/j0;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v0, v0, Lxu/j0;->S:Landroidx/viewpager2/widget/ViewPager2;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget v1, p0, Lcom/transsion/usercenter/profile/ProfileFragment;->l:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

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
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->d1()V

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
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileFragment;->W0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->m1(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
