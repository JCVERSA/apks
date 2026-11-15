.class public final Lcom/yandex/mobile/ads/impl/q50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ww1;

.field private final b:Lcom/yandex/mobile/ads/impl/kx1;

.field private final c:Lcom/yandex/mobile/ads/impl/j10;

.field private final d:Lcom/yandex/mobile/ads/impl/xs0;

.field private final e:Lcom/yandex/mobile/ads/impl/kc;

.field private final f:Lcom/yandex/mobile/ads/impl/r50;

.field private final g:Lcom/yandex/mobile/ads/impl/jc;

.field private final h:Lcom/yandex/mobile/ads/impl/o50;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 9

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/ww1;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/ww1;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/j10;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/yandex/mobile/ads/impl/j10;-><init>(I)V

    .line 4
    sget v0, Lcom/yandex/mobile/ads/impl/xs0;->h:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xs0$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/xs0;

    move-result-object v6

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/kc;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/kc;-><init>()V

    .line 6
    new-instance v8, Lcom/yandex/mobile/ads/impl/s50;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/s50;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/q50;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ww1;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/j10;Lcom/yandex/mobile/ads/impl/xs0;Lcom/yandex/mobile/ads/impl/kc;Lcom/yandex/mobile/ads/impl/r50;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ww1;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/j10;Lcom/yandex/mobile/ads/impl/xs0;Lcom/yandex/mobile/ads/impl/kc;Lcom/yandex/mobile/ads/impl/r50;)V
    .locals 1

    .line 8
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkVersionFormatter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sensitiveModeChecker"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceInfoProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "locationManager"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "advertisingIdValidator"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environmentParametersProvider"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q50;->a:Lcom/yandex/mobile/ads/impl/ww1;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/q50;->b:Lcom/yandex/mobile/ads/impl/kx1;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/q50;->d:Lcom/yandex/mobile/ads/impl/xs0;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/q50;->e:Lcom/yandex/mobile/ads/impl/kc;

    .line 15
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->e()Lcom/yandex/mobile/ads/impl/jc;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q50;->g:Lcom/yandex/mobile/ads/impl/jc;

    .line 17
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q50;->h:Lcom/yandex/mobile/ads/impl/o50;

    return-void
.end method

.method private final a(Landroid/content/Context;Ls74;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls74;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v2, "app_id"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/te;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_code"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/te;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_name"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->a:Lcom/yandex/mobile/ads/impl/ww1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ww1;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->a:Lcom/yandex/mobile/ads/impl/ww1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ww1;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_name"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v1, "sdk_vendor"

    const-string v2, "yandex"

    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/r50;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/j10;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/j10;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/j10;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_language"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/j10;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "device_languages"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/r50;->b()Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j10;->a()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/r50;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 23
    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/r50;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android"

    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/r50;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q50;->c:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 27
    invoke-interface {p2, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ih1;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v2, "vpn_enabled"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->b:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->d:Lcom/yandex/mobile/ads/impl/xs0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xs0;->c()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 34
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_timestamp"

    invoke-interface {p2, v3, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lat"

    invoke-interface {p2, v3, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lon"

    invoke-interface {p2, v3, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "precision"

    invoke-interface {p2, v2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q50;->b:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 41
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/q50;->f:Lcom/yandex/mobile/ads/impl/r50;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/r50;->e()Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q50;->h:Lcom/yandex/mobile/ads/impl/o50;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o50;->b()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p2, p1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/q50;->g:Lcom/yandex/mobile/ads/impl/jc;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "00000000-0000-0000-0000-000000000000"

    if-eqz p1, :cond_6

    .line 45
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->b()Z

    move-result v3

    .line 46
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->a()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/q50;->e:Lcom/yandex/mobile/ads/impl/kc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v0

    :goto_3
    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 49
    const-string v3, "google_aid"

    invoke-interface {p2, v3, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/q50;->g:Lcom/yandex/mobile/ads/impl/jc;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jc;->c()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 51
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->b()Z

    move-result v3

    .line 52
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lc;->a()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q50;->e:Lcom/yandex/mobile/ads/impl/kc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_8

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    move v0, v1

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    if-eqz v0, :cond_9

    .line 55
    const-string p0, "huawei_oaid"

    invoke-interface {p2, p0, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri$Builder;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/q50$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/q50$a;-><init>(Lcom/yandex/mobile/ads/impl/q50;Landroid/net/Uri$Builder;)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/q50;->a(Landroid/content/Context;Ls74;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/in1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParams"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/q50$b;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/q50$b;-><init>(Lcom/yandex/mobile/ads/impl/in1;)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/q50;->a(Landroid/content/Context;Ls74;)V

    return-void
.end method
