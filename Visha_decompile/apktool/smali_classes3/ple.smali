.class public final Lple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:Lmle;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lmle;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lple;->a:Lmle;

    iput p2, p0, Lple;->b:I

    iput-wide p3, p0, Lple;->c:J

    iget p1, p1, Lmle;->d:I

    int-to-long p1, p1

    sub-long/2addr p5, p3

    div-long/2addr p5, p1

    iput-wide p5, p0, Lple;->d:J

    invoke-direct {p0, p5, p6}, Lple;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lple;->e:J

    return-void
.end method

.method private final b(J)J
    .locals 8

    iget-object v0, p0, Lple;->a:Lmle;

    iget v0, v0, Lmle;->c:I

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    iget p0, p0, Lple;->b:I

    int-to-long v0, p0

    mul-long v1, p1, v0

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v7}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 13

    iget v0, p0, Lple;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lple;->a:Lmle;

    iget v3, v2, Lmle;->c:I

    int-to-long v3, v3

    mul-long/2addr v3, p1

    const-wide/32 v5, 0xf4240

    mul-long/2addr v0, v5

    div-long/2addr v3, v0

    sget v0, Lkfh;->a:I

    iget-wide v0, p0, Lple;->d:J

    const-wide/16 v5, -0x1

    add-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget v2, v2, Lmle;->d:I

    int-to-long v5, v2

    mul-long v7, v3, v5

    invoke-direct {p0, v3, v4}, Lple;->b(J)J

    move-result-wide v9

    iget-wide v11, p0, Lple;->c:J

    add-long/2addr v7, v11

    new-instance v2, Llae;

    invoke-direct {v2, v9, v10, v7, v8}, Llae;-><init>(JJ)V

    cmp-long p1, v9, p1

    if-gez p1, :cond_1

    cmp-long p1, v3, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1

    add-long/2addr v3, p1

    mul-long/2addr v5, v3

    add-long/2addr v11, v5

    invoke-direct {p0, v3, v4}, Lple;->b(J)J

    move-result-wide p0

    new-instance p2, Llae;

    invoke-direct {p2, p0, p1, v11, v12}, Llae;-><init>(JJ)V

    new-instance p0, Lz9e;

    invoke-direct {p0, v2, p2}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lz9e;

    invoke-direct {p0, v2, v2}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lple;->e:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
