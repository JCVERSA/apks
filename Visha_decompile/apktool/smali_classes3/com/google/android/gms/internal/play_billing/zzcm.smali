.class final Lcom/google/android/gms/internal/play_billing/zzcm;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "SourceFile"


# instance fields
.field public final transient b:Lcom/google/android/gms/internal/play_billing/zzcd;

.field public final transient c:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcd;Lcom/google/android/gms/internal/play_billing/zzca;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->b:Lcom/google/android/gms/internal/play_billing/zzcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->c:Lcom/google/android/gms/internal/play_billing/zzca;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->b:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->c:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Laxf;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->b:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->c:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbx;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->c:Lcom/google/android/gms/internal/play_billing/zzca;

    return-object p0
.end method

.method public final zze()Lxvf;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->c:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Laxf;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
