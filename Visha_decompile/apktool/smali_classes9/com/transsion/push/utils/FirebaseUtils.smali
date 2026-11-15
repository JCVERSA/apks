.class public abstract Lcom/transsion/push/utils/FirebaseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/utils/FirebaseUtils$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/push/utils/FirebaseUtils;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/push/utils/FirebaseUtils;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/transsion/push/utils/FirebaseUtils;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/push/utils/FirebaseUtils;->g(I)V

    return-void
.end method

.method public static synthetic c(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/push/utils/FirebaseUtils;->d(I)V

    return-void
.end method

.method public static d(I)V
    .locals 1

    new-instance v0, Lcom/transsion/push/utils/FirebaseUtils$1;

    invoke-direct {v0, p0}, Lcom/transsion/push/utils/FirebaseUtils$1;-><init>(I)V

    invoke-static {v0}, Lcom/transsion/push/utils/FirebaseUtils;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e()Z
    .locals 1

    :try_start_0
    sget-object v0, Lzv3;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/FirebaseUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static g(I)V
    .locals 4

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateToken retry exhausted after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " retries"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    sget-object p0, Lcom/transsion/push/utils/FirebaseUtils;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    add-int/lit8 p0, p0, 0x1

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToken retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/push/utils/FirebaseUtils;->a:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/push/utils/FirebaseUtils$2;

    invoke-direct {v1, p0}, Lcom/transsion/push/utils/FirebaseUtils$2;-><init>(I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static h()V
    .locals 3

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "firebase not integrated"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/FirebaseUtils;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "updateToken already in progress, skip"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v2}, Lcom/transsion/push/utils/FirebaseUtils;->d(I)V

    return-void
.end method

.method public static i(Lcom/transsion/push/utils/FirebaseUtils$a;)V
    .locals 2

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "firebase  is not integrated"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/push/utils/FirebaseUtils$a;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/transsion/push/utils/FirebaseUtils$3;

    invoke-direct {v0, p0}, Lcom/transsion/push/utils/FirebaseUtils$3;-><init>(Lcom/transsion/push/utils/FirebaseUtils$a;)V

    invoke-static {v0}, Lcom/transsion/push/utils/FirebaseUtils;->f(Ljava/lang/Runnable;)V

    return-void
.end method
