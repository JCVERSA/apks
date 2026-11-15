.class public final Lp2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    check-cast p1, Lejf;

    const-string p0, "appId"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Missing App Id, cannot show LMD Overlay without it"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lm1i;->l()Ll1i;

    move-result-object v0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ll1i;->b(Ljava/lang/String;)Ll1i;

    invoke-interface {p1}, Lejf;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ll1i;->h(I)Ll1i;

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll1i;->g(Landroid/os/IBinder;)Ll1i;

    const-string p0, "gravityX"

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gravityY"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ll1i;->d(I)Ll1i;

    goto :goto_0

    :cond_1
    const/16 p0, 0x51

    invoke-virtual {v0, p0}, Ll1i;->d(I)Ll1i;

    :goto_0
    const-string p0, "verticalMargin"

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Ll1i;->e(F)Ll1i;

    goto :goto_1

    :cond_2
    const p0, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, p0}, Ll1i;->e(F)Ll1i;

    :goto_1
    const-string p0, "enifd"

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ll1i;->a(Ljava/lang/String;)Ll1i;

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzk()Lcom/google/android/gms/ads/internal/overlay/zzz;

    move-result-object p0

    invoke-virtual {v0}, Ll1i;->i()Lm1i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzj(Lejf;Lm1i;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DefaultGmsgHandlers.ShowLMDOverlay"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p0, "Missing parameters for LMD Overlay show request"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method
