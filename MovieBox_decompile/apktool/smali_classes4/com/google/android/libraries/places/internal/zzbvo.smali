.class public final Lcom/google/android/libraries/places/internal/zzbvo;
.super Lcom/google/android/libraries/places/internal/zzbbo;
.source "source.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbo;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvn;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbvn;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    return v0
.end method

.method public final zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 0

    .line 1
    const-string p1, "no service config"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "round_robin"

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
