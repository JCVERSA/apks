.class public abstract Lcom/transsion/lib_web/BaseLibWebFragment;
.super Landroidx/fragment/app/Fragment;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/BaseLibWebFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001yB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001f\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00052\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0004J\u0019\u0010\'\u001a\u00020\u00082\u0008\u0010&\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0018\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\r\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010/\u001a\u00020\u00052\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u0008/\u00100J-\u00106\u001a\u0004\u0018\u0001052\u0006\u00102\u001a\u0002012\u0008\u00104\u001a\u0004\u0018\u0001032\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u00086\u00107J!\u00109\u001a\u00020\u00052\u0006\u00108\u001a\u0002052\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0004J\u000f\u0010<\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0004J\u001f\u0010A\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=2\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ\u000f\u0010C\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0004J\u0017\u0010E\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\rH&\u00a2\u0006\u0004\u0008E\u0010\u0010JC\u0010M\u001a\u00020\u00052\u0006\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\u00182\u0008\u0010I\u001a\u0004\u0018\u00010\u00182\u0006\u0010K\u001a\u00020J2\u0006\u0010L\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008O\u0010*J)\u0010R\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010&\u001a\u00020\u00182\u0008\u0010Q\u001a\u0004\u0018\u00010PH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u001f\u0010T\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010&\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\'\u0010Z\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010W\u001a\u00020V2\u0006\u0010Y\u001a\u00020XH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J5\u0010^\u001a\u00020\u00052\u0008\u00108\u001a\u0004\u0018\u00010!2\u0006\u0010W\u001a\u00020\u001d2\u0008\u0010\\\u001a\u0004\u0018\u00010\u00182\u0008\u0010]\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008^\u0010_J)\u0010a\u001a\u00020\u00052\u0008\u00108\u001a\u0004\u0018\u00010!2\u0006\u0010W\u001a\u00020V2\u0006\u0010\\\u001a\u00020`H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ\u001f\u0010c\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010I\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008c\u0010UJ\u001f\u0010e\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010d\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ#\u0010i\u001a\u00020\u00052\u0008\u00108\u001a\u0004\u0018\u0001052\u0008\u0010h\u001a\u0004\u0018\u00010gH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\u000f\u0010k\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008k\u0010\u0004J!\u0010m\u001a\u00020\u00052\u0008\u0010&\u001a\u0004\u0018\u00010\u00182\u0006\u0010l\u001a\u00020JH\u0016\u00a2\u0006\u0004\u0008m\u0010nJ+\u0010o\u001a\u00020\u00052\u0008\u0010&\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0015\u0010s\u001a\u0008\u0012\u0004\u0012\u00020r0qH\u0016\u00a2\u0006\u0004\u0008s\u0010tJ\u000f\u0010u\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008u\u0010\u0004J\u0017\u0010w\u001a\u00020\u00052\u0006\u0010v\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008w\u0010\u000bR\u0018\u0010{\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0086.\u00a2\u0006\u0015\n\u0004\u0008}\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R,\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R)\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001\u001a\u0005\u0008\u008e\u0001\u0010*\"\u0005\u0008\u008f\u0001\u0010\u001bR*\u0010\u0098\u0001\u001a\u00030\u0091\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001d\u0010\u009e\u0001\u001a\u00030\u0099\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u001b\u0010\u00a1\u0001\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0019\u0010\u00a4\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u001b\u0010\u00a7\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0019\u0010\u00a9\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a3\u0001R\'\u0010\u00ae\u0001\u001a\u00020\r8\u0006@\u0006X\u0086.\u00a2\u0006\u0016\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0005\u0008\u00ac\u0001\u0010,\"\u0005\u0008\u00ad\u0001\u0010\u0010R)\u0010\u00b5\u0001\u001a\u00020J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u001d\u0010\u00bb\u0001\u001a\u00030\u00b6\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u0018\u0010\u00bd\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bc\u0001\u0010\u0013\u00a8\u0006\u00be\u0001"
    }
    d2 = {
        "Lcom/transsion/lib_web/BaseLibWebFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lyg/m;",
        "<init>",
        "()V",
        "",
        "initListener",
        "n0",
        "",
        "isHideToolBar",
        "m0",
        "(Z)V",
        "t0",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "webView",
        "r0",
        "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V",
        "u0",
        "K0",
        "Z",
        "v0",
        "z0",
        "()Z",
        "s0",
        "",
        "string",
        "c0",
        "(Ljava/lang/String;)V",
        "errorMsg",
        "",
        "errorCode",
        "l0",
        "(Ljava/lang/String;I)V",
        "Landroid/webkit/WebView;",
        "view1",
        "w0",
        "(Landroid/webkit/WebView;)V",
        "y0",
        "url",
        "x0",
        "(Ljava/lang/String;)Z",
        "getClassTag",
        "()Ljava/lang/String;",
        "k0",
        "()Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "onDestroy",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "onDisconnected",
        "bridgeWebView",
        "b0",
        "Landroidx/fragment/app/FragmentActivity;",
        "requireActivity",
        "tag",
        "title",
        "",
        "contentLength",
        "originalUrl",
        "a0",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "j0",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "F0",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "E0",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "Landroid/webkit/WebResourceResponse;",
        "errorResponse",
        "I0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V",
        "error",
        "failingUrl",
        "G0",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceError;",
        "H0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "C0",
        "newProgress",
        "B0",
        "(Landroid/webkit/WebView;I)V",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "callback",
        "D0",
        "(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V",
        "A0",
        "loadTime",
        "P0",
        "(Ljava/lang/String;J)V",
        "O0",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "",
        "Lcom/transsion/lib_web/zip/loader/c;",
        "e0",
        "()Ljava/util/List;",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "Landroid/widget/FrameLayout;",
        "a",
        "Landroid/widget/FrameLayout;",
        "fullscreenContainer",
        "Lrl/a;",
        "b",
        "Lrl/a;",
        "d0",
        "()Lrl/a;",
        "J0",
        "(Lrl/a;)V",
        "binding",
        "Lcom/transsion/lib_web/zip/loader/d;",
        "c",
        "Lcom/transsion/lib_web/zip/loader/d;",
        "i0",
        "()Lcom/transsion/lib_web/zip/loader/d;",
        "setMWebViewLoaderManager",
        "(Lcom/transsion/lib_web/zip/loader/d;)V",
        "mWebViewLoaderManager",
        "d",
        "Ljava/lang/String;",
        "getStrTitle",
        "N0",
        "strTitle",
        "Lcom/transsion/lib_web/domain/LoadStatus;",
        "e",
        "Lcom/transsion/lib_web/domain/LoadStatus;",
        "getCurrentState",
        "()Lcom/transsion/lib_web/domain/LoadStatus;",
        "setCurrentState",
        "(Lcom/transsion/lib_web/domain/LoadStatus;)V",
        "currentState",
        "Lcom/transsion/lib_web/LoadUrlData;",
        "f",
        "Lcom/transsion/lib_web/LoadUrlData;",
        "g0",
        "()Lcom/transsion/lib_web/LoadUrlData;",
        "loadUrlData",
        "g",
        "Landroid/view/View;",
        "webCustomView",
        "h",
        "I",
        "originalSystemUiVisibility",
        "i",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "customViewCallback",
        "j",
        "originalOrientation",
        "k",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "h0",
        "M0",
        "mWebView",
        "l",
        "J",
        "getFirstLoadStartTime",
        "()J",
        "setFirstLoadStartTime",
        "(J)V",
        "firstLoadStartTime",
        "Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "m",
        "Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "f0",
        "()Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "loadInfoStats",
        "n",
        "isAlreadyLoadUrl",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field public b:Lrl/a;

.field private c:Lcom/transsion/lib_web/zip/loader/d;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/lib_web/domain/LoadStatus;

.field private final f:Lcom/transsion/lib_web/LoadUrlData;

.field private g:Landroid/view/View;

.field private h:I

.field private i:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private j:I

.field public k:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field private l:J

.field private final m:Lcom/transsion/lib_web/domain/LoadInfoStats;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->INIT:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/lib_web/LoadUrlData;

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/lib_web/download_render/utils/RenderSource;->INNER:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v3, v1, v2, v3}, Lcom/transsion/lib_web/LoadUrlData;-><init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:I

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 32
    .line 33
    return-void
.end method

.method private final K0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lpl/a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lpl/a;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final L0(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->z0()Z

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
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ".apk"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    const-string v0, ".APK"

    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    const-string v0, "application/vnd.android.package-archive"

    .line 31
    .line 32
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string p2, "requireActivity(...)"

    .line 44
    .line 45
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    const-string p2, ""

    .line 57
    .line 58
    :cond_2
    move-object v8, p2

    .line 59
    const-string v3, "web_load"

    .line 60
    .line 61
    move-object v1, p0

    .line 62
    move-object v4, p1

    .line 63
    move-wide v6, p5

    .line 64
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/lib_web/BaseLibWebFragment;->a0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_0
    sget-object p0, Lpl/h;->a:Lpl/h;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "\u62e6\u622aAPK\u4e0b\u8f7d --> mimetype = "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p4, " --> url = "

    .line 84
    .line 85
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " --> contentLength = "

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " --> contentDisposition = "

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " --> userAgent = "

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static synthetic V(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->q0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->p0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/lib_web/BaseLibWebFragment;->L0(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Z(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/lib_web/BaseLibWebFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p1, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$b;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->SUCCESS:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->P0(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final initListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lrl/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    new-instance v1, Lpl/b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lpl/b;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lrl/a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    new-instance v1, Lpl/c;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lpl/c;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lrl/a;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    new-instance v1, Lpl/d;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lpl/d;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final l0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->FAILED:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->O0(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final m0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lrl/a;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lrl/a;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private final n0()V
    .locals 8

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
    const-string v2, "tool_status_bar_hidden"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v3, "tool_bar_hidden"

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v2, v1

    .line 30
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const-string v4, "bottom_margin"

    .line 37
    .line 38
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v3, v1

    .line 44
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    const-string v5, "nested_scroll_intercept"

    .line 51
    .line 52
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move v4, v1

    .line 58
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lrl/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    xor-int/lit8 v7, v0, 0x1

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 69
    .line 70
    .line 71
    if-lez v3, :cond_4

    .line 72
    .line 73
    iget-object v6, v5, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const-string v7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 80
    .line 81
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 85
    .line 86
    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    .line 88
    iget-object v5, v5, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    if-eqz v4, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v5, Lcom/transsion/lib_web/BaseLibWebFragment$c;

    .line 100
    .line 101
    invoke-direct {v5, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$c;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    sget-object v4, Lpl/e;->a:Lpl/e;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Lpl/e;->a(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v2, :cond_7

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    move v5, v1

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 125
    :goto_5
    invoke-direct {p0, v5}, Lcom/transsion/lib_web/BaseLibWebFragment;->m0(Z)V

    .line 126
    .line 127
    .line 128
    sget-object v5, Lpl/h;->a:Lpl/h;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->getClassTag()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v6, " --> initLayout() --> statusBarHide = "

    .line 143
    .line 144
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, " --> isFieldToolBarHidden = "

    .line 151
    .line 152
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " -- bottomMargin = "

    .line 159
    .line 160
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " --> hideNavigationBar = "

    .line 167
    .line 168
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v5, v0}, Lpl/h;->c(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    const-string v2, "need_header"

    .line 188
    .line 189
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    goto :goto_6

    .line 194
    :cond_8
    move v0, v1

    .line 195
    :goto_6
    if-eqz v0, :cond_b

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget-object v0, v0, Lrl/a;->g:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const/high16 v3, 0x42a00000    # 80.0f

    .line 208
    .line 209
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-eqz v2, :cond_9

    .line 220
    .line 221
    const-string v3, "header_GB"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    goto :goto_7

    .line 228
    :cond_9
    move v2, v1

    .line 229
    :goto_7
    if-eqz v2, :cond_a

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    .line 233
    .line 234
    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    :cond_b
    return-void
.end method

.method private static final o0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
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

.method private static final p0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final q0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setReload(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final r0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$d;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$d;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final s0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$a;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "MBPreDownloadAndroidInterface"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final t0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->s0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->r0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->u0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->K0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->v0()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/transsion/lib_web/BaseLibWebFragment$e;

    .line 55
    .line 56
    invoke-direct {v2, p0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment$e;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "MbOkSpinJsBridge"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h()Lcom/transsion/lib_web/download_render/d;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lcom/transsion/lib_web/download_render/d;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->x0(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 97
    .line 98
    const-string v1, "initWebView() --> \u61d2\u52a0\u8f7d\uff0c\u4e0d\u6267\u884c\u52a0\u8f7d\u6570\u636e\u64cd\u4f5c"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->y0()V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method private final u0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$f;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment$f;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final v0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lsl/b;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lsl/b;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lsl/d;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 17
    .line 18
    invoke-direct {v2, v0, v3}, Lsl/d;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lsl/a;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 24
    .line 25
    invoke-direct {v3, v0, v4}, Lsl/a;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lsl/c;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 31
    .line 32
    invoke-direct {v4, v0, v5}, Lsl/c;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    new-array v5, v5, [Lcom/transsion/lib_web/zip/loader/c;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    aput-object v1, v5, v6

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    aput-object v2, v5, v1

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aput-object v3, v5, v1

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    aput-object v4, v5, v1

    .line 49
    .line 50
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->e0()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Collection;

    .line 59
    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    sget-object v2, Lpl/h;->a:Lpl/h;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v5, "<initWebViewFileCacheLoader> loaders.size:"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "DR_"

    .line 87
    .line 88
    invoke-virtual {v2, v4, v3}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/transsion/lib_web/zip/loader/d;

    .line 92
    .line 93
    invoke-direct {v2, v0, v1}, Lcom/transsion/lib_web/zip/loader/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->c:Lcom/transsion/lib_web/zip/loader/d;

    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method private final w0(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "\n              (function() {\n                window.addEventListener(\'load\',\n                function() {\n                    try {\n                        const intervalId = setInterval(function() {\n                            var timing = window.performance.timing;\n                            if (timing.loadEventEnd <= 0) {\n                                console.log(timing.loadEventEnd);\n                                return;\n                            }\n            \n                            var stats = {\n                                // \u57fa\u672c\u52a0\u8f7d\u65f6\u95f4\n                                dnsLookup: timing.domainLookupEnd - timing.domainLookupStart,\n                                tcpConnect: timing.connectEnd - timing.connectStart,\n                                requestTime: timing.responseStart - timing.requestStart,\n                                responseTime: timing.responseEnd - timing.responseStart,\n            \n                                // DOM\u76f8\u5173\u65f6\u95f4\n                                domLoading: timing.domLoading - timing.navigationStart,\n                                domInteractive: timing.domInteractive - timing.navigationStart,\n                                domComplete: timing.domComplete - timing.navigationStart,\n            \n                                // \u6574\u4f53\u52a0\u8f7d\u65f6\u95f4\n                                loadEventTime: timing.loadEventEnd - timing.loadEventStart,\n                                totalLoadTime: timing.loadEventEnd - timing.navigationStart,\n            \n                                // \u52a0\u8f7d\u72b6\u6001\n                                readyState: document.readyState,\n                                success: document.readyState === \'complete\'\n                            };\n                            clearInterval(intervalId)\n                            console.log(timing.loadEventEnd)\n                            console.warn(JSON.stringify(stats))\n                            // \u5982\u679c\u6709Android\u63a5\u53e3\u53ef\u7528\uff0c\u5219\u901a\u8fc7\u63a5\u53e3\u62a5\u544a\n                            if (window.MBPreDownloadAndroidInterface) {\n                                window.MBPreDownloadAndroidInterface.reportLoadStats(JSON.stringify(stats));\n                            } else {\n                                console.warn(window.MBPreDownloadAndroidInterface);\n                                console.warn(stats);\n                            }\n            \n                        },\n                        1000);\n                    } catch(e) {\n                        if (window.MBPreDownloadAndroidInterface) {\n                            window.MBPreDownloadAndroidInterface.reportLoadError(e.message);\n                        } else {\n                            console.error(\'Error collecting load stats:\', e);\n                        }\n                    }\n                })\n            \n            })()\n            "

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private final x0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "parse(this)"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "is_lazy_load"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string v1, "true"

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v2, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    :goto_1
    return v0

    .line 53
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method private final y0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 6
    .line 7
    const-string v1, "loadUrl() --> \u5df2\u7ecf\u52a0\u8f7d\u8fc7\u4e86\uff0c\u4e0d\u518d\u91cd\u590d\u52a0\u8f7d"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->n:Z

    .line 15
    .line 16
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "loadUrl() --> \u52a0\u8f7d\u9875\u9762 --> url = "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final z0()Z
    .locals 3

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
    const-string v2, "load_url_only"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    return v1
.end method


# virtual methods
.method public A0()V
    .locals 4

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
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Landroid/view/View;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public B0(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lrl/a;->f:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    const/16 p2, 0x8

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lrl/a;->f:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public C0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "title"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lrl/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_5

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->h:I

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:I

    .line 51
    .line 52
    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of p2, p1, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    check-cast p1, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    :goto_0
    new-instance p2, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    const/high16 v1, -0x1000000

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Landroid/view/View;

    .line 81
    .line 82
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .line 84
    const/4 v3, -0x1

    .line 85
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object p2, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x6

    .line 117
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    return-void
.end method

.method public E0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "onWebViewClientPageFinished "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lpl/h;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 34
    .line 35
    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 36
    .line 37
    if-ne p1, v0, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->c0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public F0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const-string p3, "view"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "url"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p3, Lpl/h;->a:Lpl/h;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "onWebViewClientPageStarted "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p3, p2}, Lpl/h;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide p2

    .line 41
    iput-wide p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:J

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->w0(Landroid/webkit/WebView;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public G0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 2
    .line 3
    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p2, "WebResourceError: "

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, -0x1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public H0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    const-string p1, "request"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 12
    .line 13
    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public I0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "request"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "errorResponse"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p0, p2, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->l0(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final J0(Lrl/a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->b:Lrl/a;

    .line 7
    .line 8
    return-void
.end method

.method public final M0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->k:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 7
    .line 8
    return-void
.end method

.method public final N0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public O0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "trackError --> errorCode = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " --> url = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " --> errorMsg = "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setError_code(Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setError_msg(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public P0(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "trackEvent --> loadTime = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " --> url = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lpl/h;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 32
    .line 33
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setLoad_time(Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 41
    .line 42
    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->SUCCESS:Lcom/transsion/lib_web/domain/LoadStatus;

    .line 43
    .line 44
    if-ne p1, p2, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setLoadSuccess(Z)V

    .line 50
    .line 51
    .line 52
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

.method public abstract b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end method

.method public final d0()Lrl/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->b:Lrl/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public e0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f0()Lcom/transsion/lib_web/domain/LoadInfoStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Lcom/transsion/lib_web/LoadUrlData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getSimpleName(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final h0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->k:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mWebView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final i0()Lcom/transsion/lib_web/zip/loader/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->c:Lcom/transsion/lib_web/zip/loader/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public j0()Ljava/lang/String;
    .locals 2

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
    return-object v0
.end method

.method public final k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onConnected()V
    .locals 0

    .line 2
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lql/a;->a:Lql/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Lql/a;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->M0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lrl/a;->c(Landroid/view/LayoutInflater;)Lrl/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->J0(Lrl/a;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lrl/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/a;->n()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h()Lcom/transsion/lib_web/download_render/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/transsion/lib_web/download_render/d;->b()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lyg/l;->m(Lyg/m;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->getClassTag()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " --> onDestroy()"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lpl/h;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lql/a;->a:Lql/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->k0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lql/a;->a(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->y0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->y0()V

    .line 5
    .line 6
    .line 7
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0()Lrl/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lrl/a;->i:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->initListener()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->t0()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lyg/l;->l(Lyg/m;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
