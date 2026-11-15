.class public final Lcom/yandex/mobile/ads/impl/pt1;
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

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1, p0}, Lwn8;->f(FF)F

    move-result p0

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {p0, p1}, Lwn8;->c(FF)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method
