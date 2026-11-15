.class public Lcn/com/custommma/mobile/tracking/api/Countly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Z = true

.field public static o:Ljava/lang/String; = "ACTION_STATS_EXPOSE"

.field public static p:Ljava/lang/String; = "ACTION.STATS_VIEWABILITY"

.field public static q:Ljava/lang/String; = "ACTION.STATS_SUCCESSED"

.field public static r:Lcn/com/custommma/mobile/tracking/api/Countly;


# instance fields
.field public a:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

.field public b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

.field public c:Ljava/util/Timer;

.field public d:Ljava/util/Timer;

.field public e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

.field public volatile f:Z

.field public g:Landroid/content/Context;

.field public h:Lcn/com/custommma/mobile/tracking/api/a;

.field public i:Z

.field public j:Lqx8;

.field public k:Ljava/lang/String;

.field public l:Lcn/com/custommma/mobile/tracking/util/NetType;

.field public m:Ltbc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->a:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->c:Ljava/util/Timer;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->d:Ljava/util/Timer;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->f:Z

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->i:Z

    const-string v0, "mz_viewability_mobile.min.js"

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->k:Ljava/lang/String;

    new-instance v0, Lcn/com/custommma/mobile/tracking/api/Countly$a;

    invoke-direct {v0, p0}, Lcn/com/custommma/mobile/tracking/api/Countly$a;-><init>(Lcn/com/custommma/mobile/tracking/api/Countly;)V

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->m:Ltbc;

    return-void
.end method

.method public static synthetic a(Lcn/com/custommma/mobile/tracking/api/Countly;)V
    .locals 0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->m()V

    return-void
.end method

.method public static synthetic b(Lcn/com/custommma/mobile/tracking/api/Countly;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->f:Z

    return p0
.end method

.method public static synthetic c(Lcn/com/custommma/mobile/tracking/api/Countly;)Lcn/com/custommma/mobile/tracking/api/a;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->h:Lcn/com/custommma/mobile/tracking/api/a;

    return-object p0
.end method

.method public static l()Lcn/com/custommma/mobile/tracking/api/Countly;
    .locals 2

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/Countly;->r:Lcn/com/custommma/mobile/tracking/api/Countly;

    if-nez v0, :cond_1

    const-class v0, Lcn/com/custommma/mobile/tracking/api/Countly;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/com/custommma/mobile/tracking/api/Countly;->r:Lcn/com/custommma/mobile/tracking/api/Countly;

    if-nez v1, :cond_0

    new-instance v1, Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-direct {v1}, Lcn/com/custommma/mobile/tracking/api/Countly;-><init>()V

    sput-object v1, Lcn/com/custommma/mobile/tracking/api/Countly;->r:Lcn/com/custommma/mobile/tracking/api/Countly;

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
    sget-object v0, Lcn/com/custommma/mobile/tracking/api/Countly;->r:Lcn/com/custommma/mobile/tracking/api/Countly;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "lyzzzz"

    if-nez p1, :cond_0

    const-string p0, "Countly.init(...) failed:Context can`t be null"

    invoke-static {p0}, Lrq5;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->f:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->g:Landroid/content/Context;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->c:Ljava/util/Timer;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->d:Ljava/util/Timer;

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/api/a;->b(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/api/a;

    move-result-object v2

    iput-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->h:Lcn/com/custommma/mobile/tracking/api/a;

    :try_start_0
    const-string v2, "Countly_init_start"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->g(Landroid/content/Context;)Lqx8;

    move-result-object v2

    iput-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->j:Lqx8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Countly_init_end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->j:Lqx8;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->g:Landroid/content/Context;

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->m:Ltbc;

    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->j:Lqx8;

    invoke-direct {v0, v2, v3, v4}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;-><init>(Landroid/content/Context;Ltbc;Lqx8;)V

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->j:Lqx8;

    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/api/Countly;->e(Lqx8;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->i:Z

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->j()V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->j(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->j:Lqx8;

    invoke-static {p1, p2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->j(Landroid/content/Context;Lqx8;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Countly init failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lrq5;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->n()V

    new-instance p2, Lcn/com/custommma/mobile/tracking/util/NetType;

    invoke-direct {p2}, Lcn/com/custommma/mobile/tracking/util/NetType;-><init>()V

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->l:Lcn/com/custommma/mobile/tracking/util/NetType;

    invoke-virtual {p0, p1, p2}, Lcn/com/custommma/mobile/tracking/api/Countly;->i(Landroid/content/Context;Lcn/com/custommma/mobile/tracking/util/NetType;)V

    return-void
.end method

.method public final e(Lqx8;)Z
    .locals 0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p1, Lqx8;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lva1;

    iget-object p1, p1, Lva1;->f:Lv7a;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lv7a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public f(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "onClick"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/com/custommma/mobile/tracking/api/Countly;->p(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 6

    const-string v1, "onExpose"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/com/custommma/mobile/tracking/api/Countly;->p(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->n()V

    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Context;Lcn/com/custommma/mobile/tracking/util/NetType;)V
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->o()V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    sput-boolean p1, Lrq5;->a:Z

    return-void
.end method

.method public final m()V
    .locals 4

    const-string v0, "cn.com.mma.mobile.tracking.mgmi_ssp_falied"

    :try_start_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lng9;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->g:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final n()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->d:Ljava/util/Timer;

    new-instance v1, Lcn/com/custommma/mobile/tracking/api/Countly$1;

    invoke-direct {v1, p0}, Lcn/com/custommma/mobile/tracking/api/Countly$1;-><init>(Lcn/com/custommma/mobile/tracking/api/Countly;)V

    sget p0, Lkf1;->b:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v4, p0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 2

    iget-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->h:Lcn/com/custommma/mobile/tracking/api/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "The URL parameter is illegal, it can\'t be null or empty!"

    invoke-static {p0}, Lrq5;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "onAdViewExpose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "onVideoExpose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "onExpose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "onClick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    invoke-virtual {p0, p2, p3, p6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->l(Ljava/lang/String;Landroid/view/View;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    invoke-virtual {p0, p2, p3, p4, p6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->m(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    invoke-virtual {p0, p2, p3, p5, p6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->k(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly;->e:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;

    invoke-virtual {p0, p2, p6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->j(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The method "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(...) should be called before calling Countly.init(...)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrq5;->b(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50946517 -> :sswitch_3
        0x421dea83 -> :sswitch_2
        0x430c14c0 -> :sswitch_1
        0x790fcecb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/com/custommma/mobile/tracking/api/Countly;->o(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method
