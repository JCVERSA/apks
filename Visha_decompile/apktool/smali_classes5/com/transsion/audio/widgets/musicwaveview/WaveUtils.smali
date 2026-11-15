.class public Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aCount20:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;->aCount20:[F

    return-void

    :array_0
    .array-data 4
        -0x3db66c8b
        -0x3df5d810
        -0x3e279db2    # -27.048f
        -0x3e4cd2f2    # -22.397f
        -0x3e66d917    # -19.144f
        -0x3e7a5604    # -16.708f
        -0x3e933f7d    # -14.797f
        -0x3eac1893    # -13.244f
        -0x3ec0d0e5    # -11.949f
        -0x3ed272b0    # -10.847f
        -0x3ee1ba5e    # -9.892f
        -0x3eef1aa0    # -9.056f
        -0x3efaf9db    # -8.314f
        -0x3f0b2b02    # -7.651f
        -0x3f1e45a2    # -7.054f
        -0x3f2f9581    # -6.513f
        -0x3f3f5c29    # -6.02f
        -0x3f4dcac1    # -5.569f
        -0x3f5b0a3d    # -5.155f
        -0x3f674396    # -4.773f
        -0x3f72872b    # -4.421f
        -0x3f7cf5c3    # -4.095f
        -0x3f8d4fdf    # -3.792f
        -0x3f9f5c29    # -3.51f
        -0x3fb03127    # -3.247f
        -0x3fbfdf3b    # -3.002f
        -0x3fce872b    # -2.773f
        -0x3fdc3958    # -2.559f
        -0x3fe91687    # -2.358f
        -0x3ff51eb8    # -2.17f
        -0x40010625    # -1.992f
        -0x401645a2    # -1.826f
        -0x402a5e35    # -1.669f
        -0x403d2f1b    # -1.522f
        -0x404ef9db    # -1.383f
        -0x405fdf3b    # -1.251f
        -0x406fbe77    # -1.127f
        -0x407eb852    # -1.01f
        -0x4099db23    # -0.899f
        -0x40b4bc6a    # -0.794f
        -0x40ce147b    # -0.695f
        -0x40e624dd    # -0.601f
        -0x40fd2f1b    # -0.511f
        -0x4125e354    # -0.426f
        -0x414ed917    # -0.346f
        -0x417645a2    # -0.269f
        -0x41b645a2    # -0.197f
        -0x41fced91    # -0.128f
        -0x42820c4a    # -0.062f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ACount(F)F
    .locals 7

    const v0, 0x4d0dcf73    # 1.48698928E8f

    mul-float v1, v0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr p0, p0

    const v2, 0x43d42e15

    add-float/2addr v2, p0

    const v3, 0x46353d28

    add-float/2addr v3, p0

    const v4, 0x4904ef07

    add-float/2addr v4, p0

    add-float/2addr p0, v0

    float-to-double v0, v1

    float-to-double v5, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    float-to-double v2, p0

    mul-double/2addr v5, v2

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const/high16 p0, -0x40000000    # -2.0f

    float-to-double v2, p0

    sub-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static calculateA([FF)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 2
    invoke-static {v1}, Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;->ACount(F)F

    move-result v1

    float-to-double v1, v1

    .line 3
    aget v3, p0, v0

    float-to-double v3, v3

    add-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 4
    :cond_0
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static calculateA([FFI)V
    .locals 5

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int v1, v0, p2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 6
    invoke-static {v1}, Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;->ACount(F)F

    move-result v1

    float-to-double v1, v1

    .line 7
    aget v3, p0, v0

    float-to-double v3, v3

    add-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 8
    :cond_0
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static calculateDB([F)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    goto :goto_1

    :cond_0
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getArray(IF)[F
    .locals 4

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, 0x1

    int-to-float v3, v2

    mul-float/2addr v3, p1

    invoke-static {v3}, Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;->ACount(F)F

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method
