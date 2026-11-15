.class public Lcom/just/agentweb/DefaultChromeClient;
.super Lcom/just/agentweb/MiddlewareWebChromeBase;
.source "SourceFile"


# static fields
.field public static final ANDROID_WEBCHROMECLIENT_PATH:Ljava/lang/String; = "android.webkit.WebChromeClient"

.field public static final FROM_CODE_INTENTION:I = 0x18

.field public static final FROM_CODE_INTENTION_LOCATION:I = 0x60


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAgentWebUIController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field private mFileChooser:Ljava/lang/Object;

.field private final mIVideo:Lcom/just/agentweb/IVideo;

.field private final mIndicatorController:Lcom/just/agentweb/IndicatorController;

.field private mIsWrapper:Z

.field private mOrigin:Ljava/lang/String;

.field private final mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

.field private final mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/just/agentweb/IndicatorController;Landroid/webkit/WebChromeClient;Lcom/just/agentweb/IVideo;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/WebView;)V
    .locals 2
    .param p4    # Lcom/just/agentweb/IVideo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/just/agentweb/MiddlewareWebChromeBase;-><init>(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/just/agentweb/DefaultChromeClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/just/agentweb/DefaultChromeClient$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultChromeClient$1;-><init>(Lcom/just/agentweb/DefaultChromeClient;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

    iput-object p2, p0, Lcom/just/agentweb/DefaultChromeClient;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    iput-object p3, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    iput-object p5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    iput-object p6, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {p6}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebUIControllerByWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    return-object p0
.end method

.method private createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/just/agentweb/AgentWebUtils;->showFileChooserCompat(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/ValueCallback;Ljava/lang/String;Landroid/os/Handler$Callback;)Z

    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/just/agentweb/DefaultChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    return-void
.end method

.method public static bridge synthetic f(Lcom/just/agentweb/DefaultChromeClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method private onGeolocationPermissionsShowPromptInternal(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    const-string v4, "location"

    invoke-interface {v0, v2, v3, v4}, Lcom/just/agentweb/PermissionInterceptor;->intercept(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    sget-object v2, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/just/agentweb/AgentWebUtils;->getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v0, "onGeolocationPermissionsShowPromptInternal:true"

    invoke-static {p0, v0}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-interface {p2, p1, p0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/just/agentweb/Action;->createPermissionsAction([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lcom/just/agentweb/Action;->setFromIntention(I)Lcom/just/agentweb/Action;

    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

    invoke-virtual {v1, v2}, Lcom/just/agentweb/Action;->setPermissionListener(Lcom/just/agentweb/AgentActionFragment$PermissionListener;)V

    iput-object p2, p0, Lcom/just/agentweb/DefaultChromeClient;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mOrigin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/just/agentweb/AgentActionFragment;->start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    :goto_0
    return-void
.end method

.method private openFileChooserAboveL(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p2, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/just/agentweb/AgentWebUtils;->showFileChooserCompat(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/ValueCallback;Ljava/lang/String;Landroid/os/Handler$Callback;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/just/agentweb/WebChromeClientDelegate;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    const-wide/16 p0, 0x2

    mul-long/2addr p7, p0

    invoke-interface {p9, p7, p8}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    invoke-super {p0}, Lcom/just/agentweb/WebChromeClientDelegate;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->onGeolocationPermissionsShowPromptInternal(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/just/agentweb/IVideo;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p0, 0x1

    return p0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/just/agentweb/AbsAgentWebUIController;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v3, "onPermissionRequest"

    invoke-interface {v1, v2, v0, v3}, Lcom/just/agentweb/PermissionInterceptor;->intercept(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AbsAgentWebUIController;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/AbsAgentWebUIController;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-super {p0, p1}, Lcom/just/agentweb/WebChromeClientDelegate;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/just/agentweb/IndicatorController;->progress(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIsWrapper:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient;->mIVideo:Lcom/just/agentweb/IVideo;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/just/agentweb/IVideo;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>=5.0"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/DefaultChromeClient;->openFileChooserAboveL(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p0

    return p0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser<3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    const-string v0, "*/*"

    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/just/agentweb/DefaultChromeClient;->TAG:Ljava/lang/String;

    const-string v0, "openFileChooser>=4.1"

    invoke-static {p3, v0}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultChromeClient;->createAndOpenCommonFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
