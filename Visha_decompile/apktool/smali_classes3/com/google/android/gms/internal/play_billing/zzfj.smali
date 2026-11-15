.class final Lcom/google/android/gms/internal/play_billing/zzfj;
.super Lcom/google/android/gms/internal/play_billing/zzfm;
.source "SourceFile"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>(Lvxh;)V

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/play_billing/zzfj;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    return p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/play_billing/zzfj;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    return-object p0
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    add-int/2addr v0, p1

    aget-byte p0, p0, v0

    return p0
.end method

.method public final zzc(III)I
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    invoke-static {p1, p2, p0, p3}, Llqi;->b(I[BII)I

    move-result p0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    return p0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    add-int/2addr p0, p1

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfj;-><init>([BII)V

    return-object p1
.end method

.method public final zzf([BIII)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    const/4 p3, 0x0

    invoke-static {p2, p0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzg(Lsrh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ly2i;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    invoke-virtual {p1, v0, v1, p0}, Ly2i;->y([BII)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v2

    if-gt v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v2

    if-gt v1, v2, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb(Lcom/google/android/gms/internal/play_billing/zzfn;)[B

    move-result-object p1

    invoke-static {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:[B

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    invoke-static {v0, p0, v2, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzc:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
