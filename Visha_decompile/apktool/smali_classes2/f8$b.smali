.class public Lf8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:Ley0;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 1
    invoke-direct {p0, v2, v0, v0, v1}, Lf8$b;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 2
    sget-object v8, Ley0;->a:Ley0;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lf8$b;-><init>(IIIIIFFLey0;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLey0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lf8$b;->a:I

    .line 5
    iput p2, p0, Lf8$b;->b:I

    .line 6
    iput p3, p0, Lf8$b;->c:I

    .line 7
    iput p4, p0, Lf8$b;->d:I

    .line 8
    iput p5, p0, Lf8$b;->e:I

    .line 9
    iput p6, p0, Lf8$b;->f:F

    .line 10
    iput p7, p0, Lf8$b;->g:F

    .line 11
    iput-object p8, p0, Lf8$b;->h:Ley0;

    return-void
.end method


# virtual methods
.method public final a([Lqi3$a;Lo70;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)[Lqi3;
    .locals 9

    invoke-static {p1}, Lf8;->c([Lqi3$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    array-length p4, p1

    new-array p4, p4, [Lqi3;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    iget-object v5, v2, Lqi3$a;->b:[I

    array-length v3, v5

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Llx3;

    iget-object v4, v2, Lqi3$a;->a:Lzua;

    aget v5, v5, v0

    iget v2, v2, Lqi3$a;->c:I

    invoke-direct {v3, v4, v5, v2}, Llx3;-><init>(Lzua;II)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lqi3$a;->a:Lzua;

    iget v6, v2, Lqi3$a;->c:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    move-object v3, p0

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lf8$b;->b(Lzua;[IILo70;Lcom/google/common/collect/ImmutableList;)Lf8;

    move-result-object v3

    :goto_1
    aput-object v3, p4, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method public b(Lzua;[IILo70;Lcom/google/common/collect/ImmutableList;)Lf8;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    new-instance v18, Lf8;

    move-object/from16 v1, v18

    iget v6, v0, Lf8$b;->a:I

    int-to-long v6, v6

    iget v8, v0, Lf8$b;->b:I

    int-to-long v8, v8

    iget v10, v0, Lf8$b;->c:I

    int-to-long v10, v10

    iget v12, v0, Lf8$b;->d:I

    iget v13, v0, Lf8$b;->e:I

    iget v14, v0, Lf8$b;->f:F

    iget v15, v0, Lf8$b;->g:F

    iget-object v0, v0, Lf8$b;->h:Ley0;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lf8;-><init>(Lzua;[IILo70;JJJIIFFLjava/util/List;Ley0;)V

    return-object v18
.end method
