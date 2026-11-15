.class public final Lcom/yandex/mobile/ads/impl/ym1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ym1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p52;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/mobile/ads/impl/ym1$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/ag1;

.field private final d:Lcom/yandex/mobile/ads/impl/xm1;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Lcom/yandex/mobile/ads/impl/wm1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/b80;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljyd;

    invoke-direct {v0}, Ljyd;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p52;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->a:Lcom/yandex/mobile/ads/impl/p52;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->b:Landroid/util/SparseArray;

    new-instance p1, Lcom/yandex/mobile/ads/impl/xm1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/xm1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    return-void
.end method

.method private static a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 4

    .line 124
    new-instance v0, Lcom/yandex/mobile/ads/impl/ym1;

    .line 125
    new-instance v1, Lcom/yandex/mobile/ads/impl/p52;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/p52;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ym1;-><init>(Lcom/yandex/mobile/ads/impl/p52;)V

    const/4 v1, 0x1

    .line 126
    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/z70;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic b()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ym1;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a80;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    if-eqz v2, :cond_14

    .line 3
    move-object/from16 v2, p1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->b()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_0

    .line 4
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xm1;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/xm1;->a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;)I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->k:Z

    const-wide/16 v14, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_2

    .line 7
    iput-boolean v7, v0, Lcom/yandex/mobile/ads/impl/ym1;->k:Z

    .line 8
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xm1;->a()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 9
    new-instance v8, Lcom/yandex/mobile/ads/impl/wm1;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    .line 10
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xm1;->b()Lcom/yandex/mobile/ads/impl/p52;

    move-result-object v4

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xm1;->a()J

    move-result-wide v5

    move-object v3, v8

    move-object v11, v8

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/wm1;-><init>(Lcom/yandex/mobile/ads/impl/p52;JJ)V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->i:Lcom/yandex/mobile/ads/impl/wm1;

    .line 12
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/jl;->a()Lcom/yandex/mobile/ads/impl/jl$a;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    new-instance v4, Lcom/yandex/mobile/ads/impl/ex1$b;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/ym1;->d:Lcom/yandex/mobile/ads/impl/xm1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/xm1;->a()J

    move-result-wide v5

    .line 14
    invoke-direct {v4, v5, v6, v14, v15}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    .line 15
    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    .line 16
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->i:Lcom/yandex/mobile/ads/impl/wm1;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/jl;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ym1;->i:Lcom/yandex/mobile/ads/impl/wm1;

    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/jl;->a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;)I

    move-result v0

    return v0

    .line 18
    :cond_3
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    if-eqz v13, :cond_4

    .line 19
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->d()J

    move-result-wide v3

    sub-long/2addr v9, v3

    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_4
    const-wide/16 v3, -0x1

    const-wide/16 v9, -0x1

    :goto_1
    cmp-long v1, v9, v3

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x4

    cmp-long v1, v9, v4

    if-gez v1, :cond_5

    return v3

    .line 20
    :cond_5
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 21
    :cond_6
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 22
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    const/16 v7, 0x1b9

    if-ne v1, v7, :cond_7

    return v3

    :cond_7
    const/16 v3, 0x1ba

    if-ne v1, v3, :cond_8

    .line 23
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    const/16 v3, 0xa

    .line 24
    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 25
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 26
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    .line 27
    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    return v4

    :cond_8
    const/16 v3, 0x1bb

    const/4 v7, 0x2

    const/4 v8, 0x6

    if-ne v1, v3, :cond_9

    .line 28
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    .line 29
    invoke-virtual {v2, v1, v4, v7, v4}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 30
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 31
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v0

    add-int/2addr v0, v8

    .line 32
    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    return v4

    :cond_9
    and-int/lit16 v3, v1, -0x100

    const/16 v9, 0x8

    shr-int/2addr v3, v9

    if-eq v3, v6, :cond_a

    .line 33
    invoke-virtual {v2, v6}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    return v4

    :cond_a
    and-int/lit16 v3, v1, 0xff

    .line 34
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/ym1;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/mobile/ads/impl/ym1$a;

    .line 35
    iget-boolean v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->e:Z

    if-nez v11, :cond_10

    if-nez v10, :cond_e

    const/16 v11, 0xbd

    const/4 v12, 0x0

    if-ne v3, v11, :cond_b

    .line 36
    new-instance v1, Lcom/yandex/mobile/ads/impl/s;

    .line 37
    invoke-direct {v1, v12}, Lcom/yandex/mobile/ads/impl/s;-><init>(Ljava/lang/String;)V

    .line 38
    iput-boolean v6, v0, Lcom/yandex/mobile/ads/impl/ym1;->f:Z

    .line 39
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->h:J

    :goto_2
    move-object v12, v1

    goto :goto_3

    :cond_b
    and-int/lit16 v11, v1, 0xe0

    const/16 v13, 0xc0

    if-ne v11, v13, :cond_c

    .line 40
    new-instance v1, Lcom/yandex/mobile/ads/impl/e21;

    .line 41
    invoke-direct {v1, v12}, Lcom/yandex/mobile/ads/impl/e21;-><init>(Ljava/lang/String;)V

    .line 42
    iput-boolean v6, v0, Lcom/yandex/mobile/ads/impl/ym1;->f:Z

    .line 43
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->h:J

    goto :goto_2

    :cond_c
    and-int/lit16 v1, v1, 0xf0

    const/16 v11, 0xe0

    if-ne v1, v11, :cond_d

    .line 44
    new-instance v1, Lcom/yandex/mobile/ads/impl/cf0;

    .line 45
    invoke-direct {v1, v12}, Lcom/yandex/mobile/ads/impl/cf0;-><init>(Lcom/yandex/mobile/ads/impl/e92;)V

    .line 46
    iput-boolean v6, v0, Lcom/yandex/mobile/ads/impl/ym1;->g:Z

    .line 47
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->h:J

    goto :goto_2

    :cond_d
    :goto_3
    if-eqz v12, :cond_e

    .line 48
    new-instance v1, Lcom/yandex/mobile/ads/impl/p72$d;

    const/16 v10, 0x100

    const/high16 v11, -0x80000000

    .line 49
    invoke-direct {v1, v11, v3, v10}, Lcom/yandex/mobile/ads/impl/p72$d;-><init>(III)V

    .line 50
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {v12, v10, v1}, Lcom/yandex/mobile/ads/impl/b50;->a(Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/p72$d;)V

    .line 51
    new-instance v10, Lcom/yandex/mobile/ads/impl/ym1$a;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->a:Lcom/yandex/mobile/ads/impl/p52;

    invoke-direct {v10, v12, v1}, Lcom/yandex/mobile/ads/impl/ym1$a;-><init>(Lcom/yandex/mobile/ads/impl/b50;Lcom/yandex/mobile/ads/impl/p52;)V

    .line 52
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    :cond_e
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->f:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->g:Z

    if-eqz v1, :cond_f

    .line 54
    iget-wide v11, v0, Lcom/yandex/mobile/ads/impl/ym1;->h:J

    const-wide/16 v16, 0x2000

    add-long v11, v11, v16

    goto :goto_4

    :cond_f
    const-wide/32 v11, 0x100000

    .line 55
    :goto_4
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v16

    cmp-long v1, v16, v11

    if-lez v1, :cond_10

    .line 56
    iput-boolean v6, v0, Lcom/yandex/mobile/ads/impl/ym1;->e:Z

    .line 57
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    .line 58
    :cond_10
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    .line 59
    invoke-virtual {v2, v1, v4, v7, v4}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 60
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 61
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v1

    add-int/2addr v1, v8

    if-nez v10, :cond_11

    .line 62
    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    goto/16 :goto_5

    .line 63
    :cond_11
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 64
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3, v4, v1, v4}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 66
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 67
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    .line 68
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/zf1;->a:[B

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 69
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/zf1;->c(I)V

    .line 70
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 71
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zf1;->f()Z

    move-result v2

    invoke-static {v10, v2}, Lcom/yandex/mobile/ads/impl/ym1$a;->h(Lcom/yandex/mobile/ads/impl/ym1$a;Z)V

    .line 72
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zf1;->f()Z

    move-result v2

    invoke-static {v10, v2}, Lcom/yandex/mobile/ads/impl/ym1$a;->i(Lcom/yandex/mobile/ads/impl/ym1$a;Z)V

    .line 73
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 74
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v2

    .line 75
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v7

    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/zf1;->a:[B

    invoke-virtual {v1, v7, v4, v2}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 76
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/zf1;->c(I)V

    .line 77
    invoke-static {v10, v14, v15}, Lcom/yandex/mobile/ads/impl/ym1$a;->k(Lcom/yandex/mobile/ads/impl/ym1$a;J)V

    .line 78
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->d(Lcom/yandex/mobile/ads/impl/ym1$a;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 79
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 80
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v2

    int-to-long v7, v2

    const/16 v2, 0x1e

    shl-long/2addr v7, v2

    .line 81
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 82
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    const/16 v11, 0xf

    invoke-virtual {v9, v11}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    shl-int/2addr v9, v11

    int-to-long v12, v9

    or-long/2addr v7, v12

    .line 83
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 84
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    int-to-long v12, v9

    or-long/2addr v7, v12

    .line 85
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 86
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->f(Lcom/yandex/mobile/ads/impl/ym1$a;)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->e(Lcom/yandex/mobile/ads/impl/ym1$a;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 87
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 88
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v3

    int-to-long v12, v3

    shl-long v2, v12, v2

    .line 89
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 90
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    shl-int/2addr v9, v11

    int-to-long v12, v9

    or-long/2addr v2, v12

    .line 91
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 92
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    int-to-long v11, v9

    or-long/2addr v2, v11

    .line 93
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->c(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/zf1;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    .line 94
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->b(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/p52;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/yandex/mobile/ads/impl/p52;->b(J)J

    .line 95
    invoke-static {v10, v6}, Lcom/yandex/mobile/ads/impl/ym1$a;->j(Lcom/yandex/mobile/ads/impl/ym1$a;Z)V

    .line 96
    :cond_12
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->b(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/p52;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/yandex/mobile/ads/impl/p52;->b(J)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/yandex/mobile/ads/impl/ym1$a;->k(Lcom/yandex/mobile/ads/impl/ym1$a;J)V

    .line 97
    :cond_13
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->a(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/b50;

    move-result-object v2

    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->g(Lcom/yandex/mobile/ads/impl/ym1$a;)J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Lcom/yandex/mobile/ads/impl/b50;->a(IJ)V

    .line 98
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->a(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/b50;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/b50;->a(Lcom/yandex/mobile/ads/impl/ag1;)V

    .line 99
    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/ym1$a;->a(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/b50;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/b50;->b()V

    .line 100
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ym1;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    :goto_5
    return v4

    .line 101
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(JJ)V
    .locals 4

    .line 102
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->a:Lcom/yandex/mobile/ads/impl/p52;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p52;->c()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->a:Lcom/yandex/mobile/ads/impl/p52;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p52;->a()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    cmp-long p1, v2, p3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->a:Lcom/yandex/mobile/ads/impl/p52;

    invoke-virtual {p1, p3, p4}, Lcom/yandex/mobile/ads/impl/p52;->c(J)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->i:Lcom/yandex/mobile/ads/impl/wm1;

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1, p3, p4}, Lcom/yandex/mobile/ads/impl/jl;->a(J)V

    :cond_3
    move p1, p2

    .line 107
    :goto_2
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ym1;->b:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 108
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ym1;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/mobile/ads/impl/ym1$a;

    .line 109
    invoke-static {p3, p2}, Lcom/yandex/mobile/ads/impl/ym1$a;->j(Lcom/yandex/mobile/ads/impl/ym1$a;Z)V

    .line 110
    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/ym1$a;->a(Lcom/yandex/mobile/ads/impl/ym1$a;)Lcom/yandex/mobile/ads/impl/b50;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/b50;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym1;->j:Lcom/yandex/mobile/ads/impl/b80;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xe

    .line 111
    new-array v0, p0, [B

    .line 112
    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v0, v1, p0, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 114
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    .line 115
    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x6

    .line 116
    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    return v1

    .line 117
    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    return v1

    :cond_3
    const/16 p0, 0x9

    .line 118
    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xc

    .line 119
    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    return v1

    :cond_5
    const/16 p0, 0xd

    .line 120
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    .line 121
    invoke-virtual {p1, v1, p0}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    .line 122
    invoke-virtual {p1, v0, v1, v4, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 123
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
