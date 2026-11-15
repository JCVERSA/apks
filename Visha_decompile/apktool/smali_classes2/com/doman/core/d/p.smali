.class public Lcom/doman/core/d/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/doman/core/d/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/doman/core/d/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/doman/core/d/p;->a:Lcom/doman/core/d/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/d/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/d/p;->a:Lcom/doman/core/d/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/d/p;

    invoke-direct {v1}, Lcom/doman/core/d/p;-><init>()V

    sput-object v1, Lcom/doman/core/d/p;->a:Lcom/doman/core/d/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/doman/core/d/p;->a:Lcom/doman/core/d/p;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/a/j;)V
    .locals 9

    .line 2
    invoke-static {}, Lcom/doman/core/d/p;->a()Lcom/doman/core/d/p;

    move-result-object v1

    iget-object v4, p0, Lcom/doman/core/a/j;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/doman/core/a/j;->d:Ljava/lang/String;

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getResumeActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string v0, "player page is null"

    :goto_0
    invoke-static {p0, v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string v0, "player page is finished"

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    sget-object p0, Lcom/doman/core/webview/c;->aq:Ljava/lang/String;

    const-string v0, "app is not on"

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v7, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v8, Lcom/doman/core/d/p$3;

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/doman/core/d/p$3;-><init>(Lcom/doman/core/d/p;Landroid/app/Activity;ZLjava/lang/String;Lcom/doman/core/a/j;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/d/p;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v1, Lcom/doman/core/d/p$4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/doman/core/d/p$4;-><init>(Lcom/doman/core/d/p;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Lcom/doman/core/webview/WsWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/webview/WsWebView;)V
    .locals 2

    .line 4
    const-string v0, "distoryWebView distoryWebView 1"

    const-string v1, "BRWS"

    invoke-static {v1, v0}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "distoryWebView distoryWebView 2"

    invoke-static {v1, p0}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/webview/WsWebView;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/doman/core/webview/WsWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p0, p1}, Lcom/doman/core/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/doman/core/d/p;->b()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/doman/core/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/doman/core/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/doman/core/d/p;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getResumeActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p0, p1}, Lcom/doman/core/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/doman/core/d/p;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1, v0}, Lcom/doman/core/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
