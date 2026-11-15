.class public abstract Lcom/cloud/tupdate/config/AbsConfigStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tupdate/config/AbsConfigStore;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cloud/tupdate/config/AbsConfigStore;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lcom/cloud/tupdate/config/AbsConfigStore;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/cloud/tupdate/config/AbsConfigStore;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/config/AbsConfigStore;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public final d(Lre1;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tupdate/config/AbsConfigStore;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;-><init>(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
