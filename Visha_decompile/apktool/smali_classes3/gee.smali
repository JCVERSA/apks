.class public final Lgee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu9e;

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:[J


# direct methods
.method public constructor <init>(Lu9e;JJ[JII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu9e;

    invoke-direct {v0, p1}, Lu9e;-><init>(Lu9e;)V

    iput-object v0, p0, Lgee;->a:Lu9e;

    iput-wide p2, p0, Lgee;->b:J

    iput-wide p4, p0, Lgee;->c:J

    iput-object p6, p0, Lgee;->f:[J

    iput p7, p0, Lgee;->d:I

    iput p8, p0, Lgee;->e:I

    return-void
.end method

.method public static b(Lu9e;Lu4h;)Lgee;
    .locals 14

    invoke-virtual {p1}, Lu4h;->A()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lu4h;->J()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lu4h;->O()J

    move-result-wide v3

    :goto_1
    move-wide v9, v3

    goto :goto_2

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1

    :goto_2
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const/16 v3, 0x64

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_2

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    move-object v11, v5

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    move-object v11, v3

    :goto_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lu4h;->m(I)V

    :cond_4
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_5

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->I()I

    move-result p1

    shr-int/lit8 v2, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    move v13, p1

    move v12, v2

    goto :goto_5

    :cond_5
    move v12, v2

    move v13, v12

    :goto_5
    int-to-long v7, v1

    new-instance p1, Lgee;

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Lgee;-><init>(Lu9e;JJ[JII)V

    return-object p1
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget-wide v0, p0, Lgee;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgee;->a:Lu9e;

    iget v4, p0, Lu9e;->g:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    iget p0, p0, Lu9e;->d:I

    invoke-static {v0, v1, p0}, Lkfh;->O(JI)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
