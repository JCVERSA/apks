.class public final Lhdg;
.super Lidg;
.source "SourceFile"


# instance fields
.field public final b:Lorg/json/JSONObject;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lhmh;Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lidg;-><init>(Lhmh;)V

    const-string p1, "tracking_urls_and_actions"

    const-string v0, "active_view"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzh(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lhdg;->b:Lorg/json/JSONObject;

    const-string p1, "allow_pub_owned_ad_view"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzl(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lhdg;->c:Z

    const-string p1, "attribution"

    const-string v1, "allow_pub_rendering"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzl(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lhdg;->d:Z

    const-string p1, "enable_omid"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzl(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lhdg;->e:Z

    const-string p1, "watermark_overlay_png_base64"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {v1, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhdg;->g:Ljava/lang/String;

    const-string p1, "overlay"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lhdg;->f:Z

    const-string p1, "omid_settings"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lhdg;->h:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Lhnh;
    .locals 1

    iget-object v0, p0, Lhdg;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance p0, Lhnh;

    invoke-direct {p0, v0}, Lhnh;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-object p0, p0, Lhmh;->V:Lhnh;

    :goto_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhdg;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lhdg;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-object p0, p0, Lhmh;->z:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lhdg;->e:Z

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lhdg;->c:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lhdg;->d:Z

    return p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lhdg;->f:Z

    return p0
.end method
