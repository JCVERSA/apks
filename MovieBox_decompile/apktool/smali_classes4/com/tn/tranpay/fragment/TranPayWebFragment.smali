.class public final Lcom/tn/tranpay/fragment/TranPayWebFragment;
.super Lcom/tn/tranpay/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/NetworkUtils$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/fragment/TranPayWebFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tn/tranpay/fragment/BaseFragment<",
        "Lrg/c;",
        ">;",
        "Lcom/blankj/utilcode/util/NetworkUtils$a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 W2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001XB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u0019\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0005J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010)\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010.\u001a\u00020\u00082\u0008\u0010\'\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00101R\u0018\u0010>\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00101R\u0016\u0010A\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R\u0016\u0010D\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010@R4\u0010J\u001a\"\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F0Ej\u0010\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F`G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010L\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010@R\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010V\u001a\u00020!8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010#\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/tn/tranpay/fragment/TranPayWebFragment;",
        "Lcom/tn/tranpay/fragment/BaseFragment;",
        "Lrg/c;",
        "Lcom/blankj/utilcode/util/NetworkUtils$a;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "o0",
        "(Landroid/view/LayoutInflater;)Lrg/c;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "onDestroyView",
        "onDestroy",
        "Lcom/tn/tranpay/report/c;",
        "V",
        "()Lcom/tn/tranpay/report/c;",
        "onDisconnected",
        "Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;",
        "networkType",
        "k",
        "(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V",
        "",
        "u0",
        "()Z",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "initViewModel",
        "t0",
        "(Landroid/view/View;)V",
        "url",
        "from",
        "l0",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "isBackPressed",
        "p0",
        "(Z)V",
        "v0",
        "(Ljava/lang/String;)V",
        "d",
        "Ljava/lang/String;",
        "strTitle",
        "Landroid/view/ViewGroup;",
        "e",
        "Landroid/view/ViewGroup;",
        "webLoading",
        "Landroid/webkit/WebView;",
        "f",
        "Landroid/webkit/WebView;",
        "mCustomWebView",
        "g",
        "mUrl",
        "h",
        "mCpFontPage",
        "i",
        "Z",
        "mShouldOpenCpFrontPage",
        "j",
        "isError",
        "isPayCancel",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "l",
        "Ljava/util/HashMap;",
        "timer",
        "m",
        "isTriggerFinishPage",
        "Landroid/webkit/WebChromeClient;",
        "n",
        "Landroid/webkit/WebChromeClient;",
        "mWebChromeClient",
        "Landroid/webkit/WebViewClient;",
        "o",
        "Landroid/webkit/WebViewClient;",
        "mWebViewClient",
        "n0",
        "resultPageUrl",
        "p",
        "a",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final p:Lcom/tn/tranpay/fragment/TranPayWebFragment$a;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Ljava/util/HashMap;

.field private m:Z

.field private n:Landroid/webkit/WebChromeClient;

.field private o:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/tranpay/fragment/TranPayWebFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/tranpay/fragment/TranPayWebFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->p:Lcom/tn/tranpay/fragment/TranPayWebFragment$a;

    .line 8
    .line 9
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "https://cashier-serverweb.paynicorn.com/result"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "https://cashier-serverweb-test.paynicorn.com/result"

    .line 21
    .line 22
    :goto_0
    sput-object v1, Lcom/tn/tranpay/fragment/TranPayWebFragment;->q:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->u()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "https://cashier-serverweb.paynicorn.com/api/cancelPay"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v0, "https://cashier-serverweb-test.paynicorn.com/api/cancelPay"

    .line 34
    .line 35
    :goto_1
    sput-object v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->r:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->d:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->i:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n:Landroid/webkit/WebChromeClient;

    .line 24
    .line 25
    new-instance v0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->o:Landroid/webkit/WebViewClient;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic X(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->q0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->r0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->s0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->e:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "javaClass.simpleName"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final synthetic h0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->v0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initViewModel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "url"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v1, "cpFrontPage"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->h:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string v2, "shouldOpenCpFrontPage"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v0, v1

    .line 50
    :goto_1
    iput-boolean v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->i:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "\\/"

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    array-length v2, v0

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    move v2, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/4 v2, 0x0

    .line 68
    :goto_2
    if-nez v2, :cond_5

    .line 69
    .line 70
    array-length v2, v0

    .line 71
    sub-int/2addr v2, v1

    .line 72
    aget-object v0, v0, v2

    .line 73
    .line 74
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->d:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lrg/c;

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    iget-object v1, v1, Lrg/c;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public static final synthetic j0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final l0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Llh/a;->a:Llh/a;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " --> mWebViewClient --> checkUrl() --> from = "

    .line 26
    .line 27
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, " --> url = "

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v7, " --> resultPageUrl = "

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x2

    .line 55
    invoke-static {v3, v5, v6, v8, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v5, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m:Z

    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, " --> mWebViewClient --> isTriggerFinishPage = "

    .line 80
    .line 81
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v3, v1, v6, v8, v6}, Llh/a;->c(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return v9

    .line 107
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n0()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-static {v1, v5, v7, v8, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_4

    .line 117
    .line 118
    iget-boolean v5, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->i:Z

    .line 119
    .line 120
    const-string v10, "T::class.java.name"

    .line 121
    .line 122
    const-class v11, Lcom/tn/tranpay/event/b;

    .line 123
    .line 124
    const-class v12, Lcom/tn/tranpay/event/FlowEventBus;

    .line 125
    .line 126
    const-string v13, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()"

    .line 127
    .line 128
    const-wide/16 v14, 0x0

    .line 129
    .line 130
    if-eqz v5, :cond_2

    .line 131
    .line 132
    iput-boolean v9, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m:Z

    .line 133
    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v5, " --> mWebViewClient --> checkUrl() -- shouldOpenCpFrontPage --> result --> from = "

    .line 147
    .line 148
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v3, v1, v6, v8, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/tn/tranpay/event/b;

    .line 168
    .line 169
    invoke-direct {v1, v7}, Lcom/tn/tranpay/event/b;-><init>(I)V

    .line 170
    .line 171
    .line 172
    sget-object v2, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/tn/tranpay/event/a;->c()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_1

    .line 179
    .line 180
    invoke-static {v3, v13, v6, v8, v6}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_1
    sget-object v2, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 185
    .line 186
    invoke-virtual {v2, v12}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Lcom/tn/tranpay/event/FlowEventBus;

    .line 191
    .line 192
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3, v1, v14, v15}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 200
    .line 201
    .line 202
    :goto_0
    return v7

    .line 203
    :cond_2
    iput-boolean v9, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m:Z

    .line 204
    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v5, " --> mWebViewClient --> checkUrl() -- shouldNotOpenCpFrontPage --> result --> from = "

    .line 218
    .line 219
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v3, v1, v6, v8, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/tn/tranpay/event/b;

    .line 239
    .line 240
    invoke-direct {v1, v7}, Lcom/tn/tranpay/event/b;-><init>(I)V

    .line 241
    .line 242
    .line 243
    sget-object v2, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/tn/tranpay/event/a;->c()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_3

    .line 250
    .line 251
    invoke-static {v3, v13, v6, v8, v6}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_3
    sget-object v2, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 256
    .line 257
    invoke-virtual {v2, v12}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/tn/tranpay/event/FlowEventBus;

    .line 262
    .line 263
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3, v1, v14, v15}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 271
    .line 272
    .line 273
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->f()Landroid/os/Handler;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    new-instance v2, Lcom/tn/tranpay/fragment/k;

    .line 278
    .line 279
    invoke-direct {v2, v0}, Lcom/tn/tranpay/fragment/k;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 280
    .line 281
    .line 282
    const-wide/16 v3, 0x190

    .line 283
    .line 284
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    .line 286
    .line 287
    const/4 v9, 0x1

    .line 288
    goto :goto_2

    .line 289
    :cond_4
    sget-object v5, Lcom/tn/tranpay/fragment/TranPayWebFragment;->r:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v1, v5, v7, v8, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_6

    .line 296
    .line 297
    const/4 v5, 0x1

    .line 298
    iput-boolean v5, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m:Z

    .line 299
    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v5, " --> mWebViewClient --> checkUrl() --> cancel --> from = "

    .line 313
    .line 314
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v3, v1, v6, v8, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    iput-boolean v1, v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->k:Z

    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-eqz v2, :cond_5

    .line 341
    .line 342
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 343
    .line 344
    .line 345
    :cond_5
    move v9, v1

    .line 346
    goto :goto_2

    .line 347
    :cond_6
    move v9, v7

    .line 348
    :goto_2
    return v9
.end method

.method private static final m0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final n0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    if-nez v1, :cond_2

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_2
    if-nez v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->q:Ljava/lang/String;

    .line 22
    .line 23
    :cond_3
    return-object v0
.end method

.method private final p0(Z)V
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
    sget-object v1, Llh/a;->a:Llh/a;

    .line 8
    .line 9
    const-string v2, "\u7528\u6237\u5173\u95ed\u4e86 TranPayWebFragment"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v2, v4, v3, v4}, Llh/a;->c(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method private static final q0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final r0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->p0(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final s0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->p0(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final t0(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lrg/c;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lrg/c;->b:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x2

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, p1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    new-instance v9, Lcom/tn/tranpay/fragment/TranPayWebFragment$initWeb$1$1$1;

    .line 63
    .line 64
    invoke-direct {v9, v3, v2}, Lcom/tn/tranpay/fragment/TranPayWebFragment$initWeb$1$1$1;-><init>(Landroid/webkit/WebSettings;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x3

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 75
    .line 76
    .line 77
    const/16 v5, 0x64

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 104
    .line 105
    .line 106
    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 107
    .line 108
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 121
    .line 122
    .line 123
    const-string v5, "utf-8"

    .line 124
    .line 125
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/16 v5, 0x10

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 131
    .line 132
    .line 133
    const/16 v5, 0xc

    .line 134
    .line 135
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->n:Landroid/webkit/WebChromeClient;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->o:Landroid/webkit/WebViewClient;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_1

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_1

    .line 184
    .line 185
    const-string v4, "url"

    .line 186
    .line 187
    iget-object v5, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 188
    .line 189
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lrg/c;

    .line 197
    .line 198
    if-eqz v3, :cond_2

    .line 199
    .line 200
    iget-object v3, v3, Lrg/c;->f:Landroid/widget/ProgressBar;

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_2
    move-object v3, v2

    .line 204
    :goto_0
    if-nez v3, :cond_3

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :goto_1
    sget-object v1, Llh/a;->a:Llh/a;

    .line 211
    .line 212
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 217
    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, " --> initWeb() --> WebView\u521d\u59cb\u5316\u5b8c\u6210 --> mCustomWebView?.loadUrl(it) \u5f00\u59cb\u52a0\u8f7d\u6536\u94f6\u53f0 -- url = "

    .line 227
    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v1, v3, v2, p1, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 242
    .line 243
    if-eqz p1, :cond_4

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void
.end method

.method private final v0(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Long;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide v2, v0

    .line 29
    :goto_0
    sub-long v2, v0, v2

    .line 30
    .line 31
    sget-object p1, Llh/a;->a:Llh/a;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, " --> pageFinish() --> mUrl = "

    .line 48
    .line 49
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " -- used time = "

    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static {p1, v4, v6, v5, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v4, "duration"

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 94
    .line 95
    const-string v2, "on_create"

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    check-cast p1, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    sub-long/2addr v0, v7

    .line 119
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/report/c;->j(Z)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void
.end method


# virtual methods
.method public V()Lcom/tn/tranpay/report/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/tn/tranpay/report/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "web_page"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tn/tranpay/report/c;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->o0(Landroid/view/LayoutInflater;)Lrg/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lrg/c;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p2, Lrg/c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "on_create"

    .line 31
    .line 32
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lrg/c;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iget-object p2, p2, Lrg/c;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/tn/tranpay/fragment/h;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/h;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lrg/c;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    iget-object p2, p2, Lrg/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    new-instance v0, Lcom/tn/tranpay/fragment/i;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/i;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lrg/c;

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    iget-object p2, p2, Lrg/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    new-instance v0, Lcom/tn/tranpay/fragment/j;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/j;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lrg/c;

    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p2, p2, Lrg/c;->j:Lrg/d;

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    iget-object p2, p2, Lrg/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const/4 p2, 0x0

    .line 111
    :goto_0
    iput-object p2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->e:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Lrg/c;

    .line 118
    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    iget-object p2, p2, Lrg/c;->f:Landroid/widget/ProgressBar;

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/tn/tranpay/e;->d()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->initViewModel()V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->t0(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Lcom/blankj/utilcode/util/NetworkUtils;->w(Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public k(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->j:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public o0(Landroid/view/LayoutInflater;)Lrg/c;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lrg/c;->c(Landroid/view/LayoutInflater;)Lrg/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(inflater)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tn/tranpay/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Llh/a;->a:Llh/a;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " --> onCreate()"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {p1, v0, v1, v2, v1}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/blankj/utilcode/util/NetworkUtils;->A(Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->k:Z

    .line 8
    .line 9
    const-string v1, "T::class.java.name"

    .line 10
    .line 11
    const-class v2, Lcom/tn/tranpay/event/b;

    .line 12
    .line 13
    const-class v3, Lcom/tn/tranpay/event/FlowEventBus;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const-string v5, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()"

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lcom/tn/tranpay/event/b;

    .line 24
    .line 25
    const/4 v9, -0x1

    .line 26
    invoke-direct {v0, v9}, Lcom/tn/tranpay/event/b;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sget-object v9, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 30
    .line 31
    invoke-virtual {v9}, Lcom/tn/tranpay/event/a;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-nez v9, :cond_0

    .line 36
    .line 37
    sget-object v0, Llh/a;->a:Llh/a;

    .line 38
    .line 39
    invoke-static {v0, v5, v8, v4, v8}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v4, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/tn/tranpay/event/FlowEventBus;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2, v0, v6, v7}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/tn/tranpay/event/b;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    invoke-direct {v0, v9}, Lcom/tn/tranpay/event/b;-><init>(I)V

    .line 66
    .line 67
    .line 68
    sget-object v9, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 69
    .line 70
    invoke-virtual {v9}, Lcom/tn/tranpay/event/a;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_2

    .line 75
    .line 76
    sget-object v0, Llh/a;->a:Llh/a;

    .line 77
    .line 78
    invoke-static {v0, v5, v8, v4, v8}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v4, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/tn/tranpay/event/FlowEventBus;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2, v0, v6, v7}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/tn/tranpay/fragment/BaseFragment;->onDestroyView()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public final u0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f:Landroid/webkit/WebView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :cond_1
    :goto_0
    return v1
.end method
