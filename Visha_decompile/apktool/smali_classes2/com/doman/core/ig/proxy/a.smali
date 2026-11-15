.class final Lcom/doman/core/ig/proxy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private c:Lcom/doman/core/ig/proxy/MqttService;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lcom/doman/core/ig/proxy/a;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/doman/core/ig/proxy/a;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/a;->f:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/a;->c:Lcom/doman/core/ig/proxy/MqttService;

    iput-object p0, p0, Lcom/doman/core/ig/proxy/a;->e:Lcom/doman/core/ig/proxy/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Neither service nor client can be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/a;)Lcom/doman/core/ig/proxy/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/a;->e:Lcom/doman/core/ig/proxy/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/doman/core/ig/proxy/a;)Lcom/mq/mgmi/client/message/internal/ClientComms;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/a;->b:Lcom/mq/mgmi/client/message/internal/ClientComms;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/a;->f:Z

    return-void
.end method

.method public final a(Lcom/mq/mgmi/client/message/internal/ClientComms;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/doman/core/ig/proxy/a$a;

    invoke-direct {p1, p0}, Lcom/doman/core/ig/proxy/a$a;-><init>(Lcom/doman/core/ig/proxy/a;)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/a;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method
