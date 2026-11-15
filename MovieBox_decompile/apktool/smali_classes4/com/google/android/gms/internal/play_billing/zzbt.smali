.class public final Lcom/google/android/gms/internal/play_billing/zzbt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbr;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbs;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbs;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 14
    .line 15
    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/play_billing/zzbl;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>(Lcom/google/android/gms/internal/play_billing/zzbp;Lcom/google/android/gms/internal/play_billing/zzbk;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zza(Lcom/google/android/gms/internal/play_billing/zzbo;)Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzba;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzg(Lcom/google/android/gms/internal/play_billing/zzba;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method
