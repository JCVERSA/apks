.class public final Lqr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;
.implements Lja9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr6$a;
    }
.end annotation


# static fields
.field public static final y:Luk3;


# instance fields
.field public final a:I

.field public final b:Lqw7;

.field public final c:Lqw7;

.field public final d:Lqw7;

.field public final e:Lqw7;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Lna9;

.field public final h:Ljava/util/List;

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:Lqw7;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Lqk3;

.field public s:[Lqr6$a;

.field public t:[[J

.field public u:I

.field public v:J

.field public w:I

.field public x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnr6;

    invoke-direct {v0}, Lnr6;-><init>()V

    sput-object v0, Lqr6;->y:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lqr6;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lqr6;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    iput p1, p0, Lqr6;->i:I

    .line 5
    new-instance p1, Lna9;

    invoke-direct {p1}, Lna9;-><init>()V

    iput-object p1, p0, Lqr6;->g:Lna9;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqr6;->h:Ljava/util/List;

    .line 7
    new-instance p1, Lqw7;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lqr6;->e:Lqw7;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Lqw7;

    sget-object v2, Lay6;->a:[B

    invoke-direct {p1, v2}, Lqw7;-><init>([B)V

    iput-object p1, p0, Lqr6;->b:Lqw7;

    .line 10
    new-instance p1, Lqw7;

    invoke-direct {p1, v0}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lqr6;->c:Lqw7;

    .line 11
    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lqr6;->d:Lqw7;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lqr6;->n:I

    .line 13
    sget-object p1, Lqk3;->C1:Lqk3;

    iput-object p1, p0, Lqr6;->r:Lqk3;

    .line 14
    new-array p1, v1, [Lqr6$a;

    iput-object p1, p0, Lqr6;->s:[Lqr6$a;

    return-void
.end method

.method public static synthetic d(Ltua;)Ltua;
    .locals 0

    invoke-static {p0}, Lqr6;->l(Ltua;)Ltua;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()[Lnk3;
    .locals 1

    invoke-static {}, Lqr6;->m()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static g([Lqr6$a;)[[J
    .locals 15

    array-length v0, p0

    new-array v0, v0, [[J

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    new-array v2, v2, [J

    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-object v6, p0, v5

    iget-object v6, v6, Lqr6$a;->b:Lgva;

    iget v6, v6, Lgva;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    aget-object v6, p0, v5

    iget-object v6, v6, Lqr6$a;->b:Lgva;

    iget-object v6, v6, Lgva;->f:[J

    aget-wide v6, v6, v4

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move v7, v4

    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move v11, v4

    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    move v10, v11

    move-wide v8, v12

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget v8, v1, v10

    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    aget-object v11, p0, v10

    iget-object v11, v11, Lqr6$a;->b:Lgva;

    iget-object v12, v11, Lgva;->d:[I

    aget v12, v12, v8

    int-to-long v12, v12

    add-long/2addr v5, v12

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aput v8, v1, v10

    array-length v9, v9

    if-ge v8, v9, :cond_3

    iget-object v9, v11, Lgva;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    :cond_3
    aput-boolean v12, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static j(Lgva;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lgva;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lgva;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static synthetic l(Ltua;)Ltua;
    .locals 0

    return-object p0
.end method

.method public static synthetic m()[Lnk3;
    .locals 3

    new-instance v0, Lqr6;

    invoke-direct {v0}, Lqr6;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static n(Lgva;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lqr6;->j(Lgva;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lgva;->c:[J

    aget-wide p0, p0, p1

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static r(Lqw7;)I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lqr6;->f(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lqw7;->P(I)V

    :cond_1
    invoke-virtual {p0}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lqw7;->n()I

    move-result v0

    invoke-static {v0}, Lqr6;->f(I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static y(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static z(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A(Lqr6$a;J)V
    .locals 2

    iget-object p0, p1, Lqr6$a;->b:Lgva;

    invoke-virtual {p0, p2, p3}, Lgva;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgva;->b(J)I

    move-result v0

    :cond_0
    iput v0, p1, Lqr6$a;->e:I

    return-void
.end method

.method public a(Lqk3;)V
    .locals 0

    iput-object p1, p0, Lqr6;->r:Lqk3;

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 2

    :cond_0
    iget v0, p0, Lqr6;->i:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lqr6;->x(Lpk3;Lid8;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lqr6;->w(Lpk3;Lid8;)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lqr6;->v(Lpk3;Lid8;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_4
    invoke-virtual {p0, p1}, Lqr6;->u(Lpk3;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public c(Lpk3;)Z
    .locals 0

    iget p0, p0, Lqr6;->a:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Llr9;->d(Lpk3;Z)Z

    move-result p0

    return p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lqr6;->v:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lqr6;->i(JI)Lja9$a;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqr6;->i:I

    iput v0, p0, Lqr6;->l:I

    return-void
.end method

.method public i(JI)Lja9$a;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Lqr6;->s:[Lqr6$a;

    array-length v5, v4

    if-nez v5, :cond_0

    new-instance v0, Lja9$a;

    sget-object v1, Lla9;->c:Lla9;

    invoke-direct {v0, v1}, Lja9$a;-><init>(Lla9;)V

    return-object v0

    :cond_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    iget v6, v0, Lqr6;->u:I

    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v9, -0x1

    if-eq v6, v5, :cond_4

    aget-object v4, v4, v6

    iget-object v4, v4, Lqr6$a;->b:Lgva;

    invoke-static {v4, v1, v2}, Lqr6;->j(Lgva;J)I

    move-result v6

    if-ne v6, v5, :cond_2

    new-instance v0, Lja9$a;

    sget-object v1, Lla9;->c:Lla9;

    invoke-direct {v0, v1}, Lja9$a;-><init>(Lla9;)V

    return-object v0

    :cond_2
    iget-object v11, v4, Lgva;->f:[J

    aget-wide v11, v11, v6

    iget-object v13, v4, Lgva;->c:[J

    aget-wide v13, v13, v6

    cmp-long v15, v11, v1

    if-gez v15, :cond_3

    iget v15, v4, Lgva;->b:I

    add-int/lit8 v15, v15, -0x1

    if-ge v6, v15, :cond_3

    invoke-virtual {v4, v1, v2}, Lgva;->b(J)I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    iget-object v2, v4, Lgva;->f:[J

    aget-wide v9, v2, v1

    iget-object v2, v4, Lgva;->c:[J

    aget-wide v1, v2, v1

    goto :goto_1

    :cond_3
    move-wide v1, v9

    move-wide v9, v7

    :goto_1
    move-wide/from16 v16, v1

    move-wide v1, v11

    move-wide/from16 v11, v16

    goto :goto_2

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    move-wide v11, v9

    move-wide v9, v7

    :goto_2
    if-ne v3, v5, :cond_7

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lqr6;->s:[Lqr6$a;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    iget v5, v0, Lqr6;->u:I

    if-eq v3, v5, :cond_6

    aget-object v4, v4, v3

    iget-object v4, v4, Lqr6$a;->b:Lgva;

    invoke-static {v4, v1, v2, v13, v14}, Lqr6;->n(Lgva;JJ)J

    move-result-wide v5

    cmp-long v13, v9, v7

    if-eqz v13, :cond_5

    invoke-static {v4, v9, v10, v11, v12}, Lqr6;->n(Lgva;JJ)J

    move-result-wide v11

    :cond_5
    move-wide v13, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Lla9;

    invoke-direct {v0, v1, v2, v13, v14}, Lla9;-><init>(JJ)V

    cmp-long v1, v9, v7

    if-nez v1, :cond_8

    new-instance v1, Lja9$a;

    invoke-direct {v1, v0}, Lja9$a;-><init>(Lla9;)V

    return-object v1

    :cond_8
    new-instance v1, Lla9;

    invoke-direct {v1, v9, v10, v11, v12}, Lla9;-><init>(JJ)V

    new-instance v2, Lja9$a;

    invoke-direct {v2, v0, v1}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v4, -0x1

    move v6, v4

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    iget-object v3, v0, Lqr6;->s:[Lqr6$a;

    array-length v5, v3

    if-ge v7, v5, :cond_7

    aget-object v3, v3, v7

    iget v5, v3, Lqr6$a;->e:I

    iget-object v3, v3, Lqr6$a;->b:Lgva;

    iget v1, v3, Lgva;->b:I

    if-ne v5, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v3, Lgva;->c:[J

    aget-wide v1, v1, v5

    iget-object v3, v0, Lqr6;->t:[[J

    invoke-static {v3}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    aget-object v3, v3, v7

    aget-wide v16, v3, v5

    sub-long v1, v1, p1

    const-wide/16 v18, 0x0

    cmp-long v3, v1, v18

    if-ltz v3, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v3, v1, v18

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v3, v13, :cond_5

    cmp-long v5, v1, v14

    if-gez v5, :cond_5

    :cond_4
    move-wide v14, v1

    move v13, v3

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v1, v16, v8

    if-gez v1, :cond_6

    move v10, v3

    move v4, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v8, v1

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v0, 0xa00000

    add-long/2addr v8, v0

    cmp-long v0, v11, v8

    if-gez v0, :cond_9

    :cond_8
    move v4, v6

    :cond_9
    return v4
.end method

.method public final o(Lpk3;)V
    .locals 3

    iget-object v0, p0, Lqr6;->d:Lqw7;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lqw7;->K(I)V

    iget-object v0, p0, Lqr6;->d:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Lqr6;->d:Lqw7;

    invoke-static {v0}, Lyk;->e(Lqw7;)V

    iget-object p0, p0, Lqr6;->d:Lqw7;

    invoke-virtual {p0}, Lqw7;->e()I

    move-result p0

    invoke-interface {p1, p0}, Lpk3;->skipFully(I)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    return-void
.end method

.method public final p(J)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    iget-wide v2, v0, Lxk$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    iget v2, v0, Lxk;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lqr6;->s(Lxk$a;)V

    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lqr6;->i:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxk$a;

    invoke-virtual {v1, v0}, Lxk$a;->d(Lxk$a;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lqr6;->i:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lqr6;->h()V

    :cond_3
    return-void
.end method

.method public final q()V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lqr6;->w:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lqr6;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqr6;->r:Lqk3;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lqk3;->track(II)Lfva;

    move-result-object v1

    iget-object v2, p0, Lqr6;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p0, Lqr6;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v3, v4, v0

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v0, v2

    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-interface {v1, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iget-object v0, p0, Lqr6;->r:Lqk3;

    invoke-interface {v0}, Lqk3;->endTracks()V

    iget-object p0, p0, Lqr6;->r:Lqk3;

    new-instance v0, Lja9$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lja9$b;-><init>(J)V

    invoke-interface {p0, v0}, Lqk3;->d(Lja9;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final s(Lxk$a;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lqr6;->w:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    move v7, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-instance v12, Led4;

    invoke-direct {v12}, Led4;-><init>()V

    const v2, 0x75647461

    invoke-virtual {v1, v2}, Lxk$a;->g(I)Lxk$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lyk;->B(Lxk$b;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_1

    invoke-virtual {v12, v3}, Led4;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_1
    move-object v14, v2

    move-object v15, v3

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const v2, 0x6d657461

    invoke-virtual {v1, v2}, Lxk$a;->f(I)Lxk$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lyk;->n(Lxk$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget v2, v0, Lqr6;->a:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    move v6, v11

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    new-instance v16, Llr6;

    invoke-direct/range {v16 .. v16}, Llr6;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lyk;->A(Lxk$a;Led4;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLo74;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_4
    if-ge v6, v2, :cond_d

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lgva;

    iget v3, v8, Lgva;->b:I

    if-nez v3, :cond_5

    move-object/from16 v18, v1

    move/from16 v19, v2

    const/4 v1, -0x1

    const/4 v8, 0x1

    goto/16 :goto_a

    :cond_5
    iget-object v3, v8, Lgva;->a:Ltua;

    move-object/from16 v18, v1

    move/from16 v19, v2

    iget-wide v1, v3, Ltua;->e:J

    cmp-long v20, v1, v4

    if-eqz v20, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v1, v8, Lgva;->h:J

    :goto_5
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    new-instance v4, Lqr6$a;

    iget-object v5, v0, Lqr6;->r:Lqk3;

    move-wide/from16 v21, v10

    iget v10, v3, Ltua;->b:I

    invoke-interface {v5, v6, v10}, Lqk3;->track(II)Lfva;

    move-result-object v5

    invoke-direct {v4, v3, v8, v5}, Lqr6$a;-><init>(Ltua;Lgva;Lfva;)V

    iget-object v5, v3, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object v5, v5, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string v10, "audio/true-hd"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v8, Lgva;->e:I

    mul-int/lit8 v5, v5, 0x10

    goto :goto_6

    :cond_7
    iget v5, v8, Lgva;->e:I

    add-int/lit8 v5, v5, 0x1e

    :goto_6
    iget-object v10, v3, Ltua;->f:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    iget v5, v3, Ltua;->b:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_8

    const-wide/16 v23, 0x0

    cmp-long v5, v1, v23

    if-lez v5, :cond_8

    iget v5, v8, Lgva;->b:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_9

    int-to-float v5, v5

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    div-float/2addr v5, v1

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/k$b;->P(F)Lcom/google/android/exoplayer2/k$b;

    goto :goto_7

    :cond_8
    const/4 v8, 0x1

    :cond_9
    :goto_7
    iget v1, v3, Ltua;->b:I

    invoke-static {v1, v12, v10}, Lgo6;->k(ILed4;Lcom/google/android/exoplayer2/k$b;)V

    iget v1, v3, Ltua;->b:I

    iget-object v2, v0, Lqr6;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v5, v0, Lqr6;->h:Ljava/util/List;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_8
    filled-new-array {v14, v2}, [Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    invoke-static {v1, v15, v13, v10, v2}, Lgo6;->l(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/k$b;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    iget-object v1, v4, Lqr6$a;->c:Lfva;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v2

    invoke-interface {v1, v2}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iget v1, v3, Ltua;->b:I

    if-ne v1, v11, :cond_b

    const/4 v1, -0x1

    if-ne v7, v1, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_9

    :cond_b
    const/4 v1, -0x1

    :cond_c
    :goto_9
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v21

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_d
    iput v7, v0, Lqr6;->u:I

    iput-wide v10, v0, Lqr6;->v:J

    const/4 v1, 0x0

    new-array v1, v1, [Lqr6$a;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lqr6$a;

    iput-object v1, v0, Lqr6;->s:[Lqr6$a;

    invoke-static {v1}, Lqr6;->g([Lqr6$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lqr6;->t:[[J

    iget-object v1, v0, Lqr6;->r:Lqk3;

    invoke-interface {v1}, Lqk3;->endTracks()V

    iget-object v1, v0, Lqr6;->r:Lqk3;

    invoke-interface {v1, v0}, Lqk3;->d(Lja9;)V

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lqr6;->l:I

    const/4 v1, -0x1

    iput v1, p0, Lqr6;->n:I

    iput v0, p0, Lqr6;->o:I

    iput v0, p0, Lqr6;->p:I

    iput v0, p0, Lqr6;->q:I

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    iget p1, p0, Lqr6;->i:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lqr6;->h()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lqr6;->g:Lna9;

    invoke-virtual {p1}, Lna9;->g()V

    iget-object p0, p0, Lqr6;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lqr6;->s:[Lqr6$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p3, p4}, Lqr6;->A(Lqr6$a;J)V

    iget-object v1, v1, Lqr6$a;->d:Lfab;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lfab;->b()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final t(J)V
    .locals 13

    iget v0, p0, Lqr6;->j:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget v1, p0, Lqr6;->l:I

    int-to-long v2, v1

    add-long v9, p1, v2

    iget-wide v2, p0, Lqr6;->k:J

    int-to-long v4, v1

    sub-long v11, v2, v4

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lqr6;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_0
    return-void
.end method

.method public final u(Lpk3;)Z
    .locals 8

    iget v0, p0, Lqr6;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lpk3;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqr6;->q()V

    return v3

    :cond_0
    iput v2, p0, Lqr6;->l:I

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0, v3}, Lqw7;->O(I)V

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->E()J

    move-result-wide v4

    iput-wide v4, p0, Lqr6;->k:J

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->n()I

    move-result v0

    iput v0, p0, Lqr6;->j:I

    :cond_1
    iget-wide v4, p0, Lqr6;->k:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lpk3;->readFully([BII)V

    iget v0, p0, Lqr6;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Lqr6;->l:I

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->H()J

    move-result-wide v4

    iput-wide v4, p0, Lqr6;->k:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk$a;

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lxk$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lqr6;->l:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lqr6;->k:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Lqr6;->k:J

    iget v0, p0, Lqr6;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    iget v0, p0, Lqr6;->j:I

    invoke-static {v0}, Lqr6;->y(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lqr6;->k:J

    add-long/2addr v2, v4

    iget v0, p0, Lqr6;->l:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    iget v0, p0, Lqr6;->j:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    invoke-virtual {p0, p1}, Lqr6;->o(Lpk3;)V

    :cond_5
    iget-object p1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    new-instance v0, Lxk$a;

    iget v4, p0, Lqr6;->j:I

    invoke-direct {v0, v4, v2, v3}, Lxk$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lqr6;->k:J

    iget p1, p0, Lqr6;->l:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    invoke-virtual {p0, v2, v3}, Lqr6;->p(J)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lqr6;->h()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lqr6;->j:I

    invoke-static {v0}, Lqr6;->z(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget p1, p0, Lqr6;->l:I

    if-ne p1, v2, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    move p1, v3

    :goto_1
    invoke-static {p1}, Lzi;->g(Z)V

    iget-wide v4, p0, Lqr6;->k:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v3

    :goto_2
    invoke-static {p1}, Lzi;->g(Z)V

    new-instance p1, Lqw7;

    iget-wide v4, p0, Lqr6;->k:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lqw7;-><init>(I)V

    iget-object v0, p0, Lqr6;->e:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lqr6;->m:Lqw7;

    iput v1, p0, Lqr6;->i:I

    goto :goto_3

    :cond_a
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lqr6;->l:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lqr6;->t(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lqr6;->m:Lqw7;

    iput v1, p0, Lqr6;->i:I

    :goto_3
    return v1

    :cond_b
    const-string p0, "Atom size less than header length (unsupported)."

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final v(Lpk3;Lid8;)Z
    .locals 9

    iget-wide v0, p0, Lqr6;->k:J

    iget v2, p0, Lqr6;->l:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lqr6;->m:Lqw7;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lqw7;->d()[B

    move-result-object p2

    iget v7, p0, Lqr6;->l:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v7, v0}, Lpk3;->readFully([BII)V

    iget p1, p0, Lqr6;->j:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    invoke-static {v4}, Lqr6;->r(Lqw7;)I

    move-result p1

    iput p1, p0, Lqr6;->w:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lqr6;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxk$a;

    new-instance p2, Lxk$b;

    iget v0, p0, Lqr6;->j:I

    invoke-direct {p2, v0, v4}, Lxk$b;-><init>(ILqw7;)V

    invoke-virtual {p1, p2}, Lxk$a;->e(Lxk$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lpk3;->skipFully(I)V

    :cond_2
    :goto_0
    move p1, v6

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lid8;->a:J

    move p1, v5

    :goto_1
    invoke-virtual {p0, v2, v3}, Lqr6;->p(J)V

    if-eqz p1, :cond_4

    iget p0, p0, Lqr6;->i:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5
.end method

.method public final w(Lpk3;Lid8;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lpk3;->getPosition()J

    move-result-wide v2

    iget v4, v0, Lqr6;->n:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v2, v3}, Lqr6;->k(J)I

    move-result v4

    iput v4, v0, Lqr6;->n:I

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, Lqr6;->s:[Lqr6$a;

    iget v6, v0, Lqr6;->n:I

    aget-object v4, v4, v6

    iget-object v14, v4, Lqr6$a;->c:Lfva;

    iget v15, v4, Lqr6$a;->e:I

    iget-object v6, v4, Lqr6$a;->b:Lgva;

    iget-object v7, v6, Lgva;->c:[J

    aget-wide v7, v7, v15

    iget-object v6, v6, Lgva;->d:[I

    aget v6, v6, v15

    iget-object v13, v4, Lqr6$a;->d:Lfab;

    sub-long v2, v7, v2

    iget v9, v0, Lqr6;->o:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    const/4 v12, 0x1

    if-ltz v9, :cond_c

    const-wide/32 v9, 0x40000

    cmp-long v9, v2, v9

    if-ltz v9, :cond_1

    move-object/from16 v0, p2

    move/from16 v17, v12

    goto/16 :goto_4

    :cond_1
    iget-object v7, v4, Lqr6$a;->a:Ltua;

    iget v7, v7, Ltua;->g:I

    if-ne v7, v12, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int v2, v2

    invoke-interface {v1, v2}, Lpk3;->skipFully(I)V

    iget-object v2, v4, Lqr6$a;->a:Ltua;

    iget v3, v2, Ltua;->j:I

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_6

    iget-object v2, v0, Lqr6;->c:Lqw7;

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v2

    aput-byte v10, v2, v10

    aput-byte v10, v2, v12

    const/4 v3, 0x2

    aput-byte v10, v2, v3

    iget-object v3, v4, Lqr6$a;->a:Ltua;

    iget v3, v3, Ltua;->j:I

    rsub-int/lit8 v7, v3, 0x4

    :goto_0
    iget v8, v0, Lqr6;->p:I

    if-ge v8, v6, :cond_5

    iget v8, v0, Lqr6;->q:I

    if-nez v8, :cond_4

    invoke-interface {v1, v2, v7, v3}, Lpk3;->readFully([BII)V

    iget v8, v0, Lqr6;->o:I

    add-int/2addr v8, v3

    iput v8, v0, Lqr6;->o:I

    iget-object v8, v0, Lqr6;->c:Lqw7;

    invoke-virtual {v8, v10}, Lqw7;->O(I)V

    iget-object v8, v0, Lqr6;->c:Lqw7;

    invoke-virtual {v8}, Lqw7;->n()I

    move-result v8

    if-ltz v8, :cond_3

    iput v8, v0, Lqr6;->q:I

    iget-object v8, v0, Lqr6;->b:Lqw7;

    invoke-virtual {v8, v10}, Lqw7;->O(I)V

    iget-object v8, v0, Lqr6;->b:Lqw7;

    const/4 v9, 0x4

    invoke-interface {v14, v8, v9}, Lfva;->d(Lqw7;I)V

    iget v8, v0, Lqr6;->p:I

    add-int/2addr v8, v9

    iput v8, v0, Lqr6;->p:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    const-string v0, "Invalid NAL length"

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-interface {v14, v1, v8, v10}, Lfva;->c(Lms1;IZ)I

    move-result v8

    iget v9, v0, Lqr6;->o:I

    add-int/2addr v9, v8

    iput v9, v0, Lqr6;->o:I

    iget v9, v0, Lqr6;->p:I

    add-int/2addr v9, v8

    iput v9, v0, Lqr6;->p:I

    iget v9, v0, Lqr6;->q:I

    sub-int/2addr v9, v8

    iput v9, v0, Lqr6;->q:I

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    iget-object v2, v2, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Lqr6;->p:I

    if-nez v2, :cond_7

    iget-object v2, v0, Lqr6;->d:Lqw7;

    invoke-static {v6, v2}, Ls4;->a(ILqw7;)V

    iget-object v2, v0, Lqr6;->d:Lqw7;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Lfva;->d(Lqw7;I)V

    iget v2, v0, Lqr6;->p:I

    add-int/2addr v2, v3

    iput v2, v0, Lqr6;->p:I

    :cond_7
    add-int/lit8 v6, v6, 0x7

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v13, v1}, Lfab;->d(Lpk3;)V

    :cond_9
    :goto_1
    iget v2, v0, Lqr6;->p:I

    if-ge v2, v6, :cond_5

    sub-int v2, v6, v2

    invoke-interface {v14, v1, v2, v10}, Lfva;->c(Lms1;IZ)I

    move-result v2

    iget v3, v0, Lqr6;->o:I

    add-int/2addr v3, v2

    iput v3, v0, Lqr6;->o:I

    iget v3, v0, Lqr6;->p:I

    add-int/2addr v3, v2

    iput v3, v0, Lqr6;->p:I

    iget v3, v0, Lqr6;->q:I

    sub-int/2addr v3, v2

    iput v3, v0, Lqr6;->q:I

    goto :goto_1

    :goto_2
    iget-object v2, v4, Lqr6$a;->b:Lgva;

    iget-object v3, v2, Lgva;->f:[J

    aget-wide v8, v3, v15

    iget-object v2, v2, Lgva;->g:[I

    aget v2, v2, v15

    if-eqz v13, :cond_a

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    move-object v2, v11

    move v11, v1

    move/from16 v17, v12

    move v12, v3

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v6 .. v13}, Lfab;->c(Lfva;JIIILfva$a;)V

    add-int/lit8 v15, v15, 0x1

    iget-object v3, v4, Lqr6$a;->b:Lgva;

    iget v3, v3, Lgva;->b:I

    if-ne v15, v3, :cond_b

    invoke-virtual {v1, v14, v2}, Lfab;->a(Lfva;Lfva$a;)V

    goto :goto_3

    :cond_a
    move/from16 v17, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    invoke-interface/range {v6 .. v12}, Lfva;->e(JIIILfva$a;)V

    :cond_b
    :goto_3
    iget v1, v4, Lqr6$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lqr6$a;->e:I

    iput v5, v0, Lqr6;->n:I

    const/4 v1, 0x0

    iput v1, v0, Lqr6;->o:I

    iput v1, v0, Lqr6;->p:I

    iput v1, v0, Lqr6;->q:I

    return v1

    :cond_c
    move/from16 v17, v12

    move-object/from16 v0, p2

    :goto_4
    iput-wide v7, v0, Lid8;->a:J

    return v17
.end method

.method public final x(Lpk3;Lid8;)I
    .locals 4

    iget-object v0, p0, Lqr6;->g:Lna9;

    iget-object v1, p0, Lqr6;->h:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lna9;->c(Lpk3;Lid8;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p2, Lid8;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lqr6;->h()V

    :cond_0
    return p1
.end method
