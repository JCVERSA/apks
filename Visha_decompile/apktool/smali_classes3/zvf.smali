.class public final Lzvf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/text/Layout$Alignment;

.field public d:Landroid/text/Layout$Alignment;

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzvf;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzvf;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lzvf;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lzvf;->d:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lzvf;->e:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lzvf;->f:I

    iput v1, p0, Lzvf;->g:I

    iput v0, p0, Lzvf;->h:F

    iput v1, p0, Lzvf;->i:I

    iput v1, p0, Lzvf;->j:I

    iput v0, p0, Lzvf;->k:F

    iput v0, p0, Lzvf;->l:F

    iput v0, p0, Lzvf;->m:F

    iput v1, p0, Lzvf;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Lfyf;Lcxf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lfyf;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lzvf;->a:Ljava/lang/CharSequence;

    iget-object p2, p1, Lfyf;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lzvf;->b:Landroid/graphics/Bitmap;

    iget-object p2, p1, Lfyf;->b:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lzvf;->c:Landroid/text/Layout$Alignment;

    iget-object p2, p1, Lfyf;->c:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lzvf;->d:Landroid/text/Layout$Alignment;

    iget p2, p1, Lfyf;->e:F

    iput p2, p0, Lzvf;->e:F

    iget p2, p1, Lfyf;->f:I

    iput p2, p0, Lzvf;->f:I

    iget p2, p1, Lfyf;->g:I

    iput p2, p0, Lzvf;->g:I

    iget p2, p1, Lfyf;->h:F

    iput p2, p0, Lzvf;->h:F

    iget p2, p1, Lfyf;->i:I

    iput p2, p0, Lzvf;->i:I

    iget p2, p1, Lfyf;->l:I

    iput p2, p0, Lzvf;->j:I

    iget p2, p1, Lfyf;->m:F

    iput p2, p0, Lzvf;->k:F

    iget p2, p1, Lfyf;->j:F

    iput p2, p0, Lzvf;->l:F

    iget p2, p1, Lfyf;->k:F

    iput p2, p0, Lzvf;->m:F

    iget p2, p1, Lfyf;->n:I

    iput p2, p0, Lzvf;->n:I

    iget p1, p1, Lfyf;->o:F

    iput p1, p0, Lzvf;->o:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lzvf;->g:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lzvf;->i:I

    return p0
.end method

.method public final c(Landroid/graphics/Bitmap;)Lzvf;
    .locals 0

    iput-object p1, p0, Lzvf;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final d(F)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->m:F

    return-object p0
.end method

.method public final e(FI)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->e:F

    iput p2, p0, Lzvf;->f:I

    return-object p0
.end method

.method public final f(I)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->g:I

    return-object p0
.end method

.method public final g(Landroid/text/Layout$Alignment;)Lzvf;
    .locals 0

    iput-object p1, p0, Lzvf;->d:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final h(F)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->h:F

    return-object p0
.end method

.method public final i(I)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->i:I

    return-object p0
.end method

.method public final j(F)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->o:F

    return-object p0
.end method

.method public final k(F)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->l:F

    return-object p0
.end method

.method public final l(Ljava/lang/CharSequence;)Lzvf;
    .locals 0

    iput-object p1, p0, Lzvf;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final m(Landroid/text/Layout$Alignment;)Lzvf;
    .locals 0

    iput-object p1, p0, Lzvf;->c:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final n(FI)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->k:F

    iput p2, p0, Lzvf;->j:I

    return-object p0
.end method

.method public final o(I)Lzvf;
    .locals 0

    iput p1, p0, Lzvf;->n:I

    return-object p0
.end method

.method public final p()Lfyf;
    .locals 21

    move-object/from16 v0, p0

    new-instance v20, Lfyf;

    move-object/from16 v1, v20

    iget-object v2, v0, Lzvf;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lzvf;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lzvf;->d:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lzvf;->b:Landroid/graphics/Bitmap;

    iget v6, v0, Lzvf;->e:F

    iget v7, v0, Lzvf;->f:I

    iget v8, v0, Lzvf;->g:I

    iget v9, v0, Lzvf;->h:F

    iget v10, v0, Lzvf;->i:I

    iget v11, v0, Lzvf;->j:I

    iget v12, v0, Lzvf;->k:F

    iget v13, v0, Lzvf;->l:F

    iget v14, v0, Lzvf;->m:F

    iget v15, v0, Lzvf;->n:I

    move/from16 v17, v15

    iget v0, v0, Lzvf;->o:F

    move/from16 v18, v0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x1000000

    invoke-direct/range {v1 .. v19}, Lfyf;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcxf;)V

    return-object v20
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzvf;->a:Ljava/lang/CharSequence;

    return-object p0
.end method
