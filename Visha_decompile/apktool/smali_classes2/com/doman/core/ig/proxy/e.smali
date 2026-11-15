.class public final Lcom/doman/core/ig/proxy/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/e$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcld;

.field e:Lbmd;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/mq/mgmi/client/message/h;

.field i:Lcom/doman/core/ig/proxy/a;

.field j:Lcom/doman/core/ig/proxy/MqttService;

.field volatile k:Z

.field l:Z

.field volatile m:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyad;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyad;",
            "Ltod;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyad;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyad;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/os/PowerManager$WakeLock;

.field private s:Ljava/lang/String;

.field private t:Lf6d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/doman/core/ig/proxy/e$1;

    invoke-direct {v0}, Lcom/doman/core/ig/proxy/e$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/doman/core/ig/proxy/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttService;Ljava/lang/String;Ljava/lang/String;Lcld;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->d:Lcld;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->i:Lcom/doman/core/ig/proxy/a;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    iput-boolean v1, p0, Lcom/doman/core/ig/proxy/e;->l:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/doman/core/ig/proxy/e;->m:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/doman/core/ig/proxy/e;->n:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/doman/core/ig/proxy/e;->o:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/doman/core/ig/proxy/e;->p:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/doman/core/ig/proxy/e;->q:Ljava/util/Map;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/doman/core/ig/proxy/e;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iput-object p3, p0, Lcom/doman/core/ig/proxy/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/ig/proxy/e;->d:Lcld;

    iput-object p5, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-class p4, Lcom/doman/core/ig/proxy/e;

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "on host "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doman/core/ig/proxy/e;->s:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ltod;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.messageId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MqttService.destinationName"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;

    invoke-direct {p0, p2}, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;-><init>(Ltod;)V

    const-string p1, "MqttService.PARCEL"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    return-object p0
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/doman/core/ig/proxy/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/doman/core/ig/proxy/e;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v2, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v0, v1, v2, p1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/e;->a()V

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v0, v0, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/doman/core/ig/proxy/d;->a(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doman/core/ig/proxy/d$a;

    invoke-interface {v1}, Lcom/doman/core/ig/proxy/d$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/doman/core/ig/proxy/d$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/doman/core/ig/proxy/d$a;->c()Ltod;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/String;Ljava/lang/String;Ltod;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MqttService.callbackAction"

    const-string v3, "messageArrived"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v3, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v4, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v2, v3, v4, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BIZLjava/lang/String;)Lyad;
    .locals 6

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "send"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.activityToken"

    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.invocationContext"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mq/mgmi/client/message/h;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/doman/core/ig/proxy/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V

    :try_start_0
    new-instance v2, Ltod;

    invoke-direct {v2, p2}, Ltod;-><init>([B)V

    invoke-virtual {v2, p3}, Ltod;->setQos(I)V

    invoke-virtual {v2, p4}, Ltod;->setRetained(Z)V

    iget-object v4, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    new-instance v5, Ltod;

    invoke-direct {v5, p2}, Ltod;-><init>([B)V

    invoke-virtual {v5, p3}, Ltod;->setQos(I)V

    invoke-virtual {v5, p4}, Ltod;->setRetained(Z)V

    invoke-virtual {v4, p1, v5, v1}, Lcom/mq/mgmi/client/message/h;->b(Ljava/lang/String;Ltod;Lv7d;)Lyad;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p3, p0, Lcom/doman/core/ig/proxy/e;->n:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->o:Ljava/util/Map;

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->p:Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->q:Ljava/util/Map;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p2

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const-string p1, "MqttService.errorMessage"

    const-string p2, "not connected"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {p1, v2, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object p2, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, p0, p2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :goto_1
    return-object v3
.end method

.method public final a()V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/doman/core/ig/proxy/e;->e()V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v2, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v0, v1, v2, p1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/doman/core/ig/proxy/e;->d()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    iput-boolean p1, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/e;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v0, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p2, p0, v0, p1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subscribe({"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "},2,{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MqttConnection"

    invoke-virtual {v0, v3, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string/jumbo v3, "subscribe"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.activityToken"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.invocationContext"

    invoke-virtual {v0, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mq/mgmi/client/message/h;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/doman/core/ig/proxy/e$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V

    :try_start_0
    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/mq/mgmi/client/message/h;->g([Ljava/lang/String;[ILv7d;)Lggd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v0, p1}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p1, "MqttService.errorMessage"

    const-string p2, "not connected"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {p1, v3, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object p2, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, p0, p2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ltod;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messageArrived("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ltod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v0, v0, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/doman/core/ig/proxy/d;->a(Ljava/lang/String;Ljava/lang/String;Ltod;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/String;Ljava/lang/String;Ltod;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.callbackAction"

    const-string v1, "messageArrived"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.messageId"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p2, p0, v0, p1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectionLost("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    iget-boolean v0, v0, Lbmd;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    new-instance v1, Lcom/doman/core/ig/proxy/e$3;

    invoke-direct {v1, p0}, Lcom/doman/core/ig/proxy/e$3;-><init>(Lcom/doman/core/ig/proxy/e;)V

    invoke-virtual {v0, v1}, Lcom/mq/mgmi/client/message/h;->d(Lv7d;)Lggd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "onConnectionLost"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/mq/mgmi/client/message/n;

    if-eqz v1, :cond_1

    const-string v1, "MqttService.exception"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    const-string v1, "MqttService.exceptionStack"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v2, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, v1, v2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/e;->a()V

    return-void
.end method

.method public final a(Lyad;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deliveryComplete("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltod;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/doman/core/ig/proxy/e;->p:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/doman/core/ig/proxy/e;->q:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/String;Ljava/lang/String;Ltod;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MqttService.callbackAction"

    if-eqz v2, :cond_0

    const-string v3, "send"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.activityToken"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.invocationContext"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v2, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v3, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, v2, v3, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :cond_0
    const-string p1, "messageDelivered"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v1, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, p0, v1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    .line 12
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/doman/core/ig/proxy/e;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "connectExtended"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.reconnect"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "MqttService.serverURI"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object p2, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p1, p0, p2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Android offline"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "Reconnect myClient = null. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The client is connecting. Reconnect return directly."

    invoke-virtual {v0, v1, v2}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v0}, Lcom/doman/core/ig/proxy/MqttService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The network is not reachable. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    iget-boolean v0, v0, Lbmd;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "MqttConnection"

    const-string v3, "Requesting Automatic reconnect using New Java AC"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    iget-object v4, p0, Lcom/doman/core/ig/proxy/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.callbackAction"

    const-string v3, "connect"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    invoke-virtual {v2}, Lcom/mq/mgmi/client/message/h;->n()V
    :try_end_4
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "MqttConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occurred attempting to reconnect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mq/mgmi/client/message/n;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_6
    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->k:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/e;->l:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v3, "MqttConnection"

    const-string v4, "Do Real Reconnect!"

    invoke-virtual {v0, v3, v4}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    iget-object v4, p0, Lcom/doman/core/ig/proxy/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.callbackAction"

    const-string v4, "connect"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v3, Lcom/doman/core/ig/proxy/e$4;

    invoke-direct {v3, p0, v0, v0}, Lcom/doman/core/ig/proxy/e$4;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    iget-object v5, p0, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    invoke-virtual {v4, v5, v2, v3}, Lcom/mq/mgmi/client/message/h;->e(Lbmd;Ljava/lang/Object;Lv7d;)Lggd;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/doman/core/ig/proxy/e;->a(Z)V
    :try_end_7
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :goto_0
    :try_start_8
    iget-object v3, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot reconnect to remote server."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    new-instance v1, Lcom/mq/mgmi/client/message/n;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/mq/mgmi/client/message/n;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot reconnect to remote server."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mq/mgmi/client/message/n;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/doman/core/ig/proxy/e;->a(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method
