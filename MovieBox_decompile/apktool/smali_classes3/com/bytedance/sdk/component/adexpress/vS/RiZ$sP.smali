.class Lcom/bytedance/sdk/component/adexpress/vS/RiZ$sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/vS/RiZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$sP;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3e800000    # 0.25f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, -0x40000000    # -2.0f

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    add-float/2addr p1, v1

    .line 13
    return p1

    .line 14
    :cond_0
    cmpg-float v0, p1, v1

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    const/high16 v0, 0x40800000    # 4.0f

    .line 19
    .line 20
    mul-float/2addr p1, v0

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    sub-float/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 26
    .line 27
    cmpg-float v0, p1, v0

    .line 28
    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    const/high16 v0, -0x3f800000    # -4.0f

    .line 32
    .line 33
    mul-float/2addr p1, v0

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    .line 35
    .line 36
    add-float/2addr p1, v0

    .line 37
    return p1

    .line 38
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 39
    .line 40
    mul-float/2addr p1, v0

    .line 41
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 42
    .line 43
    sub-float/2addr p1, v0

    .line 44
    return p1
.end method
