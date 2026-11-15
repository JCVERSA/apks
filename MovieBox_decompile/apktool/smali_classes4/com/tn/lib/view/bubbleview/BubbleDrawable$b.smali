.class public Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static A:F = 0.0f

.field public static B:I = -0x4d000000

.field public static C:F = 0.0f

.field public static u:F = 25.0f

.field public static v:F = 25.0f

.field public static w:F = 20.0f

.field public static x:F = 50.0f

.field public static y:I = -0x10000

.field public static z:I = 0xff


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:F

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field private n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private o:Z

.field p:F

.field q:F

.field r:F

.field s:F

.field t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A:F

    .line 5
    .line 6
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    .line 7
    .line 8
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B:I

    .line 9
    .line 10
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    .line 11
    .line 12
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    .line 13
    .line 14
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    .line 15
    .line 16
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    .line 17
    .line 18
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    .line 19
    .line 20
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    .line 21
    .line 22
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    .line 23
    .line 24
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    .line 25
    .line 26
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    .line 27
    .line 28
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    .line 29
    .line 30
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    .line 31
    .line 32
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    .line 33
    .line 34
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 35
    .line 36
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    .line 37
    .line 38
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z:I

    .line 39
    .line 40
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    .line 41
    .line 42
    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 45
    .line 46
    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 49
    .line 50
    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic g(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic h(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic i(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic j(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic l(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic m(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic n(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic o(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;-><init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;Lcom/tn/lib/view/bubbleview/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "BubbleDrawable Rect can not be null"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object p0
.end method

.method public C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    .line 2
    .line 3
    return-object p0
.end method

.method public E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    .line 2
    .line 3
    return-object p0
.end method

.method public F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    .line 2
    .line 3
    return-object p0
.end method

.method public p(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 1

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    .line 5
    .line 6
    return-object p0
.end method

.method public r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    .line 2
    .line 3
    return-object p0
.end method

.method public v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Landroid/graphics/Bitmap;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public x(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    .line 2
    .line 3
    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public y(FFFF[I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->p:F

    .line 2
    .line 3
    iput p2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q:F

    .line 4
    .line 5
    iput p3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r:F

    .line 6
    .line 7
    iput p4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s:F

    .line 8
    .line 9
    iput-object p5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t:[I

    .line 10
    .line 11
    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 2
    .line 3
    return-object p0
.end method
