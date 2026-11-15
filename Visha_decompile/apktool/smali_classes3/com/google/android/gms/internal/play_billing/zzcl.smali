.class final Lcom/google/android/gms/internal/play_billing/zzcl;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "SourceFile"


# instance fields
.field public final transient b:Lcom/google/android/gms/internal/play_billing/zzcd;

.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcd;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->b:Lcom/google/android/gms/internal/play_billing/zzcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->c:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->d:I

    return-void
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/play_billing/zzcl;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->d:I

    return p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/play_billing/zzcl;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->c:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->b:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Laxf;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->d:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbx;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zze()Lxvf;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzd()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

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

.method public final zzi()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzck;-><init>(Lcom/google/android/gms/internal/play_billing/zzcl;)V

    return-object v0
.end method
