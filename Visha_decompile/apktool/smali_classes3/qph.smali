.class public abstract Lqph;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a([BILqoh;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lqph;->i([BILqoh;)I

    move-result p1

    iget v0, p2, Lqoh;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    iput-object p0, p2, Lqoh;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p0

    iput-object p0, p2, Lqoh;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static c(Lu1j;[BIIILqoh;)I
    .locals 8

    invoke-interface {p0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lqph;->m(Ljava/lang/Object;Lu1j;[BIIILqoh;)I

    move-result p1

    invoke-interface {p0, v7}, Lu1j;->a(Ljava/lang/Object;)V

    iput-object v7, p5, Lqoh;->c:Ljava/lang/Object;

    return p1
.end method

.method public static d(Lu1j;[BIILqoh;)I
    .locals 7

    invoke-interface {p0}, Lu1j;->zze()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lqph;->n(Ljava/lang/Object;Lu1j;[BIILqoh;)I

    move-result p1

    invoke-interface {p0, v6}, Lu1j;->a(Ljava/lang/Object;)V

    iput-object v6, p4, Lqoh;->c:Ljava/lang/Object;

    return p1
.end method

.method public static e(Lu1j;I[BIILnpi;Lqoh;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lqph;->d(Lu1j;[BIILqoh;)I

    move-result p3

    iget-object v0, p6, Lqoh;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, p6, Lqoh;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lqph;->d(Lu1j;[BIILqoh;)I

    move-result p3

    iget-object v0, p6, Lqoh;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static f([BILnpi;Lqoh;)I
    .locals 3

    check-cast p2, Lmmi;

    invoke-static {p0, p1, p3}, Lqph;->i([BILqoh;)I

    move-result p1

    iget v0, p3, Lqoh;->a:I

    if-ltz v0, :cond_3

    array-length v1, p0

    sub-int/2addr v1, p1

    const-string v2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v0, v1, :cond_2

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lqph;->i([BILqoh;)I

    move-result p1

    iget v1, p3, Lqoh;->a:I

    invoke-virtual {p2, v1}, Lmmi;->zzh(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([BILqoh;)I
    .locals 10

    invoke-static {p0, p1, p2}, Lqph;->i([BILqoh;)I

    move-result p1

    iget v0, p2, Lqoh;->a:I

    if-ltz v0, :cond_b

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lqoh;->c:Ljava/lang/Object;

    return p1

    :cond_0
    sget v1, Ll4j;->a:I

    array-length v1, p0

    sub-int v2, v1, p1

    or-int v3, p1, v0

    sub-int/2addr v2, v0

    or-int/2addr v2, v3

    if-ltz v2, :cond_a

    add-int v1, p1, v0

    new-array v0, v0, [C

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    if-ge p1, v1, :cond_1

    aget-byte v3, p0, p1

    invoke-static {v3}, La4j;->d(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_1
    move v9, v2

    :cond_2
    :goto_1
    if-ge p1, v1, :cond_9

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    invoke-static {v3}, La4j;->d(B)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 p1, v9, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v9

    move v9, p1

    move p1, v2

    :goto_2
    if-ge p1, v1, :cond_2

    aget-byte v2, p0, p1

    invoke-static {v2}, La4j;->d(B)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v9, 0x1

    int-to-char v2, v2

    aput-char v2, v0, v9

    move v9, v3

    goto :goto_2

    :cond_3
    const/16 v4, -0x20

    const-string v5, "Protocol message had invalid UTF-8."

    if-ge v3, v4, :cond_5

    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 p1, p1, 0x2

    aget-byte v2, p0, v2

    invoke-static {v3, v2, v0, v9}, La4j;->c(BB[CI)V

    :goto_3
    move v9, v4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v4, -0x10

    if-ge v3, v4, :cond_7

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_6

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v5, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte v5, p0, v5

    invoke-static {v3, v2, v5, v0, v9}, La4j;->b(BBB[CI)V

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_8

    add-int/lit8 v4, p1, 0x2

    aget-byte v5, p0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    aget-byte v6, p0, v2

    move v2, v3

    move v3, v5

    move v5, v6

    move-object v6, v0

    move v7, v9

    invoke-static/range {v2 .. v7}, La4j;->a(BBBB[CI)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object p0, p2, Lqoh;->c:Ljava/lang/Object;

    return v1

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(I[BIILi3j;Lqoh;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Lqph;->b([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Li3j;->j(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Li3j;->f()Li3j;

    move-result-object v1

    iget v3, p5, Lqoh;->e:I

    add-int/2addr v3, v2

    iput v3, p5, Lqoh;->e:I

    invoke-static {v3}, Lqph;->q(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lqph;->i([BILqoh;)I

    move-result v5

    iget v2, p5, Lqoh;->a:I

    if-ne v2, v0, :cond_2

    move p2, v5

    goto :goto_1

    :cond_2
    move v3, v2

    move-object v4, p1

    move v6, p3

    move-object v7, v1

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lqph;->h(I[BIILi3j;Lqoh;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p5, Lqoh;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lqoh;->e:I

    if-gt p2, p3, :cond_4

    if-ne v2, v0, :cond_4

    invoke-virtual {p4, p0, v1}, Li3j;->j(ILjava/lang/Object;)V

    return p2

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lqph;->i([BILqoh;)I

    move-result p2

    iget p3, p5, Lqoh;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p4, p0, p1}, Li3j;->j(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Li3j;->j(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p1, p2}, Lqph;->p([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Li3j;->j(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lqph;->l([BILqoh;)I

    move-result p1

    iget-wide p2, p5, Lqoh;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Li3j;->j(ILjava/lang/Object;)V

    return p1

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i([BILqoh;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lqoh;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lqph;->j(I[BILqoh;)I

    move-result p0

    return p0
.end method

.method public static j(I[BILqoh;)I
    .locals 2

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_0

    shl-int/lit8 p1, v0, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lqoh;->a:I

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v1

    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lqoh;->a:I

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    shl-int/lit8 p1, v0, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lqoh;->a:I

    return v1

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v1

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lqoh;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Lqoh;->a:I

    return v0
.end method

.method public static k(I[BIILnpi;Lqoh;)I
    .locals 2

    check-cast p4, Lmmi;

    invoke-static {p1, p2, p5}, Lqph;->i([BILqoh;)I

    move-result p2

    iget v0, p5, Lqoh;->a:I

    invoke-virtual {p4, v0}, Lmmi;->zzh(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lqph;->i([BILqoh;)I

    move-result v0

    iget v1, p5, Lqoh;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lqph;->i([BILqoh;)I

    move-result p2

    iget v0, p5, Lqoh;->a:I

    invoke-virtual {p4, v0}, Lmmi;->zzh(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static l([BILqoh;)I
    .locals 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    add-int/lit8 v3, p1, 0x1

    if-ltz v2, :cond_0

    iput-wide v0, p2, Lqoh;->b:J

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x2

    aget-byte v2, p0, v3

    and-int/lit8 v3, v2, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    move v3, v5

    :goto_0
    if-gez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lqoh;->b:J

    return p1
.end method

.method public static m(Ljava/lang/Object;Lu1j;[BIIILqoh;)I
    .locals 7

    move-object v0, p1

    check-cast v0, Lq0j;

    iget p1, p6, Lqoh;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p6, Lqoh;->e:I

    invoke-static {p1}, Lqph;->q(I)V

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lq0j;->w(Ljava/lang/Object;[BIIILqoh;)I

    move-result p1

    iget p2, p6, Lqoh;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lqoh;->e:I

    iput-object p0, p6, Lqoh;->c:Ljava/lang/Object;

    return p1
.end method

.method public static n(Ljava/lang/Object;Lu1j;[BIILqoh;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lqph;->j(I[BILqoh;)I

    move-result v0

    iget p3, p5, Lqoh;->a:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    iget p4, p5, Lqoh;->e:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lqoh;->e:I

    invoke-static {p4}, Lqph;->q(I)V

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lu1j;->c(Ljava/lang/Object;[BIILqoh;)V

    iget p1, p5, Lqoh;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lqoh;->e:I

    iput-object p0, p5, Lqoh;->c:Ljava/lang/Object;

    return p3

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(I[BIILqoh;)I
    .locals 4

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_8

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    iget v0, p4, Lqoh;->e:I

    add-int/2addr v0, v2

    iput v0, p4, Lqoh;->e:I

    invoke-static {v0}, Lqph;->q(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p4}, Lqph;->i([BILqoh;)I

    move-result p2

    iget v0, p4, Lqoh;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lqph;->o(I[BIILqoh;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p4, Lqoh;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p4, Lqoh;->e:I

    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1, p2, p4}, Lqph;->i([BILqoh;)I

    move-result p0

    iget p1, p4, Lqoh;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_7
    invoke-static {p1, p2, p4}, Lqph;->l([BILqoh;)I

    move-result p0

    return p0

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p([BI)J
    .locals 18

    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static q(I)V
    .locals 1

    sget v0, Lqph;->a:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    throw p0
.end method
