.class public final Lcom/yandex/mobile/ads/impl/gz0;
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
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientation"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kf1;)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3e19999a    # 0.15f

    mul-float/2addr p0, p1

    const/16 p1, 0x278

    if-le p2, p1, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/16 p0, 0x5a

    goto :goto_0

    :cond_0
    const/16 p0, 0x32

    :goto_0
    return p0
.end method
