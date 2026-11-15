.class public Lcom/transsion/playercommon/player/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/player/a$a;
    }
.end annotation


# static fields
.field public static volatile e:Lcom/transsion/playercommon/player/a; = null

.field public static f:Z = true


# instance fields
.field public a:Z

.field public b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Lcom/transsion/hubsdk/api/app/TranActivityManager;

.field public d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a()Lcom/transsion/playercommon/player/a;
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/player/a;->e:Lcom/transsion/playercommon/player/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/playercommon/player/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/playercommon/player/a;->e:Lcom/transsion/playercommon/player/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/playercommon/player/a;

    invoke-direct {v1}, Lcom/transsion/playercommon/player/a;-><init>()V

    sput-object v1, Lcom/transsion/playercommon/player/a;->e:Lcom/transsion/playercommon/player/a;

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
    sget-object v0, Lcom/transsion/playercommon/player/a;->e:Lcom/transsion/playercommon/player/a;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/player/a;->a:Z

    return p0
.end method

.method public c(Lcom/transsion/playercommon/player/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/transsion/playercommon/player/a;->a:Z

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/player/a$a;->b(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    sget-boolean v0, Lcom/transsion/playercommon/player/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/player/a;->d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/player/a;->d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->setLedMusicPlay(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->c:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    if-nez v1, :cond_3

    new-instance v1, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v1}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/player/a;->c:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    :cond_3
    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->c:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->setLedMusicPlay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sput-boolean v0, Lcom/transsion/playercommon/player/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/player/a;->c:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    iput-object v0, p0, Lcom/transsion/playercommon/player/a;->d:Lcom/transsion/hubsdk/api/lighting/TranLightingManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLedMusicPlay "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalPlayManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/playercommon/player/a;->a:Z

    iget-object p0, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/player/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/a$a;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lcom/transsion/playercommon/player/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/player/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
