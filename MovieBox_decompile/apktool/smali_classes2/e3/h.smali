.class public Le3/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/h$b;,
        Le3/h$a;
    }
.end annotation


# static fields
.field public static final M:Lk2/x;

.field private static final N:[B

.field private static final O:Landroidx/media3/common/r;


# instance fields
.field private A:J

.field private B:J

.field private C:Le3/h$b;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Lk2/t;

.field private J:[Lk2/s0;

.field private K:[Lk2/s0;

.field private L:Z

.field private final a:Lh3/s$a;

.field private final b:I

.field private final c:Le3/t;

.field private final d:Ljava/util/List;

.field private final e:Landroid/util/SparseArray;

.field private final f:Landroidx/media3/common/util/j0;

.field private final g:Landroidx/media3/common/util/j0;

.field private final h:Landroidx/media3/common/util/j0;

.field private final i:[B

.field private final j:Landroidx/media3/common/util/j0;

.field private final k:Landroidx/media3/common/util/p0;

.field private final l:Lv2/c;

.field private final m:Landroidx/media3/common/util/j0;

.field private final n:Ljava/util/ArrayDeque;

.field private final o:Ljava/util/ArrayDeque;

.field private final p:Landroidx/media3/container/i;

.field private final q:Lk2/s0;

.field private r:Lcom/google/common/collect/ImmutableList;

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Landroidx/media3/common/util/j0;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le3/f;

    .line 2
    .line 3
    invoke-direct {v0}, Le3/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le3/h;->M:Lk2/x;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Le3/h;->N:[B

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/common/r$b;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "application/x-emsg"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Le3/h;->O:Landroidx/media3/common/r;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lh3/s$a;->a:Lh3/s$a;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v6}, Le3/h;-><init>(Lh3/s$a;ILandroidx/media3/common/util/p0;Le3/t;Ljava/util/List;Lk2/s0;)V

    return-void
.end method

.method public constructor <init>(Lh3/s$a;I)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Le3/h;-><init>(Lh3/s$a;ILandroidx/media3/common/util/p0;Le3/t;Ljava/util/List;Lk2/s0;)V

    return-void
.end method

.method public constructor <init>(Lh3/s$a;ILandroidx/media3/common/util/p0;Le3/t;Ljava/util/List;Lk2/s0;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Le3/h;->a:Lh3/s$a;

    .line 8
    iput p2, p0, Le3/h;->b:I

    .line 9
    iput-object p3, p0, Le3/h;->k:Landroidx/media3/common/util/p0;

    .line 10
    iput-object p4, p0, Le3/h;->c:Le3/t;

    .line 11
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le3/h;->d:Ljava/util/List;

    .line 12
    iput-object p6, p0, Le3/h;->q:Lk2/s0;

    .line 13
    new-instance p1, Lv2/c;

    invoke-direct {p1}, Lv2/c;-><init>()V

    iput-object p1, p0, Le3/h;->l:Lv2/c;

    .line 14
    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 15
    new-instance p1, Landroidx/media3/common/util/j0;

    sget-object p3, Landroidx/media3/container/g;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p1, p0, Le3/h;->f:Landroidx/media3/common/util/j0;

    .line 16
    new-instance p1, Landroidx/media3/common/util/j0;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Le3/h;->g:Landroidx/media3/common/util/j0;

    .line 17
    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 18
    new-array p1, p2, [B

    iput-object p1, p0, Le3/h;->i:[B

    .line 19
    new-instance p2, Landroidx/media3/common/util/j0;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p2, p0, Le3/h;->j:Landroidx/media3/common/util/j0;

    .line 20
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Le3/h;->r:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iput-wide p1, p0, Le3/h;->A:J

    .line 25
    iput-wide p1, p0, Le3/h;->z:J

    .line 26
    iput-wide p1, p0, Le3/h;->B:J

    .line 27
    sget-object p1, Lk2/t;->j1:Lk2/t;

    iput-object p1, p0, Le3/h;->I:Lk2/t;

    const/4 p1, 0x0

    .line 28
    new-array p2, p1, [Lk2/s0;

    iput-object p2, p0, Le3/h;->J:[Lk2/s0;

    .line 29
    new-array p1, p1, [Lk2/s0;

    iput-object p1, p0, Le3/h;->K:[Lk2/s0;

    .line 30
    new-instance p1, Landroidx/media3/container/i;

    new-instance p2, Le3/g;

    invoke-direct {p2, p0}, Le3/g;-><init>(Le3/h;)V

    invoke-direct {p1, p2}, Landroidx/media3/container/i;-><init>(Landroidx/media3/container/i$b;)V

    iput-object p1, p0, Le3/h;->p:Landroidx/media3/container/i;

    return-void
.end method

.method private static A(Landroidx/media3/common/util/j0;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Le3/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :goto_0
    return-wide v0
.end method

.method private static B(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/media3/container/d$b;

    .line 17
    .line 18
    iget v3, v2, Landroidx/media3/container/d;->a:I

    .line 19
    .line 20
    const v4, 0x74726166

    .line 21
    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    invoke-static {v2, p1, p2, p3, p4}, Le3/h;->K(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method private static C(Landroidx/media3/common/util/j0;Le3/v;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Le3/b;->o(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    and-int/2addr v2, v3

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v3, :cond_2

    .line 26
    .line 27
    invoke-static {v1}, Le3/b;->p(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-wide v1, p1, Le3/v;->d:J

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    :goto_0
    add-long/2addr v1, v3

    .line 45
    iput-wide v1, p1, Le3/v;->d:J

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p1, "Unexpected saio entry count: "

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    throw p0
.end method

.method private static D(Le3/u;Landroidx/media3/common/util/j0;Le3/v;)V
    .locals 7

    .line 1
    iget p0, p0, Le3/u;->d:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Le3/b;->o(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    and-int/2addr v1, v2

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->L()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v3, p2, Le3/v;->f:I

    .line 32
    .line 33
    if-gt v1, v3, :cond_6

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p2, Le3/v;->m:[Z

    .line 39
    .line 40
    move v4, v3

    .line 41
    move v5, v4

    .line 42
    :goto_0
    if-ge v4, v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    add-int/2addr v5, v6

    .line 49
    if-le v6, p0, :cond_1

    .line 50
    .line 51
    move v6, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v6, v3

    .line 54
    :goto_1
    aput-boolean v6, v0, v4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-le v0, p0, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v2, v3

    .line 63
    :goto_2
    mul-int v5, v0, v1

    .line 64
    .line 65
    iget-object p0, p2, Le3/v;->m:[Z

    .line 66
    .line 67
    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object p0, p2, Le3/v;->m:[Z

    .line 71
    .line 72
    iget p1, p2, Le3/v;->f:I

    .line 73
    .line 74
    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 75
    .line 76
    .line 77
    if-lez v5, :cond_5

    .line 78
    .line 79
    invoke-virtual {p2, v5}, Le3/v;->d(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-void

    .line 83
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p1, "Saiz sample count "

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " is greater than fragment sample count"

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget p1, p2, Le3/v;->f:I

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const/4 p1, 0x0

    .line 111
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    throw p0
.end method

.method private static E(Landroidx/media3/container/d$b;Ljava/lang/String;Le3/v;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v5, v2

    .line 8
    move-object v6, v5

    .line 9
    move v4, v3

    .line 10
    :goto_0
    iget-object v7, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-ge v4, v7, :cond_2

    .line 17
    .line 18
    iget-object v7, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    check-cast v7, Landroidx/media3/container/d$c;

    .line 25
    .line 26
    iget-object v8, v7, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 27
    .line 28
    iget v7, v7, Landroidx/media3/container/d;->a:I

    .line 29
    .line 30
    const v9, 0x73626770

    .line 31
    .line 32
    .line 33
    const v10, 0x73656967

    .line 34
    .line 35
    .line 36
    const/16 v11, 0xc

    .line 37
    .line 38
    if-ne v7, v9, :cond_0

    .line 39
    .line 40
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/j0;->W(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-ne v7, v10, :cond_1

    .line 48
    .line 49
    move-object v5, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const v9, 0x73677064

    .line 52
    .line 53
    .line 54
    if-ne v7, v9, :cond_1

    .line 55
    .line 56
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/j0;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-ne v7, v10, :cond_1

    .line 64
    .line 65
    move-object v6, v8

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-eqz v5, :cond_d

    .line 70
    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_3
    const/16 v0, 0x8

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->q()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Le3/b;->p(I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const/4 v7, 0x4

    .line 89
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 90
    .line 91
    .line 92
    const/4 v8, 0x1

    .line 93
    if-ne v4, v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->q()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-ne v4, v8, :cond_c

    .line 103
    .line 104
    invoke-virtual {v6, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->q()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Le3/b;->p(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 116
    .line 117
    .line 118
    if-ne v0, v8, :cond_6

    .line 119
    .line 120
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->J()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    cmp-long v0, v4, v9

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 132
    .line 133
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    throw v0

    .line 138
    :cond_6
    const/4 v4, 0x2

    .line 139
    if-lt v0, v4, :cond_7

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_2
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->J()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    const-wide/16 v9, 0x1

    .line 149
    .line 150
    cmp-long v0, v4, v9

    .line 151
    .line 152
    if-nez v0, :cond_b

    .line 153
    .line 154
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/j0;->X(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    and-int/lit16 v4, v0, 0xf0

    .line 162
    .line 163
    shr-int/lit8 v14, v4, 0x4

    .line 164
    .line 165
    and-int/lit8 v15, v0, 0xf

    .line 166
    .line 167
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ne v0, v8, :cond_8

    .line 172
    .line 173
    move v10, v8

    .line 174
    goto :goto_3

    .line 175
    :cond_8
    move v10, v3

    .line 176
    :goto_3
    if-nez v10, :cond_9

    .line 177
    .line 178
    return-void

    .line 179
    :cond_9
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    const/16 v0, 0x10

    .line 184
    .line 185
    new-array v13, v0, [B

    .line 186
    .line 187
    invoke-virtual {v6, v13, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 188
    .line 189
    .line 190
    if-nez v12, :cond_a

    .line 191
    .line 192
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    new-array v2, v0, [B

    .line 197
    .line 198
    invoke-virtual {v6, v2, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 199
    .line 200
    .line 201
    :cond_a
    move-object/from16 v16, v2

    .line 202
    .line 203
    iput-boolean v8, v1, Le3/v;->l:Z

    .line 204
    .line 205
    new-instance v0, Le3/u;

    .line 206
    .line 207
    move-object v9, v0

    .line 208
    move-object/from16 v11, p1

    .line 209
    .line 210
    invoke-direct/range {v9 .. v16}, Le3/u;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 211
    .line 212
    .line 213
    iput-object v0, v1, Le3/v;->n:Le3/u;

    .line 214
    .line 215
    return-void

    .line 216
    :cond_b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 217
    .line 218
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    throw v0

    .line 223
    :cond_c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 224
    .line 225
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    throw v0

    .line 230
    :cond_d
    :goto_4
    return-void
.end method

.method private static F(Landroidx/media3/common/util/j0;ILe3/v;)V
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Le3/b;->o(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    and-int/lit8 v0, p1, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object p0, p2, Le3/v;->m:[Z

    .line 33
    .line 34
    iget p1, p2, Le3/v;->f:I

    .line 35
    .line 36
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget v2, p2, Le3/v;->f:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p2, Le3/v;->m:[Z

    .line 45
    .line 46
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2, p1}, Le3/v;->d(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p0}, Le3/v;->a(Landroidx/media3/common/util/j0;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p1, "Senc sample count "

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " is different from fragment sample count"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p1, p2, Le3/v;->f:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const/4 p1, 0x0

    .line 88
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    throw p0

    .line 93
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 94
    .line 95
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    throw p0
.end method

.method private static G(Landroidx/media3/common/util/j0;Le3/v;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Le3/h;->F(Landroidx/media3/common/util/j0;ILe3/v;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static H(Landroidx/media3/common/util/j0;J)Landroid/util/Pair;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Le3/b;->p(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, p1, v5

    .line 35
    .line 36
    move-wide v11, v3

    .line 37
    move-wide v13, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->O()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->O()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    const-wide/32 v5, 0xf4240

    .line 49
    .line 50
    .line 51
    move-wide v3, v11

    .line 52
    move-wide v7, v9

    .line 53
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v15

    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    new-array v7, v1, [I

    .line 66
    .line 67
    new-array v8, v1, [J

    .line 68
    .line 69
    new-array v5, v1, [J

    .line 70
    .line 71
    new-array v6, v1, [J

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    move-wide/from16 v17, v15

    .line 75
    .line 76
    move-wide/from16 v23, v11

    .line 77
    .line 78
    move v11, v3

    .line 79
    move-wide/from16 v3, v23

    .line 80
    .line 81
    :goto_2
    if-ge v11, v1, :cond_2

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const/high16 v19, -0x80000000

    .line 88
    .line 89
    and-int v19, v12, v19

    .line 90
    .line 91
    if-nez v19, :cond_1

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    .line 94
    .line 95
    .line 96
    move-result-wide v19

    .line 97
    const v21, 0x7fffffff

    .line 98
    .line 99
    .line 100
    and-int v12, v12, v21

    .line 101
    .line 102
    aput v12, v7, v11

    .line 103
    .line 104
    aput-wide v13, v8, v11

    .line 105
    .line 106
    aput-wide v17, v6, v11

    .line 107
    .line 108
    add-long v17, v3, v19

    .line 109
    .line 110
    const-wide/32 v19, 0xf4240

    .line 111
    .line 112
    .line 113
    move-wide/from16 v3, v17

    .line 114
    .line 115
    move-object v12, v5

    .line 116
    move-object v2, v6

    .line 117
    move-wide/from16 v5, v19

    .line 118
    .line 119
    move/from16 p1, v1

    .line 120
    .line 121
    move-object v1, v7

    .line 122
    move-object/from16 v22, v8

    .line 123
    .line 124
    move-wide v7, v9

    .line 125
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    aget-wide v5, v2, v11

    .line 130
    .line 131
    sub-long v5, v3, v5

    .line 132
    .line 133
    aput-wide v5, v12, v11

    .line 134
    .line 135
    const/4 v5, 0x4

    .line 136
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    .line 137
    .line 138
    .line 139
    aget v6, v1, v11

    .line 140
    .line 141
    int-to-long v6, v6

    .line 142
    add-long/2addr v13, v6

    .line 143
    add-int/lit8 v11, v11, 0x1

    .line 144
    .line 145
    move-object v7, v1

    .line 146
    move-object v6, v2

    .line 147
    move v2, v5

    .line 148
    move-object v5, v12

    .line 149
    move-object/from16 v8, v22

    .line 150
    .line 151
    move/from16 v1, p1

    .line 152
    .line 153
    move-wide/from16 v23, v3

    .line 154
    .line 155
    move-wide/from16 v3, v17

    .line 156
    .line 157
    move-wide/from16 v17, v23

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    throw v0

    .line 168
    :cond_2
    move-object v12, v5

    .line 169
    move-object v2, v6

    .line 170
    move-object v1, v7

    .line 171
    move-object/from16 v22, v8

    .line 172
    .line 173
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v3, Lk2/h;

    .line 178
    .line 179
    move-object/from16 v4, v22

    .line 180
    .line 181
    invoke-direct {v3, v1, v4, v12, v2}, Lk2/h;-><init>([I[J[J[J)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0
.end method

.method private static I(Landroidx/media3/common/util/j0;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Le3/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_0
    return-wide v0
.end method

.method private static J(Landroidx/media3/common/util/j0;Landroid/util/SparseArray;Z)Le3/h$b;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Le3/b;->o(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    check-cast p1, Le3/h$b;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_1
    and-int/lit8 p2, v0, 0x1

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iget-object p2, p1, Le3/h$b;->b:Le3/v;

    .line 46
    .line 47
    iput-wide v1, p2, Le3/v;->c:J

    .line 48
    .line 49
    iput-wide v1, p2, Le3/v;->d:J

    .line 50
    .line 51
    :cond_2
    iget-object p2, p1, Le3/h$b;->e:Le3/c;

    .line 52
    .line 53
    and-int/lit8 v1, v0, 0x2

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget v1, p2, Le3/c;->a:I

    .line 65
    .line 66
    :goto_2
    and-int/lit8 v2, v0, 0x8

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    iget v2, p2, Le3/c;->b:I

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v3, v0, 0x10

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    iget v3, p2, Le3/c;->c:I

    .line 87
    .line 88
    :goto_4
    and-int/lit8 v0, v0, 0x20

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    iget p0, p2, Le3/c;->d:I

    .line 98
    .line 99
    :goto_5
    iget-object p2, p1, Le3/h$b;->b:Le3/v;

    .line 100
    .line 101
    new-instance v0, Le3/c;

    .line 102
    .line 103
    invoke-direct {v0, v1, v2, v3, p0}, Le3/c;-><init>(IIII)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p2, Le3/v;->a:Le3/c;

    .line 107
    .line 108
    return-object p1
.end method

.method private static K(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V
    .locals 6

    .line 1
    const v0, 0x74666864

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/media3/container/d$c;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 15
    .line 16
    invoke-static {v0, p1, p2}, Le3/h;->J(Landroidx/media3/common/util/j0;Landroid/util/SparseArray;Z)Le3/h$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p2, p1, Le3/h$b;->b:Le3/v;

    .line 24
    .line 25
    iget-wide v0, p2, Le3/v;->q:J

    .line 26
    .line 27
    iget-boolean v2, p2, Le3/v;->r:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Le3/h$b;->k()V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {p1, v3}, Le3/h$b;->b(Le3/h$b;Z)Z

    .line 34
    .line 35
    .line 36
    const v4, 0x74666474

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    and-int/lit8 v5, p3, 0x2

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    iget-object v0, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 50
    .line 51
    invoke-static {v0}, Le3/h;->I(Landroidx/media3/common/util/j0;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, p2, Le3/v;->q:J

    .line 56
    .line 57
    iput-boolean v3, p2, Le3/v;->r:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput-wide v0, p2, Le3/v;->q:J

    .line 61
    .line 62
    iput-boolean v2, p2, Le3/v;->r:Z

    .line 63
    .line 64
    :goto_0
    invoke-static {p0, p1, p3}, Le3/h;->N(Landroidx/media3/container/d$b;Le3/h$b;I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Le3/h$b;->d:Le3/w;

    .line 68
    .line 69
    iget-object p1, p1, Le3/w;->a:Le3/t;

    .line 70
    .line 71
    iget-object p3, p2, Le3/v;->a:Le3/c;

    .line 72
    .line 73
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Le3/c;

    .line 78
    .line 79
    iget p3, p3, Le3/c;->a:I

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Le3/t;->b(I)Le3/u;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const p3, 0x7361697a

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_2

    .line 93
    .line 94
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Le3/u;

    .line 99
    .line 100
    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 101
    .line 102
    invoke-static {v0, p3, p2}, Le3/h;->D(Le3/u;Landroidx/media3/common/util/j0;Le3/v;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    const p3, 0x7361696f

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    if-eqz p3, :cond_3

    .line 113
    .line 114
    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 115
    .line 116
    invoke-static {p3, p2}, Le3/h;->C(Landroidx/media3/common/util/j0;Le3/v;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    const p3, 0x73656e63

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    if-eqz p3, :cond_4

    .line 127
    .line 128
    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 129
    .line 130
    invoke-static {p3, p2}, Le3/h;->G(Landroidx/media3/common/util/j0;Le3/v;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    if-eqz p1, :cond_5

    .line 134
    .line 135
    iget-object p1, p1, Le3/u;->b:Ljava/lang/String;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const/4 p1, 0x0

    .line 139
    :goto_1
    invoke-static {p0, p1, p2}, Le3/h;->E(Landroidx/media3/container/d$b;Ljava/lang/String;Le3/v;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const/4 p3, 0x0

    .line 149
    :goto_2
    if-ge p3, p1, :cond_7

    .line 150
    .line 151
    iget-object v0, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroidx/media3/container/d$c;

    .line 158
    .line 159
    iget v1, v0, Landroidx/media3/container/d;->a:I

    .line 160
    .line 161
    const v2, 0x75756964

    .line 162
    .line 163
    .line 164
    if-ne v1, v2, :cond_6

    .line 165
    .line 166
    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 167
    .line 168
    invoke-static {v0, p2, p4}, Le3/h;->O(Landroidx/media3/common/util/j0;Le3/v;[B)V

    .line 169
    .line 170
    .line 171
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    return-void
.end method

.method private static L(Landroidx/media3/common/util/j0;)Landroid/util/Pair;
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v4, Le3/c;

    .line 33
    .line 34
    invoke-direct {v4, v1, v2, v3, p0}, Le3/c;-><init>(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static M(Le3/h$b;IILandroidx/media3/common/util/j0;I)I
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Le3/b;->o(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v3, v0, Le3/h$b;->d:Le3/w;

    .line 19
    .line 20
    iget-object v3, v3, Le3/w;->a:Le3/t;

    .line 21
    .line 22
    iget-object v4, v0, Le3/h$b;->b:Le3/v;

    .line 23
    .line 24
    iget-object v5, v4, Le3/v;->a:Le3/c;

    .line 25
    .line 26
    invoke-static {v5}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Le3/c;

    .line 31
    .line 32
    iget-object v6, v4, Le3/v;->h:[I

    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->L()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    aput v7, v6, p1

    .line 39
    .line 40
    iget-object v6, v4, Le3/v;->g:[J

    .line 41
    .line 42
    iget-wide v7, v4, Le3/v;->c:J

    .line 43
    .line 44
    aput-wide v7, v6, p1

    .line 45
    .line 46
    and-int/lit8 v9, v1, 0x1

    .line 47
    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    int-to-long v9, v9

    .line 55
    add-long/2addr v7, v9

    .line 56
    aput-wide v7, v6, p1

    .line 57
    .line 58
    :cond_0
    and-int/lit8 v6, v1, 0x4

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v6, v7

    .line 66
    :goto_0
    iget v9, v5, Le3/c;->d:I

    .line 67
    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    :cond_2
    and-int/lit16 v10, v1, 0x100

    .line 75
    .line 76
    if-eqz v10, :cond_3

    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v10, v7

    .line 81
    :goto_1
    and-int/lit16 v11, v1, 0x200

    .line 82
    .line 83
    if-eqz v11, :cond_4

    .line 84
    .line 85
    const/4 v11, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v11, v7

    .line 88
    :goto_2
    and-int/lit16 v12, v1, 0x400

    .line 89
    .line 90
    if-eqz v12, :cond_5

    .line 91
    .line 92
    const/4 v12, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move v12, v7

    .line 95
    :goto_3
    and-int/lit16 v1, v1, 0x800

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move v1, v7

    .line 102
    :goto_4
    invoke-static {v3}, Le3/h;->q(Le3/t;)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_7

    .line 107
    .line 108
    iget-object v13, v3, Le3/t;->j:[J

    .line 109
    .line 110
    invoke-static {v13}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    check-cast v13, [J

    .line 115
    .line 116
    aget-wide v14, v13, v7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    const-wide/16 v14, 0x0

    .line 120
    .line 121
    :goto_5
    iget-object v13, v4, Le3/v;->i:[I

    .line 122
    .line 123
    iget-object v7, v4, Le3/v;->j:[J

    .line 124
    .line 125
    iget-object v8, v4, Le3/v;->k:[Z

    .line 126
    .line 127
    iget v2, v3, Le3/t;->b:I

    .line 128
    .line 129
    move/from16 v16, v9

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    if-ne v2, v9, :cond_8

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    and-int/lit8 v9, p2, 0x1

    .line 136
    .line 137
    if-eqz v9, :cond_8

    .line 138
    .line 139
    const/4 v2, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    const/4 v2, 0x0

    .line 142
    :goto_6
    iget-object v9, v4, Le3/v;->h:[I

    .line 143
    .line 144
    aget v9, v9, p1

    .line 145
    .line 146
    add-int v9, p4, v9

    .line 147
    .line 148
    move/from16 p2, v2

    .line 149
    .line 150
    iget-wide v2, v3, Le3/t;->c:J

    .line 151
    .line 152
    move-object/from16 v23, v7

    .line 153
    .line 154
    move-object/from16 v24, v8

    .line 155
    .line 156
    iget-wide v7, v4, Le3/v;->q:J

    .line 157
    .line 158
    move-wide/from16 v25, v2

    .line 159
    .line 160
    move-wide v2, v7

    .line 161
    move/from16 v7, p4

    .line 162
    .line 163
    :goto_7
    if-ge v7, v9, :cond_11

    .line 164
    .line 165
    if-eqz v10, :cond_9

    .line 166
    .line 167
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    goto :goto_8

    .line 172
    :cond_9
    iget v8, v5, Le3/c;->b:I

    .line 173
    .line 174
    :goto_8
    invoke-static {v8}, Le3/h;->i(I)I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v11, :cond_a

    .line 179
    .line 180
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 181
    .line 182
    .line 183
    move-result v17

    .line 184
    move/from16 v27, v10

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_a
    move/from16 v27, v10

    .line 188
    .line 189
    iget v10, v5, Le3/c;->c:I

    .line 190
    .line 191
    move/from16 v17, v10

    .line 192
    .line 193
    :goto_9
    invoke-static/range {v17 .. v17}, Le3/h;->i(I)I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v12, :cond_b

    .line 198
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 200
    .line 201
    .line 202
    move-result v17

    .line 203
    move/from16 v28, v6

    .line 204
    .line 205
    move/from16 v6, v17

    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_b
    if-nez v7, :cond_c

    .line 209
    .line 210
    if-eqz v6, :cond_c

    .line 211
    .line 212
    move/from16 v28, v6

    .line 213
    .line 214
    move/from16 v6, v16

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_c
    move/from16 v28, v6

    .line 218
    .line 219
    iget v6, v5, Le3/c;->d:I

    .line 220
    .line 221
    :goto_a
    if-eqz v1, :cond_d

    .line 222
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    .line 224
    .line 225
    .line 226
    move-result v17

    .line 227
    move/from16 v29, v1

    .line 228
    .line 229
    move/from16 v30, v11

    .line 230
    .line 231
    move/from16 v31, v12

    .line 232
    .line 233
    move/from16 v1, v17

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_d
    move/from16 v29, v1

    .line 237
    .line 238
    move/from16 v30, v11

    .line 239
    .line 240
    move/from16 v31, v12

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    :goto_b
    int-to-long v11, v1

    .line 244
    add-long/2addr v11, v2

    .line 245
    sub-long v17, v11, v14

    .line 246
    .line 247
    const-wide/32 v19, 0xf4240

    .line 248
    .line 249
    .line 250
    move-wide/from16 v21, v25

    .line 251
    .line 252
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 253
    .line 254
    .line 255
    move-result-wide v11

    .line 256
    aput-wide v11, v23, v7

    .line 257
    .line 258
    iget-boolean v1, v4, Le3/v;->r:Z

    .line 259
    .line 260
    if-nez v1, :cond_e

    .line 261
    .line 262
    iget-object v1, v0, Le3/h$b;->d:Le3/w;

    .line 263
    .line 264
    iget-wide v0, v1, Le3/w;->h:J

    .line 265
    .line 266
    add-long/2addr v11, v0

    .line 267
    aput-wide v11, v23, v7

    .line 268
    .line 269
    :cond_e
    aput v10, v13, v7

    .line 270
    .line 271
    shr-int/lit8 v0, v6, 0x10

    .line 272
    .line 273
    const/4 v1, 0x1

    .line 274
    and-int/2addr v0, v1

    .line 275
    if-nez v0, :cond_10

    .line 276
    .line 277
    if-eqz p2, :cond_f

    .line 278
    .line 279
    if-nez v7, :cond_10

    .line 280
    .line 281
    :cond_f
    move v0, v1

    .line 282
    goto :goto_c

    .line 283
    :cond_10
    const/4 v0, 0x0

    .line 284
    :goto_c
    aput-boolean v0, v24, v7

    .line 285
    .line 286
    int-to-long v10, v8

    .line 287
    add-long/2addr v2, v10

    .line 288
    add-int/lit8 v7, v7, 0x1

    .line 289
    .line 290
    move-object/from16 v0, p0

    .line 291
    .line 292
    move/from16 v10, v27

    .line 293
    .line 294
    move/from16 v6, v28

    .line 295
    .line 296
    move/from16 v1, v29

    .line 297
    .line 298
    move/from16 v11, v30

    .line 299
    .line 300
    move/from16 v12, v31

    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_11
    iput-wide v2, v4, Le3/v;->q:J

    .line 305
    .line 306
    return v9
.end method

.method private static N(Landroidx/media3/container/d$b;Le3/h$b;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const v5, 0x7472756e

    .line 12
    .line 13
    .line 14
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroidx/media3/container/d$c;

    .line 21
    .line 22
    iget v7, v6, Landroidx/media3/container/d;->a:I

    .line 23
    .line 24
    if-ne v7, v5, :cond_0

    .line 25
    .line 26
    iget-object v5, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 27
    .line 28
    const/16 v6, 0xc

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/j0;->W(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->L()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-lez v5, :cond_0

    .line 38
    .line 39
    add-int/2addr v4, v5

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput v1, p1, Le3/h$b;->h:I

    .line 46
    .line 47
    iput v1, p1, Le3/h$b;->g:I

    .line 48
    .line 49
    iput v1, p1, Le3/h$b;->f:I

    .line 50
    .line 51
    iget-object v2, p1, Le3/h$b;->b:Le3/v;

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Le3/v;->e(II)V

    .line 54
    .line 55
    .line 56
    move v2, v1

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v1, v0, :cond_3

    .line 59
    .line 60
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/media3/container/d$c;

    .line 65
    .line 66
    iget v6, v4, Landroidx/media3/container/d;->a:I

    .line 67
    .line 68
    if-ne v6, v5, :cond_2

    .line 69
    .line 70
    add-int/lit8 v6, v2, 0x1

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 73
    .line 74
    invoke-static {p1, v2, p2, v4, v3}, Le3/h;->M(Le3/h$b;IILandroidx/media3/common/util/j0;I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    move v3, v2

    .line 79
    move v2, v6

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    return-void
.end method

.method private static O(Landroidx/media3/common/util/j0;Le3/v;[B)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Le3/h;->N:[B

    .line 13
    .line 14
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p0, v1, p1}, Le3/h;->F(Landroidx/media3/common/util/j0;ILe3/v;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private P(J)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/media3/container/d$b;

    .line 16
    .line 17
    iget-wide v0, v0, Landroidx/media3/container/d$b;->b:J

    .line 18
    .line 19
    cmp-long v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/media3/container/d$b;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Le3/h;->u(Landroidx/media3/container/d$b;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Le3/h;->k()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private Q(Lk2/s;)Z
    .locals 11

    .line 1
    iget v0, p0, Le3/h;->v:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0, v2, v1, v3}, Lk2/s;->readFully([BIIZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iput v1, p0, Le3/h;->v:I

    .line 23
    .line 24
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iput-wide v4, p0, Le3/h;->u:J

    .line 36
    .line 37
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Le3/h;->t:I

    .line 44
    .line 45
    :cond_1
    iget-wide v4, p0, Le3/h;->u:J

    .line 46
    .line 47
    const-wide/16 v6, 0x1

    .line 48
    .line 49
    cmp-long v0, v4, v6

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p1, v0, v1, v1}, Lk2/s;->readFully([BII)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Le3/h;->v:I

    .line 63
    .line 64
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Le3/h;->v:I

    .line 66
    .line 67
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    iput-wide v4, p0, Le3/h;->u:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    cmp-long v0, v4, v6

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    const-wide/16 v6, -0x1

    .line 87
    .line 88
    cmp-long v0, v4, v6

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroidx/media3/container/d$b;

    .line 107
    .line 108
    iget-wide v4, v0, Landroidx/media3/container/d$b;->b:J

    .line 109
    .line 110
    :cond_3
    cmp-long v0, v4, v6

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    sub-long/2addr v4, v6

    .line 119
    iget v0, p0, Le3/h;->v:I

    .line 120
    .line 121
    int-to-long v6, v0

    .line 122
    add-long/2addr v4, v6

    .line 123
    iput-wide v4, p0, Le3/h;->u:J

    .line 124
    .line 125
    :cond_4
    :goto_0
    iget-wide v4, p0, Le3/h;->u:J

    .line 126
    .line 127
    iget v0, p0, Le3/h;->v:I

    .line 128
    .line 129
    int-to-long v6, v0

    .line 130
    cmp-long v0, v4, v6

    .line 131
    .line 132
    if-ltz v0, :cond_f

    .line 133
    .line 134
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    iget v0, p0, Le3/h;->v:I

    .line 139
    .line 140
    int-to-long v6, v0

    .line 141
    sub-long/2addr v4, v6

    .line 142
    iget v0, p0, Le3/h;->t:I

    .line 143
    .line 144
    const v6, 0x6d646174

    .line 145
    .line 146
    .line 147
    const v7, 0x6d6f6f66

    .line 148
    .line 149
    .line 150
    if-eq v0, v7, :cond_5

    .line 151
    .line 152
    if-ne v0, v6, :cond_6

    .line 153
    .line 154
    :cond_5
    iget-boolean v0, p0, Le3/h;->L:Z

    .line 155
    .line 156
    if-nez v0, :cond_6

    .line 157
    .line 158
    iget-object v0, p0, Le3/h;->I:Lk2/t;

    .line 159
    .line 160
    new-instance v8, Lk2/m0$b;

    .line 161
    .line 162
    iget-wide v9, p0, Le3/h;->A:J

    .line 163
    .line 164
    invoke-direct {v8, v9, v10, v4, v5}, Lk2/m0$b;-><init>(JJ)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v8}, Lk2/t;->d(Lk2/m0;)V

    .line 168
    .line 169
    .line 170
    iput-boolean v3, p0, Le3/h;->L:Z

    .line 171
    .line 172
    :cond_6
    iget v0, p0, Le3/h;->t:I

    .line 173
    .line 174
    if-ne v0, v7, :cond_7

    .line 175
    .line 176
    iget-object v0, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    move v7, v2

    .line 183
    :goto_1
    if-ge v7, v0, :cond_7

    .line 184
    .line 185
    iget-object v8, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Le3/h$b;

    .line 192
    .line 193
    iget-object v8, v8, Le3/h$b;->b:Le3/v;

    .line 194
    .line 195
    iput-wide v4, v8, Le3/v;->b:J

    .line 196
    .line 197
    iput-wide v4, v8, Le3/v;->d:J

    .line 198
    .line 199
    iput-wide v4, v8, Le3/v;->c:J

    .line 200
    .line 201
    add-int/lit8 v7, v7, 0x1

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_7
    iget v0, p0, Le3/h;->t:I

    .line 205
    .line 206
    const/4 v7, 0x0

    .line 207
    if-ne v0, v6, :cond_8

    .line 208
    .line 209
    iput-object v7, p0, Le3/h;->C:Le3/h$b;

    .line 210
    .line 211
    iget-wide v0, p0, Le3/h;->u:J

    .line 212
    .line 213
    add-long/2addr v4, v0

    .line 214
    iput-wide v4, p0, Le3/h;->x:J

    .line 215
    .line 216
    const/4 p1, 0x2

    .line 217
    iput p1, p0, Le3/h;->s:I

    .line 218
    .line 219
    return v3

    .line 220
    :cond_8
    invoke-static {v0}, Le3/h;->U(I)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 227
    .line 228
    .line 229
    move-result-wide v0

    .line 230
    iget-wide v4, p0, Le3/h;->u:J

    .line 231
    .line 232
    add-long/2addr v0, v4

    .line 233
    const-wide/16 v4, 0x8

    .line 234
    .line 235
    sub-long/2addr v0, v4

    .line 236
    iget-object p1, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 237
    .line 238
    new-instance v2, Landroidx/media3/container/d$b;

    .line 239
    .line 240
    iget v4, p0, Le3/h;->t:I

    .line 241
    .line 242
    invoke-direct {v2, v4, v0, v1}, Landroidx/media3/container/d$b;-><init>(IJ)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-wide v4, p0, Le3/h;->u:J

    .line 249
    .line 250
    iget p1, p0, Le3/h;->v:I

    .line 251
    .line 252
    int-to-long v6, p1

    .line 253
    cmp-long p1, v4, v6

    .line 254
    .line 255
    if-nez p1, :cond_9

    .line 256
    .line 257
    invoke-direct {p0, v0, v1}, Le3/h;->P(J)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_9
    invoke-direct {p0}, Le3/h;->k()V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_a
    iget p1, p0, Le3/h;->t:I

    .line 266
    .line 267
    invoke-static {p1}, Le3/h;->V(I)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    const-wide/32 v4, 0x7fffffff

    .line 272
    .line 273
    .line 274
    if-eqz p1, :cond_d

    .line 275
    .line 276
    iget p1, p0, Le3/h;->v:I

    .line 277
    .line 278
    if-ne p1, v1, :cond_c

    .line 279
    .line 280
    iget-wide v6, p0, Le3/h;->u:J

    .line 281
    .line 282
    cmp-long p1, v6, v4

    .line 283
    .line 284
    if-gtz p1, :cond_b

    .line 285
    .line 286
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 287
    .line 288
    iget-wide v4, p0, Le3/h;->u:J

    .line 289
    .line 290
    long-to-int v0, v4

    .line 291
    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Le3/h;->m:Landroidx/media3/common/util/j0;

    .line 295
    .line 296
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    .line 306
    .line 307
    iput-object p1, p0, Le3/h;->w:Landroidx/media3/common/util/j0;

    .line 308
    .line 309
    iput v3, p0, Le3/h;->s:I

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_b
    const-string p1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 313
    .line 314
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    throw p1

    .line 319
    :cond_c
    const-string p1, "Leaf atom defines extended atom size (unsupported)."

    .line 320
    .line 321
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    throw p1

    .line 326
    :cond_d
    iget-wide v0, p0, Le3/h;->u:J

    .line 327
    .line 328
    cmp-long p1, v0, v4

    .line 329
    .line 330
    if-gtz p1, :cond_e

    .line 331
    .line 332
    iput-object v7, p0, Le3/h;->w:Landroidx/media3/common/util/j0;

    .line 333
    .line 334
    iput v3, p0, Le3/h;->s:I

    .line 335
    .line 336
    :goto_2
    return v3

    .line 337
    :cond_e
    const-string p1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 338
    .line 339
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    throw p1

    .line 344
    :cond_f
    const-string p1, "Atom size less than header length (unsupported)."

    .line 345
    .line 346
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    throw p1
.end method

.method private R(Lk2/s;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Le3/h;->u:J

    .line 2
    .line 3
    iget v2, p0, Le3/h;->v:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    sub-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Le3/h;->w:Landroidx/media3/common/util/j0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    invoke-interface {p1, v2, v3, v0}, Lk2/s;->readFully([BII)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/media3/container/d$c;

    .line 22
    .line 23
    iget v2, p0, Le3/h;->t:I

    .line 24
    .line 25
    invoke-direct {v0, v2, v1}, Landroidx/media3/container/d$c;-><init>(ILandroidx/media3/common/util/j0;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-direct {p0, v0, v1, v2}, Le3/h;->w(Landroidx/media3/container/d$c;J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-direct {p0, v0, v1}, Le3/h;->P(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private S(Lk2/s;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide v2, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v5, v1

    .line 15
    :goto_0
    if-ge v4, v0, :cond_1

    .line 16
    .line 17
    iget-object v6, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Le3/h$b;

    .line 24
    .line 25
    iget-object v6, v6, Le3/h$b;->b:Le3/v;

    .line 26
    .line 27
    iget-boolean v7, v6, Le3/v;->p:Z

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    iget-wide v6, v6, Le3/v;->d:J

    .line 32
    .line 33
    cmp-long v8, v6, v2

    .line 34
    .line 35
    if-gez v8, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v5, v2

    .line 44
    check-cast v5, Le3/h$b;

    .line 45
    .line 46
    move-wide v2, v6

    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-nez v5, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x3

    .line 53
    iput p1, p0, Le3/h;->s:I

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    sub-long/2addr v2, v6

    .line 61
    long-to-int v0, v2

    .line 62
    if-ltz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v5, Le3/h$b;->b:Le3/v;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Le3/v;->b(Lk2/s;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string p1, "Offset to encryption data was negative."

    .line 74
    .line 75
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    throw p1
.end method

.method private T(Lk2/s;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Le3/h;->C:Le3/h$b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_3

    .line 10
    .line 11
    iget-object v2, v0, Le3/h;->e:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-static {v2}, Le3/h;->n(Landroid/util/SparseArray;)Le3/h$b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-wide v5, v0, Le3/h;->x:J

    .line 20
    .line 21
    invoke-interface/range {p1 .. p1}, Lk2/s;->getPosition()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    sub-long/2addr v5, v7

    .line 26
    long-to-int v2, v5

    .line 27
    if-ltz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1, v2}, Lk2/s;->skipFully(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct/range {p0 .. p0}, Le3/h;->k()V

    .line 33
    .line 34
    .line 35
    return v4

    .line 36
    :cond_0
    const-string v1, "Offset to end of mdat was negative."

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    throw v1

    .line 43
    :cond_1
    invoke-virtual {v2}, Le3/h$b;->d()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-interface/range {p1 .. p1}, Lk2/s;->getPosition()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    sub-long/2addr v5, v7

    .line 52
    long-to-int v5, v5

    .line 53
    if-gez v5, :cond_2

    .line 54
    .line 55
    const-string v5, "FragmentedMp4Extractor"

    .line 56
    .line 57
    const-string v6, "Ignoring negative offset to sample data."

    .line 58
    .line 59
    invoke-static {v5, v6}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move v5, v4

    .line 63
    :cond_2
    invoke-interface {v1, v5}, Lk2/s;->skipFully(I)V

    .line 64
    .line 65
    .line 66
    iput-object v2, v0, Le3/h;->C:Le3/h$b;

    .line 67
    .line 68
    :cond_3
    iget v5, v0, Le3/h;->s:I

    .line 69
    .line 70
    const/4 v6, 0x3

    .line 71
    const/4 v7, 0x4

    .line 72
    const/4 v8, 0x1

    .line 73
    if-ne v5, v6, :cond_8

    .line 74
    .line 75
    invoke-virtual {v2}, Le3/h$b;->f()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iput v5, v0, Le3/h;->D:I

    .line 80
    .line 81
    iget-object v5, v2, Le3/h$b;->d:Le3/w;

    .line 82
    .line 83
    iget-object v5, v5, Le3/w;->a:Le3/t;

    .line 84
    .line 85
    iget-object v5, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 86
    .line 87
    invoke-direct {v0, v5}, Le3/h;->h(Landroidx/media3/common/r;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    xor-int/2addr v5, v8

    .line 92
    iput-boolean v5, v0, Le3/h;->G:Z

    .line 93
    .line 94
    iget v5, v2, Le3/h$b;->f:I

    .line 95
    .line 96
    iget v9, v2, Le3/h$b;->i:I

    .line 97
    .line 98
    if-ge v5, v9, :cond_5

    .line 99
    .line 100
    iget v4, v0, Le3/h;->D:I

    .line 101
    .line 102
    invoke-interface {v1, v4}, Lk2/s;->skipFully(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Le3/h$b;->m()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Le3/h$b;->h()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_4

    .line 113
    .line 114
    iput-object v3, v0, Le3/h;->C:Le3/h$b;

    .line 115
    .line 116
    :cond_4
    iput v6, v0, Le3/h;->s:I

    .line 117
    .line 118
    return v8

    .line 119
    :cond_5
    iget-object v5, v2, Le3/h$b;->d:Le3/w;

    .line 120
    .line 121
    iget-object v5, v5, Le3/w;->a:Le3/t;

    .line 122
    .line 123
    iget v5, v5, Le3/t;->h:I

    .line 124
    .line 125
    if-ne v5, v8, :cond_6

    .line 126
    .line 127
    iget v5, v0, Le3/h;->D:I

    .line 128
    .line 129
    const/16 v9, 0x8

    .line 130
    .line 131
    sub-int/2addr v5, v9

    .line 132
    iput v5, v0, Le3/h;->D:I

    .line 133
    .line 134
    invoke-interface {v1, v9}, Lk2/s;->skipFully(I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-object v5, v2, Le3/h$b;->d:Le3/w;

    .line 138
    .line 139
    iget-object v5, v5, Le3/w;->a:Le3/t;

    .line 140
    .line 141
    iget-object v5, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 142
    .line 143
    iget-object v5, v5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 144
    .line 145
    const-string v9, "audio/ac4"

    .line 146
    .line 147
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_7

    .line 152
    .line 153
    iget v5, v0, Le3/h;->D:I

    .line 154
    .line 155
    const/4 v9, 0x7

    .line 156
    invoke-virtual {v2, v5, v9}, Le3/h$b;->i(II)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iput v5, v0, Le3/h;->E:I

    .line 161
    .line 162
    iget v5, v0, Le3/h;->D:I

    .line 163
    .line 164
    iget-object v10, v0, Le3/h;->j:Landroidx/media3/common/util/j0;

    .line 165
    .line 166
    invoke-static {v5, v10}, Lk2/c;->a(ILandroidx/media3/common/util/j0;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, v2, Le3/h$b;->a:Lk2/s0;

    .line 170
    .line 171
    iget-object v10, v0, Le3/h;->j:Landroidx/media3/common/util/j0;

    .line 172
    .line 173
    invoke-interface {v5, v10, v9}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 174
    .line 175
    .line 176
    iget v5, v0, Le3/h;->E:I

    .line 177
    .line 178
    add-int/2addr v5, v9

    .line 179
    iput v5, v0, Le3/h;->E:I

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_7
    iget v5, v0, Le3/h;->D:I

    .line 183
    .line 184
    invoke-virtual {v2, v5, v4}, Le3/h$b;->i(II)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    iput v5, v0, Le3/h;->E:I

    .line 189
    .line 190
    :goto_0
    iget v5, v0, Le3/h;->D:I

    .line 191
    .line 192
    iget v9, v0, Le3/h;->E:I

    .line 193
    .line 194
    add-int/2addr v5, v9

    .line 195
    iput v5, v0, Le3/h;->D:I

    .line 196
    .line 197
    iput v7, v0, Le3/h;->s:I

    .line 198
    .line 199
    iput v4, v0, Le3/h;->F:I

    .line 200
    .line 201
    :cond_8
    iget-object v5, v2, Le3/h$b;->d:Le3/w;

    .line 202
    .line 203
    iget-object v5, v5, Le3/w;->a:Le3/t;

    .line 204
    .line 205
    iget-object v9, v2, Le3/h$b;->a:Lk2/s0;

    .line 206
    .line 207
    invoke-virtual {v2}, Le3/h$b;->e()J

    .line 208
    .line 209
    .line 210
    move-result-wide v10

    .line 211
    iget-object v12, v0, Le3/h;->k:Landroidx/media3/common/util/p0;

    .line 212
    .line 213
    if-eqz v12, :cond_9

    .line 214
    .line 215
    invoke-virtual {v12, v10, v11}, Landroidx/media3/common/util/p0;->a(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v10

    .line 219
    :cond_9
    move-wide v14, v10

    .line 220
    iget v10, v5, Le3/t;->k:I

    .line 221
    .line 222
    if-eqz v10, :cond_14

    .line 223
    .line 224
    iget-object v10, v0, Le3/h;->g:Landroidx/media3/common/util/j0;

    .line 225
    .line 226
    invoke-virtual {v10}, Landroidx/media3/common/util/j0;->e()[B

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    aput-byte v4, v10, v4

    .line 231
    .line 232
    aput-byte v4, v10, v8

    .line 233
    .line 234
    const/4 v11, 0x2

    .line 235
    aput-byte v4, v10, v11

    .line 236
    .line 237
    iget v11, v5, Le3/t;->k:I

    .line 238
    .line 239
    rsub-int/lit8 v11, v11, 0x4

    .line 240
    .line 241
    :goto_1
    iget v12, v0, Le3/h;->E:I

    .line 242
    .line 243
    iget v13, v0, Le3/h;->D:I

    .line 244
    .line 245
    if-ge v12, v13, :cond_15

    .line 246
    .line 247
    iget v12, v0, Le3/h;->F:I

    .line 248
    .line 249
    if-nez v12, :cond_f

    .line 250
    .line 251
    iget-object v12, v0, Le3/h;->K:[Lk2/s0;

    .line 252
    .line 253
    array-length v12, v12

    .line 254
    if-gtz v12, :cond_a

    .line 255
    .line 256
    iget-boolean v12, v0, Le3/h;->G:Z

    .line 257
    .line 258
    if-nez v12, :cond_b

    .line 259
    .line 260
    :cond_a
    iget-object v12, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 261
    .line 262
    invoke-static {v12}, Landroidx/media3/container/g;->o(Landroidx/media3/common/r;)I

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    iget v13, v5, Le3/t;->k:I

    .line 267
    .line 268
    add-int/2addr v13, v12

    .line 269
    iget v6, v0, Le3/h;->D:I

    .line 270
    .line 271
    iget v3, v0, Le3/h;->E:I

    .line 272
    .line 273
    sub-int/2addr v6, v3

    .line 274
    if-gt v13, v6, :cond_b

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_b
    move v12, v4

    .line 278
    :goto_2
    iget v3, v5, Le3/t;->k:I

    .line 279
    .line 280
    add-int/2addr v3, v12

    .line 281
    invoke-interface {v1, v10, v11, v3}, Lk2/s;->readFully([BII)V

    .line 282
    .line 283
    .line 284
    iget-object v3, v0, Le3/h;->g:Landroidx/media3/common/util/j0;

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->W(I)V

    .line 287
    .line 288
    .line 289
    iget-object v3, v0, Le3/h;->g:Landroidx/media3/common/util/j0;

    .line 290
    .line 291
    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->q()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-ltz v3, :cond_e

    .line 296
    .line 297
    sub-int/2addr v3, v12

    .line 298
    iput v3, v0, Le3/h;->F:I

    .line 299
    .line 300
    iget-object v3, v0, Le3/h;->f:Landroidx/media3/common/util/j0;

    .line 301
    .line 302
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->W(I)V

    .line 303
    .line 304
    .line 305
    iget-object v3, v0, Le3/h;->f:Landroidx/media3/common/util/j0;

    .line 306
    .line 307
    invoke-interface {v9, v3, v7}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 308
    .line 309
    .line 310
    iget v3, v0, Le3/h;->E:I

    .line 311
    .line 312
    add-int/2addr v3, v7

    .line 313
    iput v3, v0, Le3/h;->E:I

    .line 314
    .line 315
    iget v3, v0, Le3/h;->D:I

    .line 316
    .line 317
    add-int/2addr v3, v11

    .line 318
    iput v3, v0, Le3/h;->D:I

    .line 319
    .line 320
    iget-object v3, v0, Le3/h;->K:[Lk2/s0;

    .line 321
    .line 322
    array-length v3, v3

    .line 323
    if-lez v3, :cond_c

    .line 324
    .line 325
    if-lez v12, :cond_c

    .line 326
    .line 327
    iget-object v3, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 328
    .line 329
    aget-byte v6, v10, v7

    .line 330
    .line 331
    invoke-static {v3, v6}, Landroidx/media3/container/g;->n(Landroidx/media3/common/r;B)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_c

    .line 336
    .line 337
    move v3, v8

    .line 338
    goto :goto_3

    .line 339
    :cond_c
    move v3, v4

    .line 340
    :goto_3
    iput-boolean v3, v0, Le3/h;->H:Z

    .line 341
    .line 342
    iget-object v3, v0, Le3/h;->g:Landroidx/media3/common/util/j0;

    .line 343
    .line 344
    invoke-interface {v9, v3, v12}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 345
    .line 346
    .line 347
    iget v3, v0, Le3/h;->E:I

    .line 348
    .line 349
    add-int/2addr v3, v12

    .line 350
    iput v3, v0, Le3/h;->E:I

    .line 351
    .line 352
    if-lez v12, :cond_d

    .line 353
    .line 354
    iget-boolean v3, v0, Le3/h;->G:Z

    .line 355
    .line 356
    if-nez v3, :cond_d

    .line 357
    .line 358
    iget-object v3, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 359
    .line 360
    invoke-static {v10, v7, v12, v3}, Landroidx/media3/container/g;->k([BIILandroidx/media3/common/r;)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_d

    .line 365
    .line 366
    iput-boolean v8, v0, Le3/h;->G:Z

    .line 367
    .line 368
    :cond_d
    :goto_4
    const/4 v3, 0x0

    .line 369
    const/4 v6, 0x3

    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_e
    const-string v1, "Invalid NAL length"

    .line 373
    .line 374
    const/4 v2, 0x0

    .line 375
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    throw v1

    .line 380
    :cond_f
    iget-boolean v3, v0, Le3/h;->H:Z

    .line 381
    .line 382
    if-eqz v3, :cond_12

    .line 383
    .line 384
    iget-object v3, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 385
    .line 386
    invoke-virtual {v3, v12}, Landroidx/media3/common/util/j0;->S(I)V

    .line 387
    .line 388
    .line 389
    iget-object v3, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 390
    .line 391
    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->e()[B

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iget v6, v0, Le3/h;->F:I

    .line 396
    .line 397
    invoke-interface {v1, v3, v4, v6}, Lk2/s;->readFully([BII)V

    .line 398
    .line 399
    .line 400
    iget-object v3, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 401
    .line 402
    iget v6, v0, Le3/h;->F:I

    .line 403
    .line 404
    invoke-interface {v9, v3, v6}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 405
    .line 406
    .line 407
    iget v3, v0, Le3/h;->F:I

    .line 408
    .line 409
    iget-object v6, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 410
    .line 411
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->e()[B

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    iget-object v12, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 416
    .line 417
    invoke-virtual {v12}, Landroidx/media3/common/util/j0;->g()I

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    invoke-static {v6, v12}, Landroidx/media3/container/g;->L([BI)I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    iget-object v12, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 426
    .line 427
    invoke-virtual {v12, v4}, Landroidx/media3/common/util/j0;->W(I)V

    .line 428
    .line 429
    .line 430
    iget-object v12, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 431
    .line 432
    invoke-virtual {v12, v6}, Landroidx/media3/common/util/j0;->V(I)V

    .line 433
    .line 434
    .line 435
    iget-object v6, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 436
    .line 437
    iget v6, v6, Landroidx/media3/common/r;->q:I

    .line 438
    .line 439
    const/4 v12, -0x1

    .line 440
    if-ne v6, v12, :cond_10

    .line 441
    .line 442
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 443
    .line 444
    invoke-virtual {v6}, Landroidx/media3/container/i;->f()I

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    if-eqz v6, :cond_11

    .line 449
    .line 450
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 451
    .line 452
    invoke-virtual {v6, v4}, Landroidx/media3/container/i;->g(I)V

    .line 453
    .line 454
    .line 455
    goto :goto_5

    .line 456
    :cond_10
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 457
    .line 458
    invoke-virtual {v6}, Landroidx/media3/container/i;->f()I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    iget-object v12, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 463
    .line 464
    iget v12, v12, Landroidx/media3/common/r;->q:I

    .line 465
    .line 466
    if-eq v6, v12, :cond_11

    .line 467
    .line 468
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 469
    .line 470
    invoke-virtual {v6, v12}, Landroidx/media3/container/i;->g(I)V

    .line 471
    .line 472
    .line 473
    :cond_11
    :goto_5
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 474
    .line 475
    iget-object v12, v0, Le3/h;->h:Landroidx/media3/common/util/j0;

    .line 476
    .line 477
    invoke-virtual {v6, v14, v15, v12}, Landroidx/media3/container/i;->a(JLandroidx/media3/common/util/j0;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Le3/h$b;->c()I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    and-int/2addr v6, v7

    .line 485
    if-eqz v6, :cond_13

    .line 486
    .line 487
    iget-object v6, v0, Le3/h;->p:Landroidx/media3/container/i;

    .line 488
    .line 489
    invoke-virtual {v6}, Landroidx/media3/container/i;->d()V

    .line 490
    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_12
    invoke-interface {v9, v1, v12, v4}, Lk2/s0;->e(Landroidx/media3/common/j;IZ)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    :cond_13
    :goto_6
    iget v6, v0, Le3/h;->E:I

    .line 498
    .line 499
    add-int/2addr v6, v3

    .line 500
    iput v6, v0, Le3/h;->E:I

    .line 501
    .line 502
    iget v6, v0, Le3/h;->F:I

    .line 503
    .line 504
    sub-int/2addr v6, v3

    .line 505
    iput v6, v0, Le3/h;->F:I

    .line 506
    .line 507
    goto/16 :goto_4

    .line 508
    .line 509
    :cond_14
    :goto_7
    iget v3, v0, Le3/h;->E:I

    .line 510
    .line 511
    iget v5, v0, Le3/h;->D:I

    .line 512
    .line 513
    if-ge v3, v5, :cond_15

    .line 514
    .line 515
    sub-int/2addr v5, v3

    .line 516
    invoke-interface {v9, v1, v5, v4}, Lk2/s0;->e(Landroidx/media3/common/j;IZ)I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    iget v5, v0, Le3/h;->E:I

    .line 521
    .line 522
    add-int/2addr v5, v3

    .line 523
    iput v5, v0, Le3/h;->E:I

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_15
    invoke-virtual {v2}, Le3/h$b;->c()I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    iget-boolean v3, v0, Le3/h;->G:Z

    .line 531
    .line 532
    if-nez v3, :cond_16

    .line 533
    .line 534
    const/high16 v3, 0x4000000

    .line 535
    .line 536
    or-int/2addr v1, v3

    .line 537
    :cond_16
    move v12, v1

    .line 538
    invoke-virtual {v2}, Le3/h$b;->g()Le3/u;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    if-eqz v1, :cond_17

    .line 543
    .line 544
    iget-object v1, v1, Le3/u;->c:Lk2/s0$a;

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_17
    const/4 v1, 0x0

    .line 548
    :goto_8
    iget v13, v0, Le3/h;->D:I

    .line 549
    .line 550
    const/4 v3, 0x0

    .line 551
    move-wide v10, v14

    .line 552
    move-wide v4, v14

    .line 553
    move v14, v3

    .line 554
    move-object v15, v1

    .line 555
    invoke-interface/range {v9 .. v15}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 556
    .line 557
    .line 558
    invoke-direct {v0, v4, v5}, Le3/h;->z(J)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2}, Le3/h$b;->h()Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-nez v1, :cond_18

    .line 566
    .line 567
    const/4 v1, 0x0

    .line 568
    iput-object v1, v0, Le3/h;->C:Le3/h$b;

    .line 569
    .line 570
    :cond_18
    const/4 v1, 0x3

    .line 571
    iput v1, v0, Le3/h;->s:I

    .line 572
    .line 573
    return v8
.end method

.method private static U(I)Z
    .locals 1

    .line 1
    const v0, 0x6d6f6f76

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x7472616b

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x6d646961

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x6d696e66

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x7374626c

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x6d6f6f66

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x74726166

    .line 32
    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x6d766578

    .line 37
    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    const v0, 0x65647473

    .line 42
    .line 43
    .line 44
    if-ne p0, v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 50
    :goto_1
    return p0
.end method

.method private static V(I)Z
    .locals 1

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x6d646864

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x6d766864

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x73696478

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x73747364

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x73747473

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x63747473

    .line 32
    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x73747363

    .line 37
    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    const v0, 0x7374737a

    .line 42
    .line 43
    .line 44
    if-eq p0, v0, :cond_1

    .line 45
    .line 46
    const v0, 0x73747a32

    .line 47
    .line 48
    .line 49
    if-eq p0, v0, :cond_1

    .line 50
    .line 51
    const v0, 0x7374636f

    .line 52
    .line 53
    .line 54
    if-eq p0, v0, :cond_1

    .line 55
    .line 56
    const v0, 0x636f3634

    .line 57
    .line 58
    .line 59
    if-eq p0, v0, :cond_1

    .line 60
    .line 61
    const v0, 0x73747373

    .line 62
    .line 63
    .line 64
    if-eq p0, v0, :cond_1

    .line 65
    .line 66
    const v0, 0x74666474

    .line 67
    .line 68
    .line 69
    if-eq p0, v0, :cond_1

    .line 70
    .line 71
    const v0, 0x74666864

    .line 72
    .line 73
    .line 74
    if-eq p0, v0, :cond_1

    .line 75
    .line 76
    const v0, 0x746b6864

    .line 77
    .line 78
    .line 79
    if-eq p0, v0, :cond_1

    .line 80
    .line 81
    const v0, 0x74726578

    .line 82
    .line 83
    .line 84
    if-eq p0, v0, :cond_1

    .line 85
    .line 86
    const v0, 0x7472756e

    .line 87
    .line 88
    .line 89
    if-eq p0, v0, :cond_1

    .line 90
    .line 91
    const v0, 0x70737368    # 3.013775E29f

    .line 92
    .line 93
    .line 94
    if-eq p0, v0, :cond_1

    .line 95
    .line 96
    const v0, 0x7361697a

    .line 97
    .line 98
    .line 99
    if-eq p0, v0, :cond_1

    .line 100
    .line 101
    const v0, 0x7361696f

    .line 102
    .line 103
    .line 104
    if-eq p0, v0, :cond_1

    .line 105
    .line 106
    const v0, 0x73656e63

    .line 107
    .line 108
    .line 109
    if-eq p0, v0, :cond_1

    .line 110
    .line 111
    const v0, 0x75756964

    .line 112
    .line 113
    .line 114
    if-eq p0, v0, :cond_1

    .line 115
    .line 116
    const v0, 0x73626770

    .line 117
    .line 118
    .line 119
    if-eq p0, v0, :cond_1

    .line 120
    .line 121
    const v0, 0x73677064

    .line 122
    .line 123
    .line 124
    if-eq p0, v0, :cond_1

    .line 125
    .line 126
    const v0, 0x656c7374

    .line 127
    .line 128
    .line 129
    if-eq p0, v0, :cond_1

    .line 130
    .line 131
    const v0, 0x6d656864

    .line 132
    .line 133
    .line 134
    if-eq p0, v0, :cond_1

    .line 135
    .line 136
    const v0, 0x656d7367

    .line 137
    .line 138
    .line 139
    if-ne p0, v0, :cond_0

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    const/4 p0, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 145
    :goto_1
    return p0
.end method

.method public static synthetic a(Le3/h;JLandroidx/media3/common/util/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le3/h;->r(JLandroidx/media3/common/util/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Le3/h;->s()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private h(Landroidx/media3/common/r;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget p1, p0, Le3/h;->b:I

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0x40

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    return v1

    .line 22
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "video/hevc"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget p1, p0, Le3/h;->b:I

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x80

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_1
    return v1

    .line 41
    :cond_3
    return v2
.end method

.method private static i(I)I
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Unexpected negative value: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public static j(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x40

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    or-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    :cond_1
    return v0
.end method

.method private k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le3/h;->s:I

    .line 3
    .line 4
    iput v0, p0, Le3/h;->v:I

    .line 5
    .line 6
    return-void
.end method

.method private l(Landroid/util/SparseArray;I)Le3/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Le3/c;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Le3/c;

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Le3/c;

    .line 27
    .line 28
    return-object p1
.end method

.method private static m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Landroidx/media3/container/d$c;

    .line 15
    .line 16
    iget v5, v4, Landroidx/media3/container/d;->a:I

    .line 17
    .line 18
    const v6, 0x70737368    # 3.013775E29f

    .line 19
    .line 20
    .line 21
    if-ne v5, v6, :cond_2

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->e()[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Le3/p;->f([B)Ljava/util/UUID;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    const-string v4, "FragmentedMp4Extractor"

    .line 43
    .line 44
    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 45
    .line 46
    invoke-static {v4, v5}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 51
    .line 52
    const-string v7, "video/mp4"

    .line 53
    .line 54
    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-nez v3, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance v1, Landroidx/media3/common/DrmInitData;

    .line 67
    .line 68
    invoke-direct {v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-object v1
.end method

.method private static n(Landroid/util/SparseArray;)Le3/h$b;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide v2, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Le3/h$b;

    .line 19
    .line 20
    invoke-static {v5}, Le3/h$b;->a(Le3/h$b;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    iget v6, v5, Le3/h$b;->f:I

    .line 27
    .line 28
    iget-object v7, v5, Le3/h$b;->d:Le3/w;

    .line 29
    .line 30
    iget v7, v7, Le3/w;->b:I

    .line 31
    .line 32
    if-eq v6, v7, :cond_2

    .line 33
    .line 34
    :cond_0
    invoke-static {v5}, Le3/h$b;->a(Le3/h$b;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget v6, v5, Le3/h$b;->h:I

    .line 41
    .line 42
    iget-object v7, v5, Le3/h$b;->b:Le3/v;

    .line 43
    .line 44
    iget v7, v7, Le3/v;->e:I

    .line 45
    .line 46
    if-ne v6, v7, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v5}, Le3/h$b;->d()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    cmp-long v8, v6, v2

    .line 54
    .line 55
    if-gez v8, :cond_2

    .line 56
    .line 57
    move-object v1, v5

    .line 58
    move-wide v2, v6

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-object v1
.end method

.method private p()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lk2/s0;

    .line 3
    .line 4
    iput-object v0, p0, Le3/h;->J:[Lk2/s0;

    .line 5
    .line 6
    iget-object v1, p0, Le3/h;->q:Lk2/s0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    iget v3, p0, Le3/h;->b:I

    .line 17
    .line 18
    and-int/lit8 v3, v3, 0x4

    .line 19
    .line 20
    const/16 v4, 0x64

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    iget-object v5, p0, Le3/h;->I:Lk2/t;

    .line 27
    .line 28
    const/4 v6, 0x5

    .line 29
    invoke-interface {v5, v4, v6}, Lk2/t;->track(II)Lk2/s0;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    aput-object v4, v0, v1

    .line 34
    .line 35
    const/16 v4, 0x65

    .line 36
    .line 37
    move v1, v3

    .line 38
    :cond_1
    iget-object v0, p0, Le3/h;->J:[Lk2/s0;

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->X0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, [Lk2/s0;

    .line 45
    .line 46
    iput-object v0, p0, Le3/h;->J:[Lk2/s0;

    .line 47
    .line 48
    array-length v1, v0

    .line 49
    move v3, v2

    .line 50
    :goto_1
    if-ge v3, v1, :cond_2

    .line 51
    .line 52
    aget-object v5, v0, v3

    .line 53
    .line 54
    sget-object v6, Le3/h;->O:Landroidx/media3/common/r;

    .line 55
    .line 56
    invoke-interface {v5, v6}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Le3/h;->d:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-array v0, v0, [Lk2/s0;

    .line 69
    .line 70
    iput-object v0, p0, Le3/h;->K:[Lk2/s0;

    .line 71
    .line 72
    :goto_2
    iget-object v0, p0, Le3/h;->K:[Lk2/s0;

    .line 73
    .line 74
    array-length v0, v0

    .line 75
    if-ge v2, v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Le3/h;->I:Lk2/t;

    .line 78
    .line 79
    add-int/lit8 v1, v4, 0x1

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    invoke-interface {v0, v4, v3}, Lk2/t;->track(II)Lk2/s0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v3, p0, Le3/h;->d:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/media3/common/r;

    .line 93
    .line 94
    invoke-interface {v0, v3}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Le3/h;->K:[Lk2/s0;

    .line 98
    .line 99
    aput-object v0, v3, v2

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    move v4, v1

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    return-void
.end method

.method private static q(Le3/t;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Le3/t;->i:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v2, v3, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Le3/t;->j:[J

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    aget-wide v4, v0, v1

    .line 16
    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    cmp-long v0, v4, v6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    const-wide/32 v6, 0xf4240

    .line 25
    .line 26
    .line 27
    iget-wide v8, p0, Le3/t;->d:J

    .line 28
    .line 29
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-object v0, p0, Le3/t;->j:[J

    .line 34
    .line 35
    aget-wide v6, v0, v1

    .line 36
    .line 37
    const-wide/32 v8, 0xf4240

    .line 38
    .line 39
    .line 40
    iget-wide v10, p0, Le3/t;->c:J

    .line 41
    .line 42
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    add-long/2addr v4, v6

    .line 47
    iget-wide v6, p0, Le3/t;->e:J

    .line 48
    .line 49
    cmp-long p0, v4, v6

    .line 50
    .line 51
    if-ltz p0, :cond_2

    .line 52
    .line 53
    move v1, v3

    .line 54
    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic r(JLandroidx/media3/common/util/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->K:[Lk2/s0;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Lk2/g;->a(JLandroidx/media3/common/util/j0;[Lk2/s0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic s()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Le3/h;

    .line 2
    .line 3
    sget-object v1, Lh3/s$a;->a:Lh3/s$a;

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Le3/h;-><init>(Lh3/s$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Lk2/r;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    return-object v1
.end method

.method private u(Landroidx/media3/container/d$b;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/container/d;->a:I

    .line 2
    .line 3
    const v1, 0x6d6f6f76

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Le3/h;->y(Landroidx/media3/container/d$b;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v1, 0x6d6f6f66

    .line 13
    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Le3/h;->x(Landroidx/media3/container/d$b;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/media3/container/d$b;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/media3/container/d$b;->b(Landroidx/media3/container/d$b;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method private v(Landroidx/media3/common/util/j0;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Le3/h;->J:[Lk2/s0;

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->q()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Le3/b;->p(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Skipping unsupported emsg version: "

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "FragmentedMp4Extractor"

    .line 52
    .line 53
    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 58
    .line 59
    .line 60
    move-result-wide v12

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->O()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    const-wide/32 v8, 0xf4240

    .line 66
    .line 67
    .line 68
    move-wide v10, v12

    .line 69
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    const-wide/16 v8, 0x3e8

    .line 78
    .line 79
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 84
    .line 85
    .line 86
    move-result-wide v8

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-static {v10}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    check-cast v10, Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v20, v2

    .line 108
    .line 109
    move-wide/from16 v22, v6

    .line 110
    .line 111
    move-wide/from16 v24, v8

    .line 112
    .line 113
    move-object/from16 v21, v10

    .line 114
    .line 115
    move-wide v8, v4

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    move-object v10, v6

    .line 136
    check-cast v10, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    const-wide/32 v13, 0xf4240

    .line 147
    .line 148
    .line 149
    move-wide v15, v6

    .line 150
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    iget-wide v11, v0, Le3/h;->B:J

    .line 155
    .line 156
    cmp-long v13, v11, v4

    .line 157
    .line 158
    if-eqz v13, :cond_3

    .line 159
    .line 160
    add-long/2addr v11, v8

    .line 161
    move-wide/from16 v17, v11

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    move-wide/from16 v17, v4

    .line 165
    .line 166
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    const-wide/16 v13, 0x3e8

    .line 171
    .line 172
    move-wide v15, v6

    .line 173
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 178
    .line 179
    .line 180
    move-result-wide v11

    .line 181
    move-object/from16 v20, v2

    .line 182
    .line 183
    move-wide/from16 v22, v6

    .line 184
    .line 185
    move-object/from16 v21, v10

    .line 186
    .line 187
    move-wide/from16 v24, v11

    .line 188
    .line 189
    move-wide/from16 v14, v17

    .line 190
    .line 191
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    new-array v2, v2, [B

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    const/4 v7, 0x0

    .line 202
    invoke-virtual {v1, v2, v7, v6}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lv2/a;

    .line 206
    .line 207
    move-object/from16 v19, v1

    .line 208
    .line 209
    move-object/from16 v26, v2

    .line 210
    .line 211
    invoke-direct/range {v19 .. v26}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 212
    .line 213
    .line 214
    new-instance v2, Landroidx/media3/common/util/j0;

    .line 215
    .line 216
    iget-object v6, v0, Le3/h;->l:Lv2/c;

    .line 217
    .line 218
    invoke-virtual {v6, v1}, Lv2/c;->a(Lv2/a;)[B

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-direct {v2, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->a()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v6, v0, Le3/h;->J:[Lk2/s0;

    .line 230
    .line 231
    array-length v10, v6

    .line 232
    move v11, v7

    .line 233
    :goto_2
    if-ge v11, v10, :cond_4

    .line 234
    .line 235
    aget-object v12, v6, v11

    .line 236
    .line 237
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/j0;->W(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v12, v2, v1}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v11, v11, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    cmp-long v2, v14, v4

    .line 247
    .line 248
    if-nez v2, :cond_5

    .line 249
    .line 250
    iget-object v2, v0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 251
    .line 252
    new-instance v4, Le3/h$a;

    .line 253
    .line 254
    invoke-direct {v4, v8, v9, v3, v1}, Le3/h$a;-><init>(JZI)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    iget v2, v0, Le3/h;->y:I

    .line 261
    .line 262
    add-int/2addr v2, v1

    .line 263
    iput v2, v0, Le3/h;->y:I

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_5
    iget-object v2, v0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_6

    .line 273
    .line 274
    iget-object v2, v0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 275
    .line 276
    new-instance v3, Le3/h$a;

    .line 277
    .line 278
    invoke-direct {v3, v14, v15, v7, v1}, Le3/h$a;-><init>(JZI)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget v2, v0, Le3/h;->y:I

    .line 285
    .line 286
    add-int/2addr v2, v1

    .line 287
    iput v2, v0, Le3/h;->y:I

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_6
    iget-object v2, v0, Le3/h;->k:Landroidx/media3/common/util/p0;

    .line 291
    .line 292
    if-eqz v2, :cond_7

    .line 293
    .line 294
    invoke-virtual {v2}, Landroidx/media3/common/util/p0;->g()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_7

    .line 299
    .line 300
    iget-object v2, v0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 301
    .line 302
    new-instance v3, Le3/h$a;

    .line 303
    .line 304
    invoke-direct {v3, v14, v15, v7, v1}, Le3/h$a;-><init>(JZI)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget v2, v0, Le3/h;->y:I

    .line 311
    .line 312
    add-int/2addr v2, v1

    .line 313
    iput v2, v0, Le3/h;->y:I

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_7
    iget-object v2, v0, Le3/h;->k:Landroidx/media3/common/util/p0;

    .line 317
    .line 318
    if-eqz v2, :cond_8

    .line 319
    .line 320
    invoke-virtual {v2, v14, v15}, Landroidx/media3/common/util/p0;->a(J)J

    .line 321
    .line 322
    .line 323
    move-result-wide v14

    .line 324
    :cond_8
    iget-object v2, v0, Le3/h;->J:[Lk2/s0;

    .line 325
    .line 326
    array-length v3, v2

    .line 327
    :goto_3
    if-ge v7, v3, :cond_9

    .line 328
    .line 329
    aget-object v16, v2, v7

    .line 330
    .line 331
    const/16 v21, 0x0

    .line 332
    .line 333
    const/16 v22, 0x0

    .line 334
    .line 335
    const/16 v19, 0x1

    .line 336
    .line 337
    move-wide/from16 v17, v14

    .line 338
    .line 339
    move/from16 v20, v1

    .line 340
    .line 341
    invoke-interface/range {v16 .. v22}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v7, v7, 0x1

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_9
    :goto_4
    return-void
.end method

.method private w(Landroidx/media3/container/d$c;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/media3/container/d$b;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/media3/container/d$b;->c(Landroidx/media3/container/d$c;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p1, Landroidx/media3/container/d;->a:I

    .line 22
    .line 23
    const v1, 0x73696478

    .line 24
    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 29
    .line 30
    invoke-static {p1, p2, p3}, Le3/h;->H(Landroidx/media3/common/util/j0;J)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    iput-wide p2, p0, Le3/h;->B:J

    .line 43
    .line 44
    iget-object p2, p0, Le3/h;->I:Lk2/t;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lk2/m0;

    .line 49
    .line 50
    invoke-interface {p2, p1}, Lk2/t;->d(Lk2/m0;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Le3/h;->L:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const p2, 0x656d7367

    .line 58
    .line 59
    .line 60
    if-ne v0, p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Le3/h;->v(Landroidx/media3/common/util/j0;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method private x(Landroidx/media3/container/d$b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget-object v1, p0, Le3/h;->c:Le3/t;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    iget v3, p0, Le3/h;->b:I

    .line 12
    .line 13
    iget-object v4, p0, Le3/h;->i:[B

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v3, v4}, Le3/h;->B(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {p1}, Le3/h;->m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    move v1, v2

    .line 33
    :goto_1
    if-ge v1, v0, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Le3/h$b;

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Le3/h$b;->n(Landroidx/media3/common/DrmInitData;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-wide v0, p0, Le3/h;->z:J

    .line 50
    .line 51
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    cmp-long p1, v0, v3

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    :goto_2
    if-ge v2, p1, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Le3/h$b;

    .line 75
    .line 76
    iget-wide v5, p0, Le3/h;->z:J

    .line 77
    .line 78
    invoke-virtual {v0, v5, v6}, Le3/h$b;->l(J)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iput-wide v3, p0, Le3/h;->z:J

    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method private y(Landroidx/media3/container/d$b;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le3/h;->c:Le3/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const-string v3, "Unexpected moov box."

    .line 11
    .line 12
    invoke-static {v0, v3}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Le3/h;->m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const v0, 0x6d766578

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/media3/container/d$b;

    .line 33
    .line 34
    new-instance v11, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    move-wide v5, v4

    .line 51
    move v4, v1

    .line 52
    :goto_1
    if-ge v4, v3, :cond_3

    .line 53
    .line 54
    iget-object v8, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Landroidx/media3/container/d$c;

    .line 61
    .line 62
    iget v9, v8, Landroidx/media3/container/d;->a:I

    .line 63
    .line 64
    const v10, 0x74726578

    .line 65
    .line 66
    .line 67
    if-ne v9, v10, :cond_1

    .line 68
    .line 69
    iget-object v8, v8, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 70
    .line 71
    invoke-static {v8}, Le3/h;->L(Landroidx/media3/common/util/j0;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v9, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v8, Le3/c;

    .line 86
    .line 87
    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    const v10, 0x6d656864

    .line 92
    .line 93
    .line 94
    if-ne v9, v10, :cond_2

    .line 95
    .line 96
    iget-object v5, v8, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 97
    .line 98
    invoke-static {v5}, Le3/h;->A(Landroidx/media3/common/util/j0;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance v4, Lk2/e0;

    .line 106
    .line 107
    invoke-direct {v4}, Lk2/e0;-><init>()V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Le3/h;->b:I

    .line 111
    .line 112
    and-int/lit8 v0, v0, 0x10

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    move v8, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v8, v1

    .line 119
    :goto_3
    new-instance v10, Le3/e;

    .line 120
    .line 121
    invoke-direct {v10, p0}, Le3/e;-><init>(Le3/h;)V

    .line 122
    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    move-object v3, p1

    .line 126
    invoke-static/range {v3 .. v10}, Le3/b;->G(Landroidx/media3/container/d$b;Lk2/e0;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget-object v3, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    invoke-static {p1}, Le3/k;->b(Ljava/util/List;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :goto_4
    if-ge v1, v0, :cond_5

    .line 147
    .line 148
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Le3/w;

    .line 153
    .line 154
    iget-object v4, v3, Le3/w;->a:Le3/t;

    .line 155
    .line 156
    iget-object v5, p0, Le3/h;->I:Lk2/t;

    .line 157
    .line 158
    iget v6, v4, Le3/t;->b:I

    .line 159
    .line 160
    invoke-interface {v5, v1, v6}, Lk2/t;->track(II)Lk2/s0;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iget-wide v6, v4, Le3/t;->e:J

    .line 165
    .line 166
    invoke-interface {v5, v6, v7}, Lk2/s0;->f(J)V

    .line 167
    .line 168
    .line 169
    new-instance v6, Le3/h$b;

    .line 170
    .line 171
    iget v7, v4, Le3/t;->a:I

    .line 172
    .line 173
    invoke-direct {p0, v11, v7}, Le3/h;->l(Landroid/util/SparseArray;I)Le3/c;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-direct {v6, v5, v3, v7, v2}, Le3/h$b;-><init>(Lk2/s0;Le3/w;Le3/c;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v3, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 181
    .line 182
    iget v5, v4, Le3/t;->a:I

    .line 183
    .line 184
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-wide v5, p0, Le3/h;->A:J

    .line 188
    .line 189
    iget-wide v3, v4, Le3/t;->e:J

    .line 190
    .line 191
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    iput-wide v3, p0, Le3/h;->A:J

    .line 196
    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    iget-object p1, p0, Le3/h;->I:Lk2/t;

    .line 201
    .line 202
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_6
    iget-object v3, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 207
    .line 208
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-ne v3, v0, :cond_7

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_7
    move v2, v1

    .line 216
    :goto_5
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 217
    .line 218
    .line 219
    :goto_6
    if-ge v1, v0, :cond_8

    .line 220
    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Le3/w;

    .line 226
    .line 227
    iget-object v3, v2, Le3/w;->a:Le3/t;

    .line 228
    .line 229
    iget-object v4, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 230
    .line 231
    iget v5, v3, Le3/t;->a:I

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Le3/h$b;

    .line 238
    .line 239
    iget v3, v3, Le3/t;->a:I

    .line 240
    .line 241
    invoke-direct {p0, v11, v3}, Le3/h;->l(Landroid/util/SparseArray;I)Le3/c;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v4, v2, v3}, Le3/h$b;->j(Le3/w;Le3/c;)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_8
    :goto_7
    return-void
.end method

.method private z(J)V
    .locals 13

    .line 1
    :cond_0
    iget-object v0, p0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Le3/h$a;

    .line 16
    .line 17
    iget v1, p0, Le3/h;->y:I

    .line 18
    .line 19
    iget v2, v0, Le3/h$a;->c:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    iput v1, p0, Le3/h;->y:I

    .line 23
    .line 24
    iget-wide v1, v0, Le3/h$a;->a:J

    .line 25
    .line 26
    iget-boolean v3, v0, Le3/h$a;->b:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    add-long/2addr v1, p1

    .line 31
    :cond_1
    iget-object v3, p0, Le3/h;->k:Landroidx/media3/common/util/p0;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/p0;->a(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    :cond_2
    iget-object v10, p0, Le3/h;->J:[Lk2/s0;

    .line 40
    .line 41
    array-length v11, v10

    .line 42
    const/4 v3, 0x0

    .line 43
    move v12, v3

    .line 44
    :goto_0
    if-ge v12, v11, :cond_0

    .line 45
    .line 46
    aget-object v3, v10, v12

    .line 47
    .line 48
    iget v7, v0, Le3/h$a;->c:I

    .line 49
    .line 50
    iget v8, p0, Le3/h;->y:I

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v6, 0x1

    .line 54
    move-wide v4, v1

    .line 55
    invoke-interface/range {v3 .. v9}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v12, v12, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Le3/s;->b(Lk2/s;)Lk2/q0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iput-object v0, p0, Le3/h;->r:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 1

    .line 1
    :cond_0
    :goto_0
    iget p2, p0, Le3/h;->s:I

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, p1}, Le3/h;->T(Lk2/s;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Le3/h;->S(Lk2/s;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-direct {p0, p1}, Le3/h;->R(Lk2/s;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-direct {p0, p1}, Le3/h;->Q(Lk2/s;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Le3/h;->p:Landroidx/media3/container/i;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/container/i;->d()V

    .line 36
    .line 37
    .line 38
    const/4 p1, -0x1

    .line 39
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 12

    .line 1
    iget v0, p0, Le3/h;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lh3/t;

    .line 8
    .line 9
    iget-object v1, p0, Le3/h;->a:Lh3/s$a;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lh3/t;-><init>(Lk2/t;Lh3/s$a;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Le3/h;->I:Lk2/t;

    .line 16
    .line 17
    invoke-direct {p0}, Le3/h;->k()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Le3/h;->p()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Le3/h;->c:Le3/t;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance v0, Le3/h$b;

    .line 28
    .line 29
    iget-object v1, p0, Le3/h;->I:Lk2/t;

    .line 30
    .line 31
    iget p1, p1, Le3/t;->b:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v1, v2, p1}, Lk2/t;->track(II)Lk2/s0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v1, Le3/w;

    .line 39
    .line 40
    iget-object v4, p0, Le3/h;->c:Le3/t;

    .line 41
    .line 42
    new-array v5, v2, [J

    .line 43
    .line 44
    new-array v6, v2, [I

    .line 45
    .line 46
    new-array v8, v2, [J

    .line 47
    .line 48
    new-array v9, v2, [I

    .line 49
    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v3, v1

    .line 54
    invoke-direct/range {v3 .. v11}, Le3/w;-><init>(Le3/t;[J[II[J[IJ)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Le3/c;

    .line 58
    .line 59
    invoke-direct {v3, v2, v2, v2, v2}, Le3/c;-><init>(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Le3/h;->c:Le3/t;

    .line 63
    .line 64
    iget-object v4, v4, Le3/t;->g:Landroidx/media3/common/r;

    .line 65
    .line 66
    invoke-static {v4}, Le3/k;->a(Landroidx/media3/common/r;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v0, p1, v1, v3, v4}, Le3/h$b;-><init>(Lk2/s0;Le3/w;Le3/c;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Le3/h;->I:Lk2/t;

    .line 79
    .line 80
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public bridge synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le3/h;->o()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public o()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/h;->r:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    move v0, p2

    .line 9
    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Le3/h;->e:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Le3/h$b;

    .line 18
    .line 19
    invoke-virtual {v1}, Le3/h$b;->k()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Le3/h;->o:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 28
    .line 29
    .line 30
    iput p2, p0, Le3/h;->y:I

    .line 31
    .line 32
    iget-object p1, p0, Le3/h;->p:Landroidx/media3/container/i;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/container/i;->b()V

    .line 35
    .line 36
    .line 37
    iput-wide p3, p0, Le3/h;->z:J

    .line 38
    .line 39
    iget-object p1, p0, Le3/h;->n:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Le3/h;->k()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected t(Le3/t;)Le3/t;
    .locals 0

    .line 1
    return-object p1
.end method
