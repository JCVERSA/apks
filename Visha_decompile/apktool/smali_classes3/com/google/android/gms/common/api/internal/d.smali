.class public final Lcom/google/android/gms/common/api/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/d$a;,
        Lcom/google/android/gms/common/api/internal/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lcom/google/android/gms/common/api/internal/d$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvn4;

    invoke-direct {v0, p1}, Lvn4;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->a:Ljava/util/concurrent/Executor;

    const-string p1, "Listener must not be null"

    invoke-static {p2, p1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->b:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/common/api/internal/d$a;

    invoke-static {p3}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/d$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->c:Lcom/google/android/gms/common/api/internal/d$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->c:Lcom/google/android/gms/common/api/internal/d$a;

    return-void
.end method

.method public b()Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->c:Lcom/google/android/gms/common/api/internal/d$a;

    return-object p0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 1

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/internal/d$b;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/d$b;->b()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/internal/d$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/d$b;->b()V

    throw p0
.end method
