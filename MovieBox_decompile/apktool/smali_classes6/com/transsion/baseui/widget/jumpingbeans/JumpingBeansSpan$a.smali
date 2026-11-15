.class Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;->a:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;->a:F

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    div-float/2addr p1, v0

    .line 10
    float-to-double v0, p1

    .line 11
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-float p1, v0

    .line 22
    return p1
.end method
