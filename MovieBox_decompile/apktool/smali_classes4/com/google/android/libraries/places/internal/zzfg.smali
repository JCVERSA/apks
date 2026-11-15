.class public final Lcom/google/android/libraries/places/internal/zzfg;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Lcom/android/volley/h;


# direct methods
.method constructor <init>(Lcom/android/volley/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfg;->zza:Lcom/android/volley/h;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, v0, Lcom/android/volley/g;->a:I

    .line 6
    .line 7
    const/16 v1, 0x190

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x193

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 19
    .line 20
    const-string v1, "The provided API key is invalid."

    .line 21
    .line 22
    const/16 v2, 0x2333

    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_1
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 38
    .line 39
    const-string v1, "The provided parameters are invalid (did you include a max width or height?)."

    .line 40
    .line 41
    const/16 v2, 0x2334

    .line 42
    .line 43
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zza(Lcom/android/volley/VolleyError;)Lcom/google/android/gms/common/api/ApiException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_2
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method static synthetic zzc(Lcom/google/android/libraries/places/internal/zzhs;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzhs;->zzb(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/zzhs;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzhs;->zza()Lcom/google/android/libraries/places/internal/zzhu;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception p0

    .line 15
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/libraries/places/internal/zzfi;Lcom/google/android/libraries/places/internal/zzhs;)Lcom/google/android/gms/tasks/Task;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzfi;->zzc()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzfi;->zzd()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzfi;->zza()Lcom/google/android/gms/tasks/CancellationToken;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    move-object v10, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    new-instance v11, Lcom/google/android/libraries/places/internal/zzff;

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/libraries/places/internal/zzfc;

    .line 31
    .line 32
    invoke-direct {v3, p2, v10}, Lcom/google/android/libraries/places/internal/zzfc;-><init>(Lcom/google/android/libraries/places/internal/zzhs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 33
    .line 34
    .line 35
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    new-instance v8, Lcom/google/android/libraries/places/internal/zzfd;

    .line 40
    .line 41
    invoke-direct {v8, v10}, Lcom/google/android/libraries/places/internal/zzfd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v0, v11

    .line 47
    move-object v1, p0

    .line 48
    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzff;-><init>(Lcom/google/android/libraries/places/internal/zzfg;Ljava/lang/String;Lcom/android/volley/i$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/i$a;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfe;

    .line 54
    .line 55
    invoke-direct {p2, v11}, Lcom/google/android/libraries/places/internal/zzfe;-><init>(Lcom/android/volley/toolbox/i;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzfg;->zza:Lcom/android/volley/h;

    .line 62
    .line 63
    invoke-virtual {p1, v11}, Lcom/android/volley/h;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
