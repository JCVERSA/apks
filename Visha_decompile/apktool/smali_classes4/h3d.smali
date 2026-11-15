.class public Lh3d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)F
    .locals 0

    if-lez p2, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p0, p1

    if-lez p2, :cond_1

    move p0, p1

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
