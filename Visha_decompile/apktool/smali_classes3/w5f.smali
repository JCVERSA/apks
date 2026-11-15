.class public final Lw5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5f;
.implements Lr5f;


# instance fields
.field public final b:Lejf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lfre;Lcom/google/android/gms/ads/internal/zza;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lmjf;

    invoke-static {}, Lkkf;->a()Lkkf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/o0;->a()Lcom/google/android/gms/internal/ads/o0;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lmjf;->a(Landroid/content/Context;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)Lejf;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lw5f;->b:Lejf;

    invoke-interface {v0}, Lejf;->zzF()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic c(Lw5f;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    iget-object p0, p0, Lw5f;->b:Lejf;

    const-string v1, "text/html"

    invoke-interface {p0, p1, v1, v0}, Lejf;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lw5f;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0, p1}, Lejf;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lw5f;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0, p1}, Lx5f;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lw5f;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    iget-object p0, p0, Lw5f;->b:Lejf;

    const-string v1, "text/html"

    invoke-interface {p0, p1, v1, v0}, Lejf;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "runOnUiThread > the UI thread is the main thread, the runnable will be run now"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string v0, "runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "runOnUiThread > the runnable could not be placed to the message queue"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ln3f;)V
    .locals 1

    new-instance v0, Lt5f;

    invoke-direct {v0, p2}, Lt5f;-><init>(Ln3f;)V

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0, p1, v0}, Lejf;->zzaA(Ljava/lang/String;Lje8;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ln3f;)V
    .locals 1

    new-instance v0, Lv5f;

    invoke-direct {v0, p0, p2}, Lv5f;-><init>(Lw5f;Ln3f;)V

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0, p1, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final g(Ly5f;)V
    .locals 1

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu5f;

    invoke-direct {v0, p1}, Lu5f;-><init>(Ly5f;)V

    invoke-interface {p0, v0}, Likf;->r(Lhkf;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    const-string v0, "invokeJavascript on adWebView from js"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Lw5f;Ljava/lang/String;)V

    invoke-static {v0}, Lw5f;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq5f;->c(Lr5f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0}, Lejf;->destroy()V

    return-void
.end method

.method public final synthetic zzd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq5f;->a(Lr5f;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq5f;->b(Lr5f;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "loadHtml on adWebView from html"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmm;-><init>(Lw5f;Ljava/lang/String;)V

    invoke-static {v0}, Lw5f;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadHtmlWrapper on adWebView from path: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmj;-><init>(Lw5f;Ljava/lang/String;)V

    invoke-static {v0}, Lw5f;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadJavascript on adWebView from path: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmn;-><init>(Lw5f;Ljava/lang/String;)V

    invoke-static {v0}, Lw5f;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()Z
    .locals 0

    iget-object p0, p0, Lw5f;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzaE()Z

    move-result p0

    return p0
.end method

.method public final zzj()Ls6f;
    .locals 1

    new-instance v0, Ls6f;

    invoke-direct {v0, p0}, Ls6f;-><init>(Lr6f;)V

    return-object v0
.end method

.method public final synthetic zzp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq5f;->d(Lr5f;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
