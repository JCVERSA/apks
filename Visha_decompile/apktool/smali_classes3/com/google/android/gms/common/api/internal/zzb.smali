.class final Lcom/google/android/gms/common/api/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ltk5;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/common/api/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/u;Ltk5;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzc:Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzc:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->k()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->l()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->l()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ltk5;->f(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->k()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    invoke-virtual {v1}, Ltk5;->j()V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->k()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    invoke-virtual {v1}, Ltk5;->h()V

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->k()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    invoke-virtual {v1}, Ltk5;->k()V

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->k()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ltk5;

    invoke-virtual {p0}, Ltk5;->g()V

    :cond_5
    return-void
.end method
