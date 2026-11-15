.class public final Lmhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liqe;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "auxiliary.tracks.map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "auxiliary.tracks.offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "auxiliary.tracks.length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "auxiliary.tracks.interleaved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "com.android.capture.fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_1

    goto :goto_6

    :cond_1
    const/16 v0, 0x4b

    if-ne p4, v0, :cond_4

    array-length p4, p2

    if-ne p4, v4, :cond_3

    aget-byte p4, p2, v5

    if-eqz p4, :cond_2

    if-ne p4, v4, :cond_3

    :cond_2
    move p4, v0

    goto :goto_2

    :cond_3
    move p4, v0

    :cond_4
    move v4, v5

    :goto_2
    invoke-static {v4}, Ln7g;->d(Z)V

    goto :goto_6

    :cond_5
    if-nez p4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    invoke-static {v4}, Ln7g;->d(Z)V

    goto :goto_6

    :cond_7
    const/16 v0, 0x4e

    if-ne p4, v0, :cond_9

    array-length p4, p2

    const/16 v1, 0x8

    if-ne p4, v1, :cond_8

    move p4, v0

    goto :goto_4

    :cond_8
    move p4, v0

    :cond_9
    move v4, v5

    :goto_4
    invoke-static {v4}, Ln7g;->d(Z)V

    goto :goto_6

    :cond_a
    const/16 v0, 0x17

    if-ne p4, v0, :cond_c

    array-length p4, p2

    if-ne p4, v3, :cond_b

    move p4, v0

    goto :goto_5

    :cond_b
    move p4, v0

    :cond_c
    move v4, v5

    :goto_5
    invoke-static {v4}, Ln7g;->d(Z)V

    :goto_6
    iput-object p1, p0, Lmhh;->a:Ljava/lang/String;

    iput-object p2, p0, Lmhh;->b:[B

    iput p3, p0, Lmhh;->c:I

    iput p4, p0, Lmhh;->d:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7438daab -> :sswitch_4
        -0x100eb5d5 -> :sswitch_3
        0x3c4d37e4 -> :sswitch_2
        0x41766191 -> :sswitch_1
        0x7755f91e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lune;)V
    .locals 0

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lmhh;->a:Ljava/lang/String;

    const-string v1, "auxiliary.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Metadata is not an auxiliary tracks map"

    invoke-static {v0, v1}, Ln7g;->g(ZLjava/lang/Object;)V

    iget-object p0, p0, Lmhh;->b:[B

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lmhh;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lmhh;

    iget-object v2, p0, Lmhh;->a:Ljava/lang/String;

    iget-object v3, p1, Lmhh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmhh;->b:[B

    iget-object v3, p1, Lmhh;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lmhh;->c:I

    iget v3, p1, Lmhh;->c:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lmhh;->d:I

    iget p1, p1, Lmhh;->d:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lmhh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lmhh;->b:[B

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lmhh;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lmhh;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    iget v1, p0, Lmhh;->d:I

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    const/16 v3, 0x17

    if-eq v1, v3, :cond_3

    const/16 v3, 0x43

    if-eq v1, v3, :cond_2

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_1

    const/16 v3, 0x4e

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmhh;->b:[B

    new-instance v1, Lu4h;

    invoke-direct {v1, v0}, Lu4h;-><init>([B)V

    invoke-virtual {v1}, Lu4h;->Q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lmhh;->b:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lmhh;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/s7;->d([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmhh;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/s7;->d([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmhh;->b:[B

    invoke-static {v0}, Lkfh;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lmhh;->a:Ljava/lang/String;

    const-string v3, "auxiliary.tracks.map"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lmhh;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track types = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v1, v0, v2}, Lo2i;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v1, p0, Lmhh;->b:[B

    sget v3, Lkfh;->a:I

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v3, v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object p0, p0, Lmhh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdta: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
