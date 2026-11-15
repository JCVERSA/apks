.class public final Lw70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw70;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw70;

    invoke-direct {v0}, Lw70;-><init>()V

    sput-object v0, Lw70;->a:Lw70;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final b(I)I
    .locals 0

    const/16 p0, 0x1f4

    rem-int p1, p0, p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public final c(II)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    rem-int p0, p1, p2

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lw70;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "BVP"

    invoke-virtual {p0, v0, p1}, Lw70;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lw70;->b:Z

    if-eqz p0, :cond_0

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
