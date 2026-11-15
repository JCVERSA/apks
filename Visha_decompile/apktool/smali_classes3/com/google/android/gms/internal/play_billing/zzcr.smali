.class final Lcom/google/android/gms/internal/play_billing/zzcr;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "SourceFile"


# instance fields
.field final transient zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lblf;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lblf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 0

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    aput-object p0, p1, p2

    const/4 p0, 0x1

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lxvf;
    .locals 1

    new-instance v0, Lblf;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcr;->zza:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lblf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
