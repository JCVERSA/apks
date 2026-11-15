.class public abstract Lcom/transsion/onlinevideo/tiktokweb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String;

.field public static g:Landroid/os/Bundle;


# instance fields
.field public a:Lcom/just/agentweb/AgentWeb;

.field public b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public c:Landroid/app/Activity;

.field public d:Landroid/webkit/WebView;

.field public e:Lcom/just/agentweb/PermissionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/tiktokweb/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktokweb/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/a$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/tiktokweb/a$b;-><init>(Lcom/transsion/onlinevideo/tiktokweb/a;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->e:Lcom/just/agentweb/PermissionInterceptor;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "vishaappinner"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "&vishaappinner"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "(&vishaappinner=[^&]*)"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p1, "(vishaappinner=[^&]*)"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/transsion/onlinevideo/tiktokweb/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get out url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Lcom/just/agentweb/IAgentWebSettings;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/tiktokweb/a$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/tiktokweb/a$a;-><init>(Lcom/transsion/onlinevideo/tiktokweb/a;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/transsion/onlinevideo/tiktokweb/a;->g:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "url_key"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "https://www.google.com"

    :cond_1
    return-object p0
.end method

.method public e()Landroid/webkit/WebView;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object p0

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    if-nez v1, :cond_3

    new-instance v1, Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2}, Lcom/just/agentweb/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->d:Landroid/webkit/WebView;

    :cond_3
    return v0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->destroy()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onPause()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->a:Lcom/just/agentweb/AgentWeb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->onResume()V

    :cond_0
    return-void
.end method

.method public k(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->b:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-void
.end method
