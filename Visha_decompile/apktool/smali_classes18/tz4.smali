.class public final Ltz4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltz4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltz4;

    invoke-direct {v0}, Ltz4;-><init>()V

    sput-object v0, Ltz4;->a:Ltz4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(F)I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Ly45;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final b(Lrz4;FI)F
    .locals 1

    const-string p0, "indicatorOptions"

    invoke-static {p1, p0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lrz4;->f()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lrz4;->l()F

    move-result p1

    add-float/2addr p0, p1

    int-to-float p1, p3

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    return p2
.end method

.method public final c(F)F
    .locals 0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method
