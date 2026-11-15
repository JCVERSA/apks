.class public Lkob$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public k:I

.field public l:[I

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lkob$c;->a:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkob$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lkob$c;->c:F

    .line 43
    iput v0, p0, Lkob$c;->d:F

    .line 44
    iput v0, p0, Lkob$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lkob$c;->f:F

    .line 46
    iput v1, p0, Lkob$c;->g:F

    .line 47
    iput v0, p0, Lkob$c;->h:F

    .line 48
    iput v0, p0, Lkob$c;->i:F

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lkob$c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkob$c;Landroidx/collection/ArrayMap;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lkob$c;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkob$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lkob$c;->c:F

    .line 5
    iput v0, p0, Lkob$c;->d:F

    .line 6
    iput v0, p0, Lkob$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lkob$c;->f:F

    .line 8
    iput v1, p0, Lkob$c;->g:F

    .line 9
    iput v0, p0, Lkob$c;->h:F

    .line 10
    iput v0, p0, Lkob$c;->i:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lkob$c;->m:Ljava/lang/String;

    .line 13
    iget v1, p1, Lkob$c;->c:F

    iput v1, p0, Lkob$c;->c:F

    .line 14
    iget v1, p1, Lkob$c;->d:F

    iput v1, p0, Lkob$c;->d:F

    .line 15
    iget v1, p1, Lkob$c;->e:F

    iput v1, p0, Lkob$c;->e:F

    .line 16
    iget v1, p1, Lkob$c;->f:F

    iput v1, p0, Lkob$c;->f:F

    .line 17
    iget v1, p1, Lkob$c;->g:F

    iput v1, p0, Lkob$c;->g:F

    .line 18
    iget v1, p1, Lkob$c;->h:F

    iput v1, p0, Lkob$c;->h:F

    .line 19
    iget v1, p1, Lkob$c;->i:F

    iput v1, p0, Lkob$c;->i:F

    .line 20
    iget-object v1, p1, Lkob$c;->l:[I

    iput-object v1, p0, Lkob$c;->l:[I

    .line 21
    iget-object v1, p1, Lkob$c;->m:Ljava/lang/String;

    iput-object v1, p0, Lkob$c;->m:Ljava/lang/String;

    .line 22
    iget v2, p1, Lkob$c;->k:I

    iput v2, p0, Lkob$c;->k:I

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p2, v1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v1, p1, Lkob$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 25
    iget-object p1, p1, Lkob$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lkob$c;

    if-eqz v2, :cond_1

    .line 29
    check-cast v1, Lkob$c;

    .line 30
    iget-object v2, p0, Lkob$c;->b:Ljava/util/ArrayList;

    new-instance v3, Lkob$c;

    invoke-direct {v3, v1, p2}, Lkob$c;-><init>(Lkob$c;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_1
    instance-of v2, v1, Lkob$b;

    if-eqz v2, :cond_2

    .line 32
    new-instance v2, Lkob$b;

    check-cast v1, Lkob$b;

    invoke-direct {v2, v1}, Lkob$b;-><init>(Lkob$b;)V

    goto :goto_1

    .line 33
    :cond_2
    instance-of v2, v1, Lkob$a;

    if-eqz v2, :cond_4

    .line 34
    new-instance v2, Lkob$a;

    check-cast v1, Lkob$a;

    invoke-direct {v2, v1}, Lkob$a;-><init>(Lkob$a;)V

    .line 35
    :goto_1
    iget-object v1, p0, Lkob$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v2, Lkob$d;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p2, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown object in the tree!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public static bridge synthetic a(Lkob$c;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static bridge synthetic b(Lkob$c;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lkob$c;->a:Landroid/graphics/Matrix;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkob$c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public d(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Lub;->b:[I

    invoke-static {p1, p3, p2, v0}, Ljob;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lkob$c;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lkob$c;->d:F

    neg-float v1, v1

    iget v2, p0, Lkob$c;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lkob$c;->f:F

    iget v2, p0, Lkob$c;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lkob$c;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lkob$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lkob$c;->h:F

    iget v2, p0, Lkob$c;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Lkob$c;->i:F

    iget p0, p0, Lkob$c;->e:F

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lkob$c;->l:[I

    const/4 v0, 0x5

    iget v1, p0, Lkob$c;->c:F

    const-string v2, "rotation"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$c;->c:F

    const/4 v0, 0x1

    iget v1, p0, Lkob$c;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lkob$c;->d:F

    const/4 v0, 0x2

    iget v1, p0, Lkob$c;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lkob$c;->e:F

    const/4 v0, 0x3

    iget v1, p0, Lkob$c;->f:F

    const-string v2, "scaleX"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$c;->f:F

    const/4 v0, 0x4

    iget v1, p0, Lkob$c;->g:F

    const-string v2, "scaleY"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$c;->g:F

    const/4 v0, 0x6

    iget v1, p0, Lkob$c;->h:F

    const-string v2, "translateX"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lkob$c;->h:F

    const/4 v0, 0x7

    iget v1, p0, Lkob$c;->i:F

    const-string v2, "translateY"

    invoke-static {p1, p2, v2, v0, v1}, Ledb;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lkob$c;->i:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkob$c;->m:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lkob$c;->e()V

    return-void
.end method
