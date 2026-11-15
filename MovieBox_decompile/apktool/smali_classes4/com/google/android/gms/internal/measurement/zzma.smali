.class final Lcom/google/android/gms/internal/measurement/zzma;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzmb;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzlv;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzma;->zza:Lcom/google/android/gms/internal/measurement/zzlv;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzlv;Lcom/google/android/gms/internal/measurement/zzme;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlv;Lcom/google/android/gms/internal/measurement/zzme;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzma;-><init>(Lcom/google/android/gms/internal/measurement/zzlv;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzma;->zza:Lcom/google/android/gms/internal/measurement/zzlv;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>(Lcom/google/android/gms/internal/measurement/zzlv;Lcom/google/android/gms/internal/measurement/zzme;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
