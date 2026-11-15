.class public final Lu7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4f;


# instance fields
.field public final a:Leff;


# direct methods
.method public constructor <init>(Lv7f;Leff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu7f;->a:Leff;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lu7f;->a:Leff;

    invoke-virtual {v0, p1}, Leff;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lu7f;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lu7f;->a:Leff;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>()V

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lu7f;->a:Leff;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Leff;->d(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
