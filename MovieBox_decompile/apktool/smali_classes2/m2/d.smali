.class final Lm2/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lm2/a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lm2/d;->a:I

    .line 5
    .line 6
    iput p2, p0, Lm2/d;->b:I

    .line 7
    .line 8
    iput p3, p0, Lm2/d;->c:I

    .line 9
    .line 10
    iput p4, p0, Lm2/d;->d:I

    .line 11
    .line 12
    iput p5, p0, Lm2/d;->e:I

    .line 13
    .line 14
    iput p6, p0, Lm2/d;->f:I

    .line 15
    .line 16
    iput p7, p0, Lm2/d;->g:I

    .line 17
    .line 18
    return-void
.end method

.method public static c(Landroidx/media3/common/util/j0;)Lm2/d;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    new-instance p0, Lm2/d;

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v7}, Lm2/d;-><init>(IIIIIII)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 7

    .line 1
    iget v0, p0, Lm2/d;->e:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    iget v0, p0, Lm2/d;->c:I

    .line 5
    .line 6
    int-to-long v3, v0

    .line 7
    const-wide/32 v5, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long/2addr v3, v5

    .line 11
    iget v0, p0, Lm2/d;->d:I

    .line 12
    .line 13
    int-to-long v5, v0

    .line 14
    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lm2/d;->a:I

    .line 2
    .line 3
    const v1, 0x73646976

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const v1, 0x73647561

    .line 9
    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const v1, 0x73747874

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "Found unsupported streamType fourCC: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lm2/d;->a:I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "AviStreamHeaderChunk"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    return v0

    .line 48
    :cond_0
    const/4 v0, 0x3

    .line 49
    return v0

    .line 50
    :cond_1
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_2
    const/4 v0, 0x2

    .line 53
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    const v0, 0x68727473

    .line 2
    .line 3
    .line 4
    return v0
.end method
