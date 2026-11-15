.class public final Lcom/transsion/onlinevideo/tiktokweb/b$b$b;
.super Lcom/just/agentweb/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktokweb/b$b;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Lcom/transsion/onlinevideo/tiktokweb/b;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/transsion/onlinevideo/tiktokweb/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-direct {p0}, Lcom/just/agentweb/WebChromeClient;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b()V

    return-void
.end method

.method public static final b()V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateWindow: onCloseWindow url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokWebviewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->p(Lcom/transsion/onlinevideo/tiktokweb/b;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mParentContainer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p1, v2}, Lcom/transsion/onlinevideo/tiktokweb/b;->s(Lcom/transsion/onlinevideo/tiktokweb/b;Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->n(Lcom/transsion/onlinevideo/tiktokweb/b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->r(Lcom/transsion/onlinevideo/tiktokweb/b;Z)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/b$b$b;->b:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/a;->c:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lkna;

    invoke-direct {p0}, Lkna;-><init>()V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCloseWindow onError : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
