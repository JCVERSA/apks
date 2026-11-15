.class public Lcom/hunantv/media/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/graphics/Bitmap;

.field public final d:F

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:I

.field public final m:I

.field public final n:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    .line 1
    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/hunantv/media/a/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    .line 2
    const/4 v9, 0x0

    const/high16 v10, 0x7f000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/hunantv/media/a/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 15

    .line 3
    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/high16 v9, -0x80000000

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lcom/hunantv/media/a/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/a/b;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/hunantv/media/a/b;->b:Landroid/text/Layout$Alignment;

    iput-object p3, p0, Lcom/hunantv/media/a/b;->c:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/hunantv/media/a/b;->d:F

    iput p5, p0, Lcom/hunantv/media/a/b;->e:I

    iput p6, p0, Lcom/hunantv/media/a/b;->f:I

    iput p7, p0, Lcom/hunantv/media/a/b;->g:F

    iput p8, p0, Lcom/hunantv/media/a/b;->h:I

    iput p11, p0, Lcom/hunantv/media/a/b;->i:F

    iput p12, p0, Lcom/hunantv/media/a/b;->j:F

    iput-boolean p13, p0, Lcom/hunantv/media/a/b;->k:Z

    iput p14, p0, Lcom/hunantv/media/a/b;->l:I

    iput p9, p0, Lcom/hunantv/media/a/b;->m:I

    iput p10, p0, Lcom/hunantv/media/a/b;->n:F

    return-void
.end method
