.class Lcom/mgtv/data/aphone/a/a$1;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/a/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/http/c<",
        "Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/a/a$1;->a:Lcom/mgtv/data/aphone/a/a;

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/a/a$1;->b(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V

    return-void
.end method

.method public b(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####################  \u5f00\u5173\u63a5\u53e3 \u8bf7\u6c42\u6210\u529f :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "big_data_sdk"

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a$1;->a:Lcom/mgtv/data/aphone/a/a;

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/a/a;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    const-string p0, "hd_local_interface_on_off_data"

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "local_interface_on_off_data"

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p1

    const-class v0, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a$1;->a:Lcom/mgtv/data/aphone/a/a;

    const-string p1, "{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}"

    invoke-static {p1, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/a/a;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    goto :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a$1;->a:Lcom/mgtv/data/aphone/a/a;

    const-string p1, "{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}"

    invoke-static {p1, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/a/a;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/a/a$1;->a(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)V

    return-void
.end method
