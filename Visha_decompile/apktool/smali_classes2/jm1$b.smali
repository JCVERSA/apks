.class public final Ljm1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


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

.field public n:Z

.field public o:I

.field public p:I

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ljm1$b;->a:Ljava/lang/CharSequence;

    .line 4
    iput-object v0, p0, Ljm1$b;->b:Landroid/graphics/Bitmap;

    .line 5
    iput-object v0, p0, Ljm1$b;->c:Landroid/text/Layout$Alignment;

    .line 6
    iput-object v0, p0, Ljm1$b;->d:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 7
    iput v0, p0, Ljm1$b;->e:F

    const/high16 v1, -0x80000000

    .line 8
    iput v1, p0, Ljm1$b;->f:I

    .line 9
    iput v1, p0, Ljm1$b;->g:I

    .line 10
    iput v0, p0, Ljm1$b;->h:F

    .line 11
    iput v1, p0, Ljm1$b;->i:I

    .line 12
    iput v1, p0, Ljm1$b;->j:I

    .line 13
    iput v0, p0, Ljm1$b;->k:F

    .line 14
    iput v0, p0, Ljm1$b;->l:F

    .line 15
    iput v0, p0, Ljm1$b;->m:F

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Ljm1$b;->n:Z

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Ljm1$b;->o:I

    .line 18
    iput v1, p0, Ljm1$b;->p:I

    return-void
.end method

.method public constructor <init>(Ljm1;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Ljm1;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Ljm1$b;->a:Ljava/lang/CharSequence;

    .line 21
    iget-object v0, p1, Ljm1;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ljm1$b;->b:Landroid/graphics/Bitmap;

    .line 22
    iget-object v0, p1, Ljm1;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Ljm1$b;->c:Landroid/text/Layout$Alignment;

    .line 23
    iget-object v0, p1, Ljm1;->d:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Ljm1$b;->d:Landroid/text/Layout$Alignment;

    .line 24
    iget v0, p1, Ljm1;->f:F

    iput v0, p0, Ljm1$b;->e:F

    .line 25
    iget v0, p1, Ljm1;->g:I

    iput v0, p0, Ljm1$b;->f:I

    .line 26
    iget v0, p1, Ljm1;->h:I

    iput v0, p0, Ljm1$b;->g:I

    .line 27
    iget v0, p1, Ljm1;->i:F

    iput v0, p0, Ljm1$b;->h:F

    .line 28
    iget v0, p1, Ljm1;->j:I

    iput v0, p0, Ljm1$b;->i:I

    .line 29
    iget v0, p1, Ljm1;->o:I

    iput v0, p0, Ljm1$b;->j:I

    .line 30
    iget v0, p1, Ljm1;->p:F

    iput v0, p0, Ljm1$b;->k:F

    .line 31
    iget v0, p1, Ljm1;->k:F

    iput v0, p0, Ljm1$b;->l:F

    .line 32
    iget v0, p1, Ljm1;->l:F

    iput v0, p0, Ljm1$b;->m:F

    .line 33
    iget-boolean v0, p1, Ljm1;->m:Z

    iput-boolean v0, p0, Ljm1$b;->n:Z

    .line 34
    iget v0, p1, Ljm1;->n:I

    iput v0, p0, Ljm1$b;->o:I

    .line 35
    iget v0, p1, Ljm1;->q:I

    iput v0, p0, Ljm1$b;->p:I

    .line 36
    iget p1, p1, Ljm1;->r:F

    iput p1, p0, Ljm1$b;->q:F

    return-void
.end method

.method public synthetic constructor <init>(Ljm1;Ljm1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljm1$b;-><init>(Ljm1;)V

    return-void
.end method


# virtual methods
.method public a()Ljm1;
    .locals 22

    move-object/from16 v0, p0

    new-instance v20, Ljm1;

    move-object/from16 v1, v20

    iget-object v2, v0, Ljm1$b;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Ljm1$b;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Ljm1$b;->d:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Ljm1$b;->b:Landroid/graphics/Bitmap;

    iget v6, v0, Ljm1$b;->e:F

    iget v7, v0, Ljm1$b;->f:I

    iget v8, v0, Ljm1$b;->g:I

    iget v9, v0, Ljm1$b;->h:F

    iget v10, v0, Ljm1$b;->i:I

    iget v11, v0, Ljm1$b;->j:I

    iget v12, v0, Ljm1$b;->k:F

    iget v13, v0, Ljm1$b;->l:F

    iget v14, v0, Ljm1$b;->m:F

    iget-boolean v15, v0, Ljm1$b;->n:Z

    move-object/from16 v21, v1

    iget v1, v0, Ljm1$b;->o:I

    move/from16 v16, v1

    iget v1, v0, Ljm1$b;->p:I

    move/from16 v17, v1

    iget v0, v0, Ljm1$b;->q:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Ljm1;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLjm1$a;)V

    return-object v20
.end method

.method public b()Ljm1$b;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljm1$b;->n:Z

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ljm1$b;->g:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Ljm1$b;->i:I

    return p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ljm1$b;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(Landroid/graphics/Bitmap;)Ljm1$b;
    .locals 0

    iput-object p1, p0, Ljm1$b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(F)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->m:F

    return-object p0
.end method

.method public h(FI)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->e:F

    iput p2, p0, Ljm1$b;->f:I

    return-object p0
.end method

.method public i(I)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->g:I

    return-object p0
.end method

.method public j(Landroid/text/Layout$Alignment;)Ljm1$b;
    .locals 0

    iput-object p1, p0, Ljm1$b;->d:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public k(F)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->h:F

    return-object p0
.end method

.method public l(I)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->i:I

    return-object p0
.end method

.method public m(F)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->q:F

    return-object p0
.end method

.method public n(F)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->l:F

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Ljm1$b;
    .locals 0

    iput-object p1, p0, Ljm1$b;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Landroid/text/Layout$Alignment;)Ljm1$b;
    .locals 0

    iput-object p1, p0, Ljm1$b;->c:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public q(FI)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->k:F

    iput p2, p0, Ljm1$b;->j:I

    return-object p0
.end method

.method public r(I)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->p:I

    return-object p0
.end method

.method public s(I)Ljm1$b;
    .locals 0

    iput p1, p0, Ljm1$b;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljm1$b;->n:Z

    return-object p0
.end method
