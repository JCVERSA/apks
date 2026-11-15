.class public final Lcom/transsion/web/fragment/WebFragmentV2;
.super Lcom/transsion/lib_web/BaseLibWebFragment;
.source "source.java"

# interfaces
.implements Lqx/b;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/web/fragment/WebFragmentV2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 s2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001tB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0005J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%JC\u0010-\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000c2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00100\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020/2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00080\u00101J\u001f\u00106\u001a\u00020\u00062\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204H\u0016\u00a2\u0006\u0004\u00086\u00107J)\u0010:\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020/2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u00109\u001a\u0004\u0018\u000108H\u0016\u00a2\u0006\u0004\u0008:\u0010;J)\u0010@\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010/2\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ5\u0010D\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010/2\u0006\u0010=\u001a\u00020B2\u0008\u0010?\u001a\u0004\u0018\u00010\u000c2\u0008\u0010C\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u0015\u0010H\u001a\u0008\u0012\u0004\u0012\u00020G0FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ+\u0010L\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010J\u001a\u00020B2\u0008\u0010K\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\r\u0010N\u001a\u00020\u0017\u00a2\u0006\u0004\u0008N\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0019\u0010Y\u001a\u0004\u0018\u00010T8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR\u0016\u0010\\\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001d\u0010b\u001a\u0004\u0018\u00010]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010_\u001a\u0004\u0008e\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u001a\u0010o\u001a\u00020\u001b8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010\u001dR\u001b\u0010r\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008p\u0010_\u001a\u0004\u0008q\u0010\u000b\u00a8\u0006u"
    }
    d2 = {
        "Lcom/transsion/web/fragment/WebFragmentV2;",
        "Lcom/transsion/lib_web/BaseLibWebFragment;",
        "Lqx/b;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "k1",
        "d1",
        "Landroid/view/View;",
        "Z0",
        "()Landroid/view/View;",
        "",
        "url",
        "j1",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "onResume",
        "onPause",
        "onDestroyView",
        "onDestroy",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "bridgeWebView",
        "b0",
        "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "requireActivity",
        "tag",
        "title",
        "",
        "contentLength",
        "originalUrl",
        "a0",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "Landroid/webkit/WebView;",
        "E0",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "F0",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "Landroid/webkit/WebResourceError;",
        "error",
        "H0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "",
        "failingUrl",
        "G0",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "",
        "Lcom/transsion/lib_web/zip/loader/c;",
        "e0",
        "()Ljava/util/List;",
        "errorCode",
        "errorMsg",
        "O0",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "h1",
        "()Z",
        "Lcom/transsion/web/share/k;",
        "o",
        "Lcom/transsion/web/share/k;",
        "mWebShareUtil",
        "Lqx/a;",
        "p",
        "Lqx/a;",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "q",
        "Z",
        "isError",
        "Lck/a;",
        "r",
        "Lkotlin/Lazy;",
        "getIDownloadApiProvider",
        "()Lck/a;",
        "iDownloadApiProvider",
        "Lkw/a;",
        "s",
        "c1",
        "()Lkw/a;",
        "iWebApi",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "t",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "mediationJsBridge",
        "u",
        "Lqi/b;",
        "getLogViewConfig",
        "logViewConfig",
        "v",
        "getNoNetworkView",
        "noNetworkView",
        "w",
        "a",
        "Web_psRelease"
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
.field public static final w:Lcom/transsion/web/fragment/WebFragmentV2$a;

.field private static final x:Ljava/lang/String;


# instance fields
.field private o:Lcom/transsion/web/share/k;

.field private final p:Lqx/a;

.field private q:Z

.field private final r:Lkotlin/Lazy;

.field private final s:Lkotlin/Lazy;

.field private t:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field private final u:Lqi/b;

.field private final v:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/web/fragment/WebFragmentV2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->w:Lcom/transsion/web/fragment/WebFragmentV2$a;

    .line 8
    .line 9
    const-class v0, Lcom/transsion/web/fragment/WebFragmentV2;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->x:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-class v1, Lqx/a;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lqx/a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->p:Lqx/a;

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/web/fragment/a;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/transsion/web/fragment/a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->r:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/web/fragment/b;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/web/fragment/b;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->s:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->newLogViewConfig()Lqi/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Lqi/b;

    .line 44
    .line 45
    new-instance v0, Lcom/transsion/web/fragment/c;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/transsion/web/fragment/c;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->v:Lkotlin/Lazy;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic Q0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->b1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic R0(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->a1(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S0(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->g1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T0(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2;->i1(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U0()Lkw/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->f1()Lkw/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic V0()Lck/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->e1()Lck/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic W0(Lcom/transsion/web/fragment/WebFragmentV2;)Lkw/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->c1()Lkw/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic X0(Lcom/transsion/web/fragment/WebFragmentV2;)Lcom/transsion/web/share/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->o:Lcom/transsion/web/share/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Y0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final Z0()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Lcom/tn/lib/view/NoNetworkBigView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/NoNetworkBigView;-><init>(Landroid/content/Context;Z)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/transsion/web/fragment/e;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsion/web/fragment/e;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/NoNetworkBigView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/transsion/web/fragment/f;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/transsion/web/fragment/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/NoNetworkBigView;->goToSetting(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private static final a1(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final b1()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final c1()Lkw/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->s:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkw/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private static final e1()Lck/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lck/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lck/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final f1()Lkw/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lkw/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkw/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final g1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->Z0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getNoNetworkView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->v:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final i1(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "resultCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final j1(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/web/fragment/WebFragmentV2;->x:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "TAG"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "mUrl:"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " onPageFinished  target:"

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "page_from"

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->isLoadSuccess()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Lqi/b;->k(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getLoad_time()Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "load_time"

    .line 104
    .line 105
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getError_code()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "error_code"

    .line 129
    .line 130
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getError_msg()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "error_msg"

    .line 150
    .line 151
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private final k1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public E0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->E0(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/transsion/web/fragment/WebFragmentV2;->j1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public F0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->F0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->q:Z

    .line 27
    .line 28
    return-void
.end method

.method public G0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/lib_web/BaseLibWebFragment;->G0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->q:Z

    .line 6
    .line 7
    return-void
.end method

.method public H0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->H0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->q:Z

    .line 16
    .line 17
    return-void
.end method

.method public O0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->O0(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lqi/b;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 15
    .line 16
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->k1()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public a0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    const-string p3, "requireActivity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "tag"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "originalUrl"

    .line 12
    .line 13
    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    .line 1
    const-string v0, "bridgeWebView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$b;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/transsion/web/fragment/WebFragmentV2$b;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "AthenaNative"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/transsion/web/api/WebJavascriptNavigator;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/transsion/web/api/WebJavascriptNavigator;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "yy_navigator"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;

    .line 35
    .line 36
    invoke-direct {v1, p0, v0}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "WebViewJavascriptBridge"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;-><init>(Landroid/webkit/WebView;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 50
    .line 51
    const-string v1, "HisavanaAdJsBridge"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public e0()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$c;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/transsion/web/fragment/WebFragmentV2$c;-><init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Lqi/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
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
    const-string v3, "snifferh5page"

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

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "networkCapabilities"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lqi/b;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->q:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->d1()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "original_url"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "tab_code"

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->p:Lqx/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lqx/a;->j(Lqx/b;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->onHiddenChanged(Z)V

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
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->b(Lcom/transsion/baselib/report/g;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->c(Lcom/transsion/baselib/report/g;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLogout()V
    .locals 0

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->i0()Lcom/transsion/lib_web/zip/loader/d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/lib_web/zip/loader/d;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "is_from_cache"

    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lqi/b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getDom_performance()Lcom/transsion/lib_web/domain/DomPerformance;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "dom"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->b(Lcom/transsion/baselib/report/g;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->c(Lcom/transsion/baselib/report/g;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqx/b$a;->c(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    new-instance p1, Lcom/transsion/web/share/k;

    .line 20
    .line 21
    new-instance p2, Lcom/transsion/web/fragment/d;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/transsion/web/fragment/d;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0, p2}, Lcom/transsion/web/share/k;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->o:Lcom/transsion/web/share/k;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->p:Lqx/a;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lqx/a;->e(Lqx/b;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
