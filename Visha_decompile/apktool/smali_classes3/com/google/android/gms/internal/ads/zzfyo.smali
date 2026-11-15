.class final Lcom/google/android/gms/internal/ads/zzfyo;
.super Lcom/google/android/gms/internal/ads/zzfxb;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/Object;

.field static final zza:Lcom/google/android/gms/internal/ads/zzfyo;


# instance fields
.field public final transient b:I

.field public final transient c:I

.field public final transient d:I

.field final transient zzb:[Ljava/lang/Object;

.field final transient zzc:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/google/android/gms/internal/ads/zzfyo;->e:[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyo;->zza:Lcom/google/android/gms/internal/ads/zzfyo;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfyo;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfyo;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfyo;->d:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzc:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Li4i;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfyo;->c:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->b:I

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzd()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzu(I)Ly5i;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->d:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->d:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p0

    return p2
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->d:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()Lx5i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzd()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzu(I)Ly5i;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzb:[Ljava/lang/Object;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->zzb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfyo;->d:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public final zzu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
