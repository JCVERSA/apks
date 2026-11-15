.class public final Lq97;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq97;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq97;

    invoke-direct {v0}, Lq97;-><init>()V

    sput-object v0, Lq97;->a:Lq97;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    const/high16 p0, 0x47070000    # 34560.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/high16 p0, 0x43820000    # 260.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x45100000    # 2304.0f

    cmpg-float v0, p1, p0

    const/high16 v1, 0x44110000    # 580.0f

    if-gtz v0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p0

    const/high16 p0, 0x46fc0000    # 32256.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x43a00000    # 320.0f

    mul-float/2addr p1, p0

    sub-float p0, v1, p1

    :goto_0
    return p0
.end method
