.class public final Lcom/google/android/gms/iid/zzi;
.super Landroid/os/Binder;
.source "source.java"


# instance fields
.field private final zzbm:Lcom/google/android/gms/iid/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zze;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/iid/zzi;->zzbm:Lcom/google/android/gms/iid/zze;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/iid/zzi;)Lcom/google/android/gms/iid/zze;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/iid/zzi;->zzbm:Lcom/google/android/gms/iid/zze;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/iid/zzg;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/iid/zzi;->zzbm:Lcom/google/android/gms/iid/zze;

    iget-object v0, v0, Lcom/google/android/gms/iid/zze;->zzbb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/iid/zzj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/iid/zzj;-><init>(Lcom/google/android/gms/iid/zzi;Lcom/google/android/gms/iid/zzg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
