.class public final Lzfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final synthetic a:Lbge;


# direct methods
.method public synthetic constructor <init>(Lbge;Lage;)V
    .locals 0

    iput-object p1, p0, Lzfe;->a:Lbge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 8

    iget-object p0, p0, Lzfe;->a:Lbge;

    invoke-static {p0}, Lbge;->f(Lbge;)Lmge;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmge;->f(J)J

    move-result-wide v0

    invoke-static {p0}, Lbge;->d(Lbge;)J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0}, Lbge;->c(Lbge;)J

    move-result-wide v4

    invoke-static {p0}, Lbge;->d(Lbge;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0}, Lbge;->e(Lbge;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    invoke-static {p0}, Lbge;->d(Lbge;)J

    move-result-wide v0

    invoke-static {p0}, Lbge;->c(Lbge;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    sget p0, Lkfh;->a:I

    const-wide/16 v6, -0x7530

    add-long/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance p0, Lz9e;

    new-instance v2, Llae;

    invoke-direct {v2, p1, p2, v0, v1}, Llae;-><init>(JJ)V

    invoke-direct {p0, v2, v2}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final zza()J
    .locals 3

    iget-object p0, p0, Lzfe;->a:Lbge;

    invoke-static {p0}, Lbge;->f(Lbge;)Lmge;

    move-result-object v0

    invoke-static {p0}, Lbge;->e(Lbge;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmge;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
