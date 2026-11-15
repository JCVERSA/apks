.class Lcom/mgtv/ssp/activity/SspVipWebActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/MgSspLoginStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspVipWebActivity$1;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspVipWebActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ILcom/mgtv/ssp/authbase/AccountInfo;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lcom/mgtv/ssp/authbase/AccountInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->j(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mgtv/ssp/authbase/AccountInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/imgo/util/b;->o(Ljava/lang/String;)V

    const-string p2, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity$1;

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspVipWebActivity;

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
