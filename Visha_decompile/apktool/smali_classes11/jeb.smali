.class public Ljeb;
.super Lcom/just/agentweb/AgentWebUIControllerImplBase;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/just/agentweb/AgentWebUIControllerImplBase;-><init>()V

    iput-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/AgentWebUIControllerImplBase;->onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/AgentWebUIControllerImplBase;->onShowMessage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowSslCertificateErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    sget p3, Lcom/transsion/playercommon/R$string;->agentweb_message_show_ssl_error:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    sget p3, Lcom/transsion/playercommon/R$string;->agentweb_message_show_ssl_untrusted:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    sget p3, Lcom/transsion/playercommon/R$string;->agentweb_message_show_ssl_hostname_mismatch:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    sget p3, Lcom/transsion/playercommon/R$string;->agentweb_message_show_ssl_expired:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ljeb;->a:Landroid/app/Activity;

    sget p3, Lcom/transsion/playercommon/R$string;->agentweb_message_show_ssl_not_yet_valid:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    const-string p3, "get_ssl_error\uff1a"

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :cond_4
    return-void
.end method
