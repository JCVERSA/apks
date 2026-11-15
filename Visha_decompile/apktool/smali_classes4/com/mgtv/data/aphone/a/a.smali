.class public Lcom/mgtv/data/aphone/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String; = "PlayerStatisticReporter"

.field private static c:Lcom/mgtv/data/aphone/a/a;


# instance fields
.field private a:Lcom/mgtv/data/aphone/a/c/b;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

.field private i:Lcom/mgtv/data/aphone/core/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/data/aphone/a/a;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgtv/data/aphone/a/a;->f:Z

    iput v0, p0, Lcom/mgtv/data/aphone/a/a;->g:I

    new-instance v0, Lcom/mgtv/data/aphone/core/g/b;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/g/b;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/a/a;->i:Lcom/mgtv/data/aphone/core/g/b;

    const-string p0, "big_data_sdk"

    const-string v0, "####################  PlayerStatisticReporter()"

    invoke-static {p0, v0}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/a/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/data/aphone/a/a;->c:Lcom/mgtv/data/aphone/a/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/data/aphone/a/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/data/aphone/a/a;->c:Lcom/mgtv/data/aphone/a/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/data/aphone/a/a;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/a/a;-><init>()V

    sput-object v1, Lcom/mgtv/data/aphone/a/a;->c:Lcom/mgtv/data/aphone/a/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/data/aphone/a/a;->c:Lcom/mgtv/data/aphone/a/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/data/aphone/a/a;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;)Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    return-object p1
.end method

.method private f()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgtv/data/aphone/core/e/b;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/e/b;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "big_data_sdk"

    const-string v1, "############### init \u521d\u59cb\u5316 "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->m()V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->h()V

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->d()V

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->e()V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->i()V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->j()V

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->k()V

    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object v0

    new-instance v1, Lcom/mgtv/data/aphone/core/d/a;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/d/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mgtv/data/aphone/core/f/a;->a(Lcom/mgtv/data/aphone/core/d/c;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgtv/data/aphone/core/e/d;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/d;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mgtv/data/aphone/b/a;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/b/a;

    new-instance v0, Lcom/mgtv/data/aphone/a/c/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/a/a;->a:Lcom/mgtv/data/aphone/a/c/b;

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/mgtv/data/aphone/a/c/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    const-class v2, Lcom/mgtv/data/aphone/core/h/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "big_data_sdk"

    const-string v1, "############### initAppStart "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/e;->a()Lcom/mgtv/data/aphone/core/e/e;

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/mgtv/data/aphone/core/e/e;->a(Landroid/app/Application;)V

    return-void
.end method

.method private k()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "mgtv.player.action.PLAYER_REPORT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->i:Lcom/mgtv/data/aphone/core/g/b;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private m()V
    .locals 1

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->n()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->o()V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    const-string v0, "hd_local_interface_on_off_data"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-class v2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    iput-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    :cond_0
    iget-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->data:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}"

    invoke-static {v1, v2}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    iput-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#################### \u6d77\u5916\u7248\u672c\u6570\u636e local on off :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "big_data_sdk"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 3

    const-string v0, "local_interface_on_off_data"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-class v2, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    iput-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    :cond_0
    iget-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;->data:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}"

    invoke-static {v1, v2}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    iput-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#################### \u5927\u9646\u7248\u672c\u6570\u636e local on off :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "big_data_sdk"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/mgtv/data/aphone/a/a;
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/mgtv/data/aphone/a/a;->e:Z

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->g()V

    return-void
.end method

.method public declared-synchronized a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/a/b/b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->a:Lcom/mgtv/data/aphone/a/c/b;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 24
    iget-object v2, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/mgtv/data/aphone/a/c/b;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/mgtv/data/aphone/a/b/a;

    invoke-direct {v5}, Lcom/mgtv/data/aphone/a/b/a;-><init>()V

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/mgtv/data/aphone/a/c/b;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 3

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->a:Lcom/mgtv/data/aphone/a/c/b;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 32
    iget-object v1, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/mgtv/data/aphone/a/c/b;->a(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/lang/String;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v1

    new-instance v2, Lcom/mgtv/data/aphone/a/b/a;

    invoke-direct {v2}, Lcom/mgtv/data/aphone/a/b/a;-><init>()V

    invoke-interface {v0, p2, p1, v1, v2}, Lcom/mgtv/data/aphone/a/c/b;->a(Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/lang/String;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 10
    iget-object v1, v0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###############   AppSwitchManager.mIsCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mgtv/data/aphone/core/e/e;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "big_data_sdk"

    invoke-static {v2, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgtv/data/aphone/b/a;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/b/a;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-boolean v1, Lcom/mgtv/data/aphone/core/e/e;->b:Z

    if-nez v1, :cond_1

    .line 14
    iget-object v1, v0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/e/c;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgtv/data/aphone/core/e/c;->a(Z)V

    .line 15
    const-string v1, "big_data_sdk_pref_key_intraday_report_counter"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v3

    .line 16
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 17
    new-instance v5, Ljava/util/Date;

    const-string v6, "big_data_sdk_pref_key_report_time"

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 18
    invoke-static {v4, v5}, Lcom/hunantv/imgo/util/f;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->f()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->putInt(Ljava/lang/String;I)Z

    .line 21
    invoke-direct {p0}, Lcom/mgtv/data/aphone/a/a;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/a/b/b;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->a:Lcom/mgtv/data/aphone/a/c/b;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 28
    iget-object v2, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/mgtv/data/aphone/a/c/b;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/mgtv/data/aphone/a/a;->h:Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/a/a;->b()Lcom/mgtv/data/aphone/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/mgtv/data/aphone/a/b/a;

    invoke-direct {v5}, Lcom/mgtv/data/aphone/a/b/a;-><init>()V

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/mgtv/data/aphone/a/c/b;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/EventOnOffBean;Ljava/util/Map;Lcom/mgtv/data/aphone/a/a/a;Lcom/mgtv/data/aphone/a/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/mgtv/data/aphone/a/a/a;
    .locals 2

    .line 2
    new-instance v0, Lcom/mgtv/data/aphone/a/a/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/a/a/a;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/mgtv/data/aphone/a/a;->f:Z

    iput-boolean v1, v0, Lcom/mgtv/data/aphone/a/a/a;->b:Z

    .line 4
    iget p0, p0, Lcom/mgtv/data/aphone/a/a;->g:I

    iput p0, v0, Lcom/mgtv/data/aphone/a/a/a;->c:I

    return-object v0
.end method

.method public b(Z)Lcom/mgtv/data/aphone/a/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/data/aphone/a/a;->f:Z

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgtv/data/aphone/core/j/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 7

    const-string v0, "########################  initOnOff"

    const-string v1, "big_data_sdk"

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v3}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "4"

    const-string v5, "E4PQERDBCED8COL1WE23"

    goto :goto_0

    :cond_1
    const-string v4, "5"

    const-string v5, "19KIAYQPMYD0LDNN7H21"

    :goto_0
    const-string v6, "appId"

    invoke-virtual {v0, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appkey"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sign"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "version"

    invoke-virtual {v0, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    const-string v4, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v3, v4, v6, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    const-string v4, "User-Agent"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mgtv/task/http/HttpParams;->setBodyJson(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######################## \u52a0:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mgtv/task/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/a;->b:Ljava/lang/String;

    new-instance v2, Lcom/mgtv/data/aphone/a/a$1;

    invoke-direct {v2, p0}, Lcom/mgtv/data/aphone/a/a$1;-><init>(Lcom/mgtv/data/aphone/a/a;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    iget-object v0, p0, Lcom/mgtv/data/aphone/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "did"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v1, "termid"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    new-instance v1, Lcom/mgtv/task/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v1

    sget-object v2, Lcom/mgtv/data/aphone/core/constants/a;->a:Ljava/lang/String;

    new-instance v3, Lcom/mgtv/data/aphone/a/a$2;

    invoke-direct {v3, p0}, Lcom/mgtv/data/aphone/a/a$2;-><init>(Lcom/mgtv/data/aphone/a/a;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
