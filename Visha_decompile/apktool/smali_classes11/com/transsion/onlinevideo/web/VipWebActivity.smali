.class public Lcom/transsion/onlinevideo/web/VipWebActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# static fields
.field public static final m0:Ljava/lang/String;

.field public static final n0:Ljava/lang/String;

.field public static final o0:Ljava/lang/String;

.field public static p0:I


# instance fields
.field public N:Lcom/just/agentweb/jsbridge/BridgeWebView;

.field public O:I

.field public P:I

.field public Q:J

.field public R:Ljava/lang/String;

.field public S:Lpe0;

.field public T:Lcom/transsion/onlinevideo/web/VipViewModel;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Landroid/widget/SeekBar;

.field public a0:Ljava/lang/String;

.field public b0:Ljava/util/Map;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:I

.field public g0:Landroid/view/View;

.field public h0:Landroid/widget/LinearLayout;

.field public i0:Landroid/view/View;

.field public j0:Z

.field public k0:Landroid/widget/TextView;

.field public l0:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->createBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->m0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#/result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/onlinevideo/web/VipWebActivity;->n0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/#/order"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->o0:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->b0:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->j0:Z

    new-instance v0, Lcom/transsion/onlinevideo/web/VipWebActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/web/VipWebActivity$1;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->l0:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->W0(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->X0(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    return-void
.end method

.method public static bridge synthetic C0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->b1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->f1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/onlinevideo/web/VipWebActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->g1()V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->h1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V

    return-void
.end method

.method public static I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "page"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "vip_id"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "title"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "from"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static J0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/web/VipWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "page"

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "title"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static K0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "vip_card_id"

    invoke-virtual {p0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method private O0()V
    .locals 6

    sget v0, Lcom/transsion/onlinevideo/R$id;->wb:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    new-instance v2, Lrdc;

    invoke-virtual {v0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->getCallbacks()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v5, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->l0:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    invoke-direct {v2, v3, v4, v5}, Lrdc;-><init>(Ljava/util/Map;Lcom/just/agentweb/jsbridge/BridgeWebView;Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;)V

    const-string v3, "WebViewJavascriptBridge"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/just/agentweb/jsbridge/BridgeWebView;->setGson(Lcom/google/gson/Gson;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    sget v3, Lcom/transsion/onlinevideo/R$color;->transparent:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; VISHAAPP"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljf;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    new-instance v1, Lcom/transsion/onlinevideo/web/VipWebActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/web/VipWebActivity$a;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    new-instance v1, Lcom/transsion/onlinevideo/web/VipWebActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/web/VipWebActivity$b;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/just/agentweb/jsbridge/BridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->i1(I)V

    goto :goto_0

    :cond_0
    const-string v0, "[VishaUserDebug]"

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic R0(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lwz5;->E()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->finish()V

    return-void
.end method

.method public static synthetic T0(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "[VishaUserDebug]"

    if-ne p0, v0, :cond_0

    const-string p0, "Pay Cancel Server check success"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "Pay Cancel Server check error"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private d1()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/?lang="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->O:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/onlinevideo/web/VipWebActivity;->m0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vip_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->P:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vip_card_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->Q:J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->a0:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/onlinevideo/web/VipWebActivity;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/onlinevideo/web/VipWebActivity;->n0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->e1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->N0()V

    :cond_5
    return-void
.end method

.method private e1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    const-string v2, "dark="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(dark=[^&]*)"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&dark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?dark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/web/VipWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->S0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/data/OrderCallbackRequest;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->P0(Lcom/transsion/playercommon/data/OrderCallbackRequest;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic r0(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->T0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/web/VipWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->R0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/web/VipWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->Q0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->d0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/onlinevideo/web/VipWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->e0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/onlinevideo/web/VipWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->M0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic y0(Lcom/transsion/onlinevideo/web/VipWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->U0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->V0(Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;)V

    return-void
.end method


# virtual methods
.method public final G0(Lcom/transsion/playercommon/data/OrderCallbackRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->c(Lcom/transsion/playercommon/data/OrderCallbackRequest;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/web/VipViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/web/VipViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ludc;

    invoke-direct {v1, p0, p1}, Ludc;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/data/OrderCallbackRequest;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public final H0(Lcom/android/billingclient/api/Purchase;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    iget v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->f0:I

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->setIsSubscribe(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vipOrder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VishaUserDebug]"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/playercommon/data/OrderCallbackRequest;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->f0:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/playercommon/data/OrderCallbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "orderCallbackRequest: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->G0(Lcom/transsion/playercommon/data/OrderCallbackRequest;)V

    return-void
.end method

.method public final L0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->i0:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->no_network_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->i0:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->btn_try:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->k0:Landroid/widget/TextView;

    new-instance v1, Lvdc;

    invoke-direct {v1, p0}, Lvdc;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->P:I

    iget-wide v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->Q:J

    invoke-static {v0, v1, v2}, Lt95;->a(IJ)Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lt95;->c()Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vip to js data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[VishaUserDebug]"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vip to js encrypt data:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {p0, v0, p1}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final N0()V
    .locals 2

    new-instance v0, Lpe0;

    new-instance v1, Lcom/transsion/onlinevideo/web/VipWebActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/web/VipWebActivity$c;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-direct {v0, p0, v1}, Lpe0;-><init>(Landroid/app/Activity;Lf90;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lpe0;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic P0(Lcom/transsion/playercommon/data/OrderCallbackRequest;Ljava/lang/Integer;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "vd_ott_vip_buy_c_order_confirm"

    const-string v1, "[VishaUserDebug]"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/OrderCallbackRequest;->getProfileId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/transsion/onlinevideo/web/OrderManager;->i(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/OrderCallbackRequest;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/web/OrderManager;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lkfc;->k(ZLkfc$d;)V

    const-string p1, "Pay Consume Server check success"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {v0, p0, p1, v2}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const-string v3, "Pay Consume Server check fail"

    const/4 v4, 0x0

    invoke-static {v0, p2, v3, v4}, Lwz5;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pay Consume Server check error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->b0:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->b0:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->c(Lcom/transsion/playercommon/data/OrderCallbackRequest;)V

    :cond_2
    add-int/2addr p2, v2

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->b0:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final synthetic Q0(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->i0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic S0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->createBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/#/faq"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$string;->membership_faq:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/transsion/onlinevideo/web/VipHelpActivity;->q0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "vd_ott_vip_buy_qa_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final U0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->U:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lzdc;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->Y0()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public final V0(Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getPost()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "vd_ott_vip_buy_show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getPost()Ljava/util/Map;

    move-result-object v0

    const-string v1, "from"

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->a0:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPostParam;->getParams()Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsPost;->getPost()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lwz5;->K(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final W0(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "returnTarget"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const-string p1, "finish,to home page"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[VishaUserDebug]"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "close_user_page"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->finish()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/onlinevideo/web/VipWebActivity$2;

    invoke-direct {p1, p0}, Lcom/transsion/onlinevideo/web/VipWebActivity$2;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final X0(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    const-string v0, "text"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "prompt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ldy0;->a(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    iget v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->O:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->M0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->M0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Z0(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->X:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "vd_ott_vip_buy_c_payment_result"

    const-string v4, "Purchases cancel"

    invoke-static {v3, v0, v1, v4, v2}, Lwz5;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x412

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchaseCancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[VishaUserDebug]"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->b(Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/web/VipViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lwdc;

    invoke-direct {v0}, Lwdc;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public a1(Ljava/util/List;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchaseDone=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[VishaUserDebug]"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "vd_ott_vip_buy_c_payment_result"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPurchaseDone_purchase"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/transsion/onlinevideo/web/OrderManager;->e(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/onlinevideo/web/OrderManager;->g(Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x40f

    invoke-virtual {v2, v5, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    sput v4, Lcom/transsion/onlinevideo/web/VipWebActivity;->p0:I

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->H0(Lcom/android/billingclient/api/Purchase;)V

    const-string v2, "subs"

    iget-object v3, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpe0;->k(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acknowledgePurchase success >>> [orderId\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "inapp"

    iget-object v5, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    const/16 v5, 0x418

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpe0;->m(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeAsync success >>> [orderId\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->X:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p1, p0, v1, v4}, Lwz5;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string p1, "onPurchaseDone: No purchase,pay fail !"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    const/16 v3, -0x3ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v3, 0x410

    invoke-virtual {v1, v3, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->X:Ljava/lang/String;

    const-string v1, "purchase fail"

    invoke-static {v0, p1, p0, v1, v2}, Lwz5;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public final b1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->h0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "showTitlebar"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->j0:Z

    new-instance v0, Lcom/transsion/onlinevideo/web/VipWebActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity$3;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c1(ILjava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSkusError: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[VishaUserDebug]"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x411

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x407

    if-eq p1, v0, :cond_1

    const/16 v0, 0x418

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-static {p0, v0}, Lwz5;->J(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    sget p2, Lcom/transsion/onlinevideo/R$string;->vip_pay_cancled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, v1, p2}, Lt95;->b(IILjava/lang/String;)Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object p2

    invoke-static {p2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, v1, p2}, Lt95;->b(IILjava/lang/String;)Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object p2

    invoke-static {p2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, v1, p2}, Lt95;->b(IILjava/lang/String;)Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object p2

    invoke-static {p2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    const-string p2, ""

    invoke-static {v0, v1, p2}, Lt95;->b(IILjava/lang/String;)Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;

    move-result-object p2

    invoke-static {p2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    aget-object p1, p2, v1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/web/OrderManager;->e(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/onlinevideo/web/OrderManager;->g(Lcom/transsion/dbdata/beans/onlinevideo/VipOrder;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->H0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->Y0()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x40f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V
    .locals 5

    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->V:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPay obfuscatedProfileId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "obfuscatedProfileId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "productId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "[VishaUserDebug]"

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->W:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->X:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "inapp"

    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->f0:I

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    const-string v2, "subscribe"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "subs"

    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    const-string v2, "offerId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v4, ""

    if-nez p2, :cond_0

    move-object p2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->e0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    const-string v2, "basePlanId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->d0:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bpd:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->d0:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->f0:I

    :cond_2
    iget-object p2, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->c0:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lpe0;->y(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lwz5;->L(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final g1()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.magicmovie.activity.VideoPlayerMainActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final h1(Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaweb/jsdata/JsParam;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.transsion.sniffer_load.open_html_url"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "web_url"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final i1(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->L0()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->i0:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->i0:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initNotify()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x40f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x418

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->j0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->j0:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->h0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->N:Lcom/just/agentweb/jsbridge/BridgeWebView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_vip:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->d1()V

    sget p1, Lcom/transsion/onlinevideo/R$id;->title_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->g0:Landroid/view/View;

    sget p1, Lcom/transsion/onlinevideo/R$id;->ll_title_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->h0:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->g0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->g0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->sb_web:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->Z:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Lsdc;

    invoke-direct {p1, p0}, Lsdc;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->g0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_faq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ltdc;

    invoke-direct {v0, p0}, Ltdc;-><init>(Lcom/transsion/onlinevideo/web/VipWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/web/VipWebActivity;->O0()V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/onlinevideo/web/VipViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/web/VipViewModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->T:Lcom/transsion/onlinevideo/web/VipViewModel;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipWebActivity;->S:Lpe0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpe0;->n()V

    :cond_0
    return-void
.end method
