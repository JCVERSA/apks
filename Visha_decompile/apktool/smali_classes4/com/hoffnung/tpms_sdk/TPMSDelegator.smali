.class public Lcom/hoffnung/tpms_sdk/TPMSDelegator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoffnung/tpms_sdk/TPMSDelegator$b;,
        Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;
    }
.end annotation


# static fields
.field public static h:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/hoffnung/a/b;

.field public c:Landroid/os/Handler;

.field public d:Landroid/os/HandlerThread;

.field public e:Landroid/content/Intent;

.field public f:Ljava/util/List;

.field public g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    invoke-direct {v0, p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)V

    iput-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->a:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e:Landroid/content/Intent;

    const-string v0, "com.hoffnung"

    const-string v1, "com.hoffnung.external.ExternalService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TPMSDelegator"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->f:Ljava/util/List;

    const-string p0, "TPMS SDK version = 1.0.3"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/a/b;)Lcom/hoffnung/a/b;
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b:Lcom/hoffnung/a/b;

    return-object p1
.end method

.method public static synthetic b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic e(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b:Lcom/hoffnung/a/b;

    return-object p0
.end method

.method public static synthetic h(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e:Landroid/content/Intent;

    return-object p0
.end method

.method public static i()Lcom/hoffnung/tpms_sdk/TPMSDelegator;
    .locals 1

    sget-object v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->h:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-direct {v0, p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->h:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c:Landroid/os/Handler;

    new-instance v1, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;

    invoke-direct {v1, p0, p1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k(ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c:Landroid/os/Handler;

    new-instance p2, Lcom/hoffnung/tpms_sdk/TPMSDelegator$9;

    invoke-direct {p2, p0, p4}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$9;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v6, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V

    invoke-virtual {p0, v6}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c(Ljava/lang/Runnable;)V

    return-void
.end method
