.class public Lcom/transsion/blur/ShapeBlurView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/blur/ShapeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:F

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public final g:[F

.field public h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/transsion/blur/ShapeBlurView$b;->a:F

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/transsion/blur/ShapeBlurView$b;->b:I

    .line 5
    iput v0, p0, Lcom/transsion/blur/ShapeBlurView$b;->c:F

    .line 6
    iput v0, p0, Lcom/transsion/blur/ShapeBlurView$b;->d:F

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView$b;->e:Landroid/content/res/ColorStateList;

    .line 8
    iput v1, p0, Lcom/transsion/blur/ShapeBlurView$b;->f:I

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView$b;->g:[F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView$b;->h:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lqf9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/blur/ShapeBlurView$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/blur/ShapeBlurView$b;)I
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->f:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/blur/ShapeBlurView$b;)F
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->c:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/blur/ShapeBlurView$b;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/blur/ShapeBlurView$b;)F
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->d:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/blur/ShapeBlurView$b;)[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->g:[F

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/blur/ShapeBlurView$b;)F
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->a:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/blur/ShapeBlurView$b;)I
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView$b;->b:I

    return p0
.end method
