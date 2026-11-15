.class Lcom/mgtv/ssp/activity/SspVipWebActivity$1;
.super Lcom/mgtv/webview/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspVipWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspVipWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspVipWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-direct {p0}, Lcom/mgtv/webview/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/mgtv/webview/c;->a()V

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    const-class v2, Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-string v1, "webUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->e(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    const-string p0, "1"

    return-object p0

    .line 5
    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->f()Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->f()Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/activity/SspVipWebActivity$1$1;-><init>(Lcom/mgtv/ssp/activity/SspVipWebActivity$1;)V

    invoke-interface {p1, v0}, Lcom/mgtv/ssp/authbase/MgSspAccountCallback;->gotoLogin(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 12

    new-instance v4, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v4}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    invoke-virtual {v4, p1}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {v0}, Lcom/hunantv/imgo/a/f;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->a(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->b(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {v1}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->c(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->d(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "vip_click"

    const-string v2, "vip_err"

    const-string v3, "1"

    const-string v6, ""

    const/4 v9, -0x1

    const-string v10, ""

    invoke-virtual/range {v0 .. v11}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;)V

    return-void
.end method
