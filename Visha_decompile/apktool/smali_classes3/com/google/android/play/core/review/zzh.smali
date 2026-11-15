.class final Lcom/google/android/play/core/review/zzh;
.super Lcom/google/android/play/core/review/zzg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln1j;Lzda;Ljava/lang/String;)V
    .locals 1

    new-instance p3, Lo1j;

    const-string v0, "OnRequestInstallCallback"

    invoke-direct {p3, v0}, Lo1j;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/play/core/review/zzg;-><init>(Ln1j;Lo1j;Lzda;)V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/play/core/review/zzg;->zzb(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "is_review_no_op"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Lcom/google/android/play/core/review/zza;

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/review/zza;-><init>(Landroid/app/PendingIntent;Z)V

    iget-object p0, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lzda;

    invoke-virtual {p0, v1}, Lzda;->e(Ljava/lang/Object;)Z

    return-void
.end method
