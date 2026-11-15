.class public final Lcom/google/android/gms/internal/measurement/zzdc;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/measurement/zzcz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(Lcom/google/android/gms/internal/measurement/zzde;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdc;->zza:Lcom/google/android/gms/internal/measurement/zzcz;

    .line 8
    .line 9
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzcz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdc;->zza:Lcom/google/android/gms/internal/measurement/zzcz;

    .line 2
    .line 3
    return-object v0
.end method
