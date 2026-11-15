.class public Lcom/doman/core/ig/manager/WebService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static c:Ljava/lang/String; = "tourist_enter"

.field public static d:Ljava/lang/String; = "message_arrived"

.field public static e:J

.field private static f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

.field private static final h:Ljava/nio/charset/Charset;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Z

.field private static n:I

.field private static o:I

.field private static r:J

.field private static s:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private g:Lbmd;

.field private p:Z

.field private q:I

.field private t:Lcom/doman/core/ig/manager/d$a;

.field private u:Lv7d;

.field private v:Lhjd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/doman/core/ig/manager/WebService;->h:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/doman/core/ig/manager/WebService;->i:Ljava/lang/String;

    sput-object v0, Lcom/doman/core/ig/manager/WebService;->j:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/doman/core/ig/manager/WebService;->k:Z

    sput-object v0, Lcom/doman/core/ig/manager/WebService;->l:Ljava/lang/String;

    sput-boolean v1, Lcom/doman/core/ig/manager/WebService;->m:Z

    sput v1, Lcom/doman/core/ig/manager/WebService;->n:I

    sput v1, Lcom/doman/core/ig/manager/WebService;->o:I

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/doman/core/ig/manager/WebService;->e:J

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/doman/core/ig/manager/WebService;->r:J

    sput v1, Lcom/doman/core/ig/manager/WebService;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "admin"

    iput-object v0, p0, Lcom/doman/core/ig/manager/WebService;->a:Ljava/lang/String;

    const-string v0, "password"

    iput-object v0, p0, Lcom/doman/core/ig/manager/WebService;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/ig/manager/WebService;->p:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/doman/core/ig/manager/WebService;->q:I

    new-instance v0, Lcom/doman/core/ig/manager/WebService$1;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/manager/WebService$1;-><init>(Lcom/doman/core/ig/manager/WebService;)V

    iput-object v0, p0, Lcom/doman/core/ig/manager/WebService;->t:Lcom/doman/core/ig/manager/d$a;

    new-instance v0, Lcom/doman/core/ig/manager/WebService$2;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/manager/WebService$2;-><init>(Lcom/doman/core/ig/manager/WebService;)V

    iput-object v0, p0, Lcom/doman/core/ig/manager/WebService;->u:Lv7d;

    new-instance v0, Lcom/doman/core/ig/manager/WebService$3;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/manager/WebService$3;-><init>(Lcom/doman/core/ig/manager/WebService;)V

    iput-object v0, p0, Lcom/doman/core/ig/manager/WebService;->v:Lhjd;

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/WebService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/doman/core/ig/manager/WebService;->q:I

    return p1
.end method

.method public static synthetic a()Lcom/doman/core/ig/proxy/MqttAndroidClient;
    .locals 1

    .line 2
    sget-object v0, Lcom/doman/core/ig/manager/WebService;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/WebService;)V
    .locals 5

    .line 3
    :try_start_0
    sget-object v0, Lcom/doman/core/ig/manager/WebService;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    iget-object v1, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/doman/core/ig/manager/WebService;->h()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    :try_start_1
    iget-boolean v0, p0, Lcom/doman/core/ig/manager/WebService;->p:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/doman/core/webview/c;->ae:Ljava/lang/String;

    invoke-static {v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/doman/core/ig/manager/WebService;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    iget-object v1, p0, Lcom/doman/core/ig/manager/WebService;->g:Lbmd;

    iget-object p0, p0, Lcom/doman/core/ig/manager/WebService;->u:Lv7d;

    new-instance v2, Lcom/doman/core/ig/proxy/h;

    invoke-direct {v2, v0, p0}, Lcom/doman/core/ig/proxy/h;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;)V

    iput-object v1, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->f:Lbmd;

    iput-object v2, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->g:Lggd;

    iget-object p0, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    if-nez p0, :cond_4

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    const-string v3, "com.doman.core.ig.proxy.MqttService"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v2}, Lggd;->d()Lv7d;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cannot start service com.doman.core.ig.proxy.MqttService"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lv7d;->onFailure(Lggd;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v1, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->e:Landroid/content/Context;

    iget-object v2, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->b:Lcom/doman/core/ig/proxy/MqttAndroidClient$b;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean p0, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->h:Z

    if-nez p0, :cond_3

    invoke-virtual {v0, v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void

    :cond_4
    sget-object p0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;

    invoke-direct {v1, v0}, Lcom/doman/core/ig/proxy/MqttAndroidClient$1;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/WebService;Ltod;)V
    .locals 12

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ltod;->getPayload()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "msg_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v5, "protocol"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "rd_time"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "extra"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    sget-wide v8, Lcom/doman/core/ig/manager/WebService;->r:J

    sub-long/2addr v10, v8

    sget p1, Lcom/doman/core/ig/manager/WebService;->s:I

    int-to-long v8, p1

    cmp-long p1, v10, v8

    if-gez p1, :cond_0

    sget-object p0, Lcom/doman/core/webview/c;->ai:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/doman/core/ig/manager/c;->a()Lcom/doman/core/ig/manager/c;

    move-result-object p1

    const-string v5, ""

    invoke-virtual {p1, p0, v5, v6, v7}, Lcom/doman/core/ig/manager/c;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x0

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/ig/manager/WebService;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    sget-object p0, Lcom/doman/core/webview/c;->al:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 p0, 0x3e8

    if-ne v5, p0, :cond_4

    if-lez v6, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_4
    const/16 p0, 0x3e9

    if-ne v5, p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    div-long/2addr p0, v8

    sput-wide p0, Lcom/doman/core/ig/manager/WebService;->r:J

    sput v6, Lcom/doman/core/ig/manager/WebService;->s:I

    return-void

    :cond_5
    const/16 p0, 0x7d0

    if-le v5, p0, :cond_6

    const/16 p0, 0xbb8

    if-ge v5, p0, :cond_6

    sget-object p0, Lcom/doman/core/webview/c;->aB:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    new-instance p0, Lcom/doman/core/a$b;

    invoke-direct {p0}, Lcom/doman/core/a$b;-><init>()V

    iput-object p1, p0, Lcom/doman/core/a$b;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/doman/core/a;->a()Lcom/doman/core/a;

    move-result-object p1

    iget-object v0, p1, Lcom/doman/core/a;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v10, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p1, Lcom/doman/core/a;->b:Lcom/doman/core/a$a;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    .line 5
    sget-object v1, Lcom/doman/core/ig/manager/WebService;->d:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/doman/core/ig/manager/WebService;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance p0, Ltod;

    invoke-direct {p0, v2}, Ltod;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ltod;->setQos(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ltod;->setRetained(Z)V

    new-instance v6, Lcom/doman/core/ig/proxy/f;

    invoke-direct {v6, v0, p0}, Lcom/doman/core/ig/proxy/f;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Ltod;)V

    invoke-virtual {v0, v6}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lggd;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->c:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v0, v0, Lcom/doman/core/ig/proxy/MqttAndroidClient;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/String;[BIZLjava/lang/String;)Lyad;

    move-result-object p0

    iput-object p0, v6, Lcom/doman/core/ig/proxy/h;->a:Lggd;
    :try_end_0
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic b(Lcom/doman/core/ig/manager/WebService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/doman/core/ig/manager/WebService;->q:I

    return p0
.end method

.method public static synthetic b()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/doman/core/ig/manager/WebService;->m:Z

    return v0
.end method

.method public static synthetic c()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/doman/core/ig/manager/WebService;->n:I

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/doman/core/ig/manager/WebService;->o:I

    return v0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/doman/core/ig/manager/WebService;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f()I
    .locals 2

    sget v0, Lcom/doman/core/ig/manager/WebService;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/doman/core/ig/manager/WebService;->o:I

    return v0
.end method

.method public static synthetic g()I
    .locals 1

    sget v0, Lcom/doman/core/ig/manager/WebService;->o:I

    return v0
.end method

.method private h()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
