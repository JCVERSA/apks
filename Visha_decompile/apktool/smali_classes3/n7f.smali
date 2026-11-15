.class public final Ln7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6f;


# instance fields
.field public final a:Lv6f;

.field public final b:Lw6f;

.field public final c:Lcom/google/android/gms/internal/ads/t3;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t3;Ljava/lang/String;Lw6f;Lv6f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7f;->c:Lcom/google/android/gms/internal/ads/t3;

    iput-object p2, p0, Ln7f;->d:Ljava/lang/String;

    iput-object p3, p0, Ln7f;->b:Lw6f;

    iput-object p4, p0, Ln7f;->a:Lv6f;

    return-void
.end method

.method public static bridge synthetic a(Ln7f;)Lv6f;
    .locals 0

    iget-object p0, p0, Ln7f;->a:Lv6f;

    return-object p0
.end method

.method public static bridge synthetic b(Ln7f;Lm6f;Lr6f;Ljava/lang/Object;Leff;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lm3f;->o:Ld4f;

    new-instance v2, Lm7f;

    invoke-direct {v2, p0, p1, p4}, Lm7f;-><init>(Ln7f;Lm6f;Leff;)V

    invoke-virtual {v1, v0, v2}, Ld4f;->c(Ljava/lang/String;Lc4f;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Ln7f;->b:Lw6f;

    invoke-interface {v2, p3}, Lw6f;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Ln7f;->d:Ljava/lang/String;

    invoke-interface {p2, p0, v1}, Lx5f;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p4, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    sget p3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p2, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lm6f;->h()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lm6f;->h()V

    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    invoke-virtual {p0, p1}, Ln7f;->zzb(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/lang/Object;)Lim5;
    .locals 3

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    iget-object v1, p0, Ln7f;->c:Lcom/google/android/gms/internal/ads/t3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/t3;->b(Lfre;)Lm6f;

    move-result-object v1

    const-string v2, "callJs > getEngine: Promise created"

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v2, Lk7f;

    invoke-direct {v2, p0, v1, p1, v0}, Lk7f;-><init>(Ln7f;Lm6f;Ljava/lang/Object;Leff;)V

    new-instance p1, Ll7f;

    invoke-direct {p1, p0, v0, v1}, Ll7f;-><init>(Ln7f;Leff;Lm6f;)V

    invoke-virtual {v1, v2, p1}, Llff;->f(Liff;Lgff;)V

    return-object v0
.end method
