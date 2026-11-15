.class public Lkob$b;
.super Lkob$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public d:[I

.field public e:I

.field public f:F

.field public g:I

.field public h:F

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Landroid/graphics/Paint$Cap;

.field public o:Landroid/graphics/Paint$Join;

.field public p:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkob$d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkob$b;->e:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lkob$b;->f:F

    .line 4
    iput v0, p0, Lkob$b;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lkob$b;->h:F

    .line 6
    iput v0, p0, Lkob$b;->j:F

    .line 7
    iput v1, p0, Lkob$b;->k:F

    .line 8
    iput v0, p0, Lkob$b;->l:F

    .line 9
    iput v1, p0, Lkob$b;->m:F

    .line 10
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    .line 11
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lkob$b;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 12
    iput v0, p0, Lkob$b;->p:F

    return-void
.end method

.method public constructor <init>(Lkob$b;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Lkob$d;-><init>(Lkob$d;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lkob$b;->e:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lkob$b;->f:F

    .line 16
    iput v0, p0, Lkob$b;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lkob$b;->h:F

    .line 18
    iput v0, p0, Lkob$b;->j:F

    .line 19
    iput v1, p0, Lkob$b;->k:F

    .line 20
    iput v0, p0, Lkob$b;->l:F

    .line 21
    iput v1, p0, Lkob$b;->m:F

    .line 22
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    .line 23
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lkob$b;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 24
    iput v0, p0, Lkob$b;->p:F

    .line 25
    iget-object v0, p1, Lkob$b;->d:[I

    iput-object v0, p0, Lkob$b;->d:[I

    .line 26
    iget v0, p1, Lkob$b;->e:I

    iput v0, p0, Lkob$b;->e:I

    .line 27
    iget v0, p1, Lkob$b;->f:F

    iput v0, p0, Lkob$b;->f:F

    .line 28
    iget v0, p1, Lkob$b;->h:F

    iput v0, p0, Lkob$b;->h:F

    .line 29
    iget v0, p1, Lkob$b;->g:I

    iput v0, p0, Lkob$b;->g:I

    .line 30
    iget v0, p1, Lkob$b;->i:I

    iput v0, p0, Lkob$b;->i:I

    .line 31
    iget v0, p1, Lkob$b;->j:F

    iput v0, p0, Lkob$b;->j:F

    .line 32
    iget v0, p1, Lkob$b;->k:F

    iput v0, p0, Lkob$b;->k:F

    .line 33
    iget v0, p1, Lkob$b;->l:F

    iput v0, p0, Lkob$b;->l:F

    .line 34
    iget v0, p1, Lkob$b;->m:F

    iput v0, p0, Lkob$b;->m:F

    .line 35
    iget-object v0, p1, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    .line 36
    iget-object v0, p1, Lkob$b;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lkob$b;->o:Landroid/graphics/Paint$Join;

    .line 37
    iget p1, p1, Lkob$b;->p:F

    iput p1, p0, Lkob$b;->p:F

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lkob$d;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Z
    .locals 0

    invoke-super {p0}, Lkob$d;->b()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic c(Landroid/graphics/Path;)V
    .locals 0

    invoke-super {p0, p1}, Lkob$d;->c(Landroid/graphics/Path;)V

    return-void
.end method

.method public final d(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public final e(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method public f(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Lub;->c:[I

    invoke-static {p1, p3, p2, v0}, Ljob;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lkob$b;->h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lkob$b;->g:I

    return-void
.end method

.method public final h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lkob$b;->d:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Ledb;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lkob$d;->b:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lgy7;->c(Ljava/lang/String;)[Lgy7$b;

    move-result-object v0

    iput-object v0, p0, Lkob$d;->a:[Lgy7$b;

    :cond_2
    const/4 v0, 0x1

    iget v1, p0, Lkob$b;->g:I

    const-string v2, "fillColor"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lkob$b;->g:I

    const/16 v0, 0xc

    iget v1, p0, Lkob$b;->j:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->j:F

    const-string v0, "strokeLineCap"

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-static {p1, p2, v0, v1, v2}, Ledb;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0, v1}, Lkob$b;->d(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lkob$b;->n:Landroid/graphics/Paint$Cap;

    const-string v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v2}, Ledb;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lkob$b;->o:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0, v1}, Lkob$b;->e(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lkob$b;->o:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    iget v1, p0, Lkob$b;->p:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->p:F

    const/4 v0, 0x3

    iget v1, p0, Lkob$b;->e:I

    const-string v2, "strokeColor"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lkob$b;->e:I

    const/16 v0, 0xb

    iget v1, p0, Lkob$b;->h:F

    const-string v2, "strokeAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->h:F

    const/4 v0, 0x4

    iget v1, p0, Lkob$b;->f:F

    const-string v2, "strokeWidth"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->f:F

    const/4 v0, 0x6

    iget v1, p0, Lkob$b;->l:F

    const-string v2, "trimPathEnd"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->l:F

    const/4 v0, 0x7

    iget v1, p0, Lkob$b;->m:F

    const-string v2, "trimPathOffset"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$b;->m:F

    const/4 v0, 0x5

    iget v1, p0, Lkob$b;->k:F

    const-string v2, "trimPathStart"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p1

    iput p1, p0, Lkob$b;->k:F

    return-void
.end method
