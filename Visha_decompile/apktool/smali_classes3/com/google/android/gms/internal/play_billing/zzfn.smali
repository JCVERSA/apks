.class final Lcom/google/android/gms/internal/play_billing/zzfn;
.super Lcom/google/android/gms/internal/play_billing/zzfm;
.source "SourceFile"


# instance fields
.field private final zzb:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>(Lvxh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/play_billing/zzfn;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    return-object p0
.end method


# virtual methods
.method public final zza(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final zzc(III)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, p3}, Llqi;->b(I[BII)I

    move-result p0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length p0, p0

    return p0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object p0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfj;-><init>([BII)V

    return-object p2
.end method

.method public final zzf([BIII)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Ly2i;->y([BII)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    array-length v4, v2

    if-gt v4, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    if-gt v4, v3, :cond_3

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    invoke-static {v2, v3, p0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzi(Lcom/google/android/gms/internal/play_billing/zzfj;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb(Lcom/google/android/gms/internal/play_billing/zzfj;)I

    move-result p1

    invoke-static {v2, v3, p0, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfn;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ran off end of other: 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p0

    return p0
.end method
