.class public Li2/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li2/z$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:F

.field private final g:F

.field private final h:Landroidx/media3/common/util/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 1
    invoke-direct {p0, v2, v0, v0, v1}, Li2/a$b;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 2
    sget-object v8, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Li2/a$b;-><init>(IIIIIFFLandroidx/media3/common/util/i;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLandroidx/media3/common/util/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Li2/a$b;->a:I

    .line 5
    iput p2, p0, Li2/a$b;->b:I

    .line 6
    iput p3, p0, Li2/a$b;->c:I

    .line 7
    iput p4, p0, Li2/a$b;->d:I

    .line 8
    iput p5, p0, Li2/a$b;->e:I

    .line 9
    iput p6, p0, Li2/a$b;->f:F

    .line 10
    iput p7, p0, Li2/a$b;->g:F

    .line 11
    iput-object p8, p0, Li2/a$b;->h:Landroidx/media3/common/util/i;

    return-void
.end method


# virtual methods
.method public final a([Li2/z$a;Landroidx/media3/exoplayer/upstream/e;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)[Li2/z;
    .locals 9

    .line 1
    invoke-static {p1}, Li2/a;->k([Li2/z$a;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    array-length p4, p1

    .line 6
    new-array p4, p4, [Li2/z;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    array-length v2, p1

    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    aget-object v2, p1, v1

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v5, v2, Li2/z$a;->b:[I

    .line 18
    .line 19
    array-length v3, v5

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    array-length v3, v5

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_1

    .line 26
    .line 27
    new-instance v3, Li2/a0;

    .line 28
    .line 29
    iget-object v4, v2, Li2/z$a;->a:Landroidx/media3/common/f0;

    .line 30
    .line 31
    aget v5, v5, v0

    .line 32
    .line 33
    iget v2, v2, Li2/z$a;->c:I

    .line 34
    .line 35
    invoke-direct {v3, v4, v5, v2}, Li2/a0;-><init>(Landroidx/media3/common/f0;II)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v4, v2, Li2/z$a;->a:Landroidx/media3/common/f0;

    .line 40
    .line 41
    iget v6, v2, Li2/z$a;->c:I

    .line 42
    .line 43
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v8, v2

    .line 48
    check-cast v8, Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    move-object v3, p0

    .line 51
    move-object v7, p2

    .line 52
    invoke-virtual/range {v3 .. v8}, Li2/a$b;->b(Landroidx/media3/common/f0;[IILandroidx/media3/exoplayer/upstream/e;Lcom/google/common/collect/ImmutableList;)Li2/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_1
    aput-object v3, p4, v1

    .line 57
    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object p4
.end method

.method protected b(Landroidx/media3/common/f0;[IILandroidx/media3/exoplayer/upstream/e;Lcom/google/common/collect/ImmutableList;)Li2/a;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v16, p5

    .line 12
    .line 13
    new-instance v18, Li2/a;

    .line 14
    .line 15
    move-object/from16 v1, v18

    .line 16
    .line 17
    iget v6, v0, Li2/a$b;->a:I

    .line 18
    .line 19
    int-to-long v6, v6

    .line 20
    iget v8, v0, Li2/a$b;->b:I

    .line 21
    .line 22
    int-to-long v8, v8

    .line 23
    iget v10, v0, Li2/a$b;->c:I

    .line 24
    .line 25
    int-to-long v10, v10

    .line 26
    iget v12, v0, Li2/a$b;->d:I

    .line 27
    .line 28
    iget v13, v0, Li2/a$b;->e:I

    .line 29
    .line 30
    iget v14, v0, Li2/a$b;->f:F

    .line 31
    .line 32
    iget v15, v0, Li2/a$b;->g:F

    .line 33
    .line 34
    move-object/from16 p1, v1

    .line 35
    .line 36
    iget-object v1, v0, Li2/a$b;->h:Landroidx/media3/common/util/i;

    .line 37
    .line 38
    move-object/from16 v17, v1

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    invoke-direct/range {v1 .. v17}, Li2/a;-><init>(Landroidx/media3/common/f0;[IILandroidx/media3/exoplayer/upstream/e;JJJIIFFLjava/util/List;Landroidx/media3/common/util/i;)V

    .line 43
    .line 44
    .line 45
    return-object v18
.end method
