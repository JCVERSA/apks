.class public final Lcom/yandex/mobile/ads/impl/vr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/yandex/mobile/ads/impl/kf1;)I
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientation"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kf1;)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3e19999a    # 0.15f

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1, p0}, Lwn8;->f(FF)F

    move-result p0

    const/16 p1, 0x28f

    if-le p2, p1, :cond_0

    int-to-double p1, p2

    const-wide v0, 0x4086c00000000000L    # 728.0

    div-double/2addr p1, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ls86;->b(D)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x278

    if-le p2, p1, :cond_1

    const/16 p1, 0x51

    goto :goto_0

    :cond_1
    const/16 p1, 0x20e

    if-le p2, p1, :cond_2

    int-to-double p1, p2

    const-wide v0, 0x407d400000000000L    # 468.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ls86;->b(D)I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x1b0

    if-le p2, p1, :cond_3

    const/16 p1, 0x44

    goto :goto_0

    :cond_3
    int-to-double p1, p2

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ls86;->b(D)I

    move-result p1

    :goto_0
    float-to-int p0, p0

    invoke-static {p1, p0}, Lwn8;->g(II)I

    move-result p0

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lwn8;->d(II)I

    move-result p0

    return p0
.end method
