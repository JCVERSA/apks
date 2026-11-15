.class public final Lm7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4f;


# instance fields
.field public final a:Lm6f;

.field public final b:Leff;

.field public final synthetic c:Ln7f;


# direct methods
.method public constructor <init>(Ln7f;Lm6f;Leff;)V
    .locals 0

    iput-object p1, p0, Lm7f;->c:Ln7f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm7f;->a:Lm6f;

    iput-object p3, p0, Lm7f;->b:Leff;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm7f;->b:Leff;

    iget-object v1, p0, Lm7f;->c:Ln7f;

    invoke-static {v1}, Ln7f;->a(Ln7f;)Lv6f;

    move-result-object v1

    invoke-interface {v1, p1}, Lv6f;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Leff;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lm7f;->b:Leff;

    invoke-virtual {v0, p1}, Leff;->d(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lm7f;->a:Lm6f;

    invoke-virtual {p0}, Lm6f;->h()V

    throw p1

    :catch_1
    :goto_1
    iget-object p0, p0, Lm7f;->a:Lm6f;

    invoke-virtual {p0}, Lm6f;->h()V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lm7f;->b:Leff;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>()V

    invoke-virtual {p1, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm7f;->b:Leff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leff;->d(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lm7f;->a:Lm6f;

    invoke-virtual {p0}, Lm6f;->h()V

    throw p1

    :catch_0
    :goto_1
    iget-object p0, p0, Lm7f;->a:Lm6f;

    invoke-virtual {p0}, Lm6f;->h()V

    return-void
.end method
