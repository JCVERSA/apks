.class public final Law0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field public final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law0;->b:[I

    iput-object p2, p0, Law0;->c:[J

    iput-object p3, p0, Law0;->d:[J

    iput-object p4, p0, Law0;->e:[J

    array-length p1, p1

    iput p1, p0, Law0;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Law0;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Law0;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    iget-object p0, p0, Law0;->e:[J

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lblb;->i([JJZZ)I

    move-result p0

    return p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Law0;->f:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 6

    invoke-virtual {p0, p1, p2}, Law0;->a(J)I

    move-result v0

    new-instance v1, Lla9;

    iget-object v2, p0, Law0;->e:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Law0;->c:[J

    aget-wide v4, v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lla9;-><init>(JJ)V

    iget-wide v2, v1, Lla9;->a:J

    cmp-long p1, v2, p1

    if-gez p1, :cond_1

    iget p1, p0, Law0;->a:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lla9;

    iget-object p2, p0, Law0;->e:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p2, v0

    iget-object p0, p0, Law0;->c:[J

    aget-wide v4, p0, v0

    invoke-direct {p1, v2, v3, v4, v5}, Lla9;-><init>(JJ)V

    new-instance p0, Lja9$a;

    invoke-direct {p0, v1, p1}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lja9$a;

    invoke-direct {p0, v1}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkIndex(length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Law0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Law0;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Law0;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Law0;->e:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Law0;->d:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
