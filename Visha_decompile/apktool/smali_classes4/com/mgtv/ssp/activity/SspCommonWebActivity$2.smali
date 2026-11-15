.class Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;
.super Lcom/mgtv/webview/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspCommonWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p0}, Lcom/mgtv/webview/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/mgtv/webview/c;->a()V

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/hunantv/imgo/util/v;->b(Ljava/lang/String;)V

    return-void
.end method
