.class final Lcom/google/android/play/core/review/internal/zzp;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/os/IBinder;

.field final synthetic zzb:Lhij;


# direct methods
.method public constructor <init>(Lhij;Landroid/os/IBinder;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/play/core/review/internal/zzp;->zza:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzp;->zza:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zze;->zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/review/internal/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzp;->zzb:Lhij;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lykj;->j(Lykj;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzp;->zzb:Lhij;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lykj;->n(Lykj;)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzp;->zzb:Lhij;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lykj;->i(Lykj;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzp;->zzb:Lhij;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lykj;->f(Lykj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzp;->zzb:Lhij;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lykj;->f(Lykj;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
