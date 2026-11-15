.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzlg;

.field private synthetic zzb:I

.field private synthetic zzc:Ljava/lang/Exception;

.field private synthetic zzd:[B

.field private synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Ljava/lang/Exception;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:[B

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzc:Ljava/lang/Exception;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zzd:[B

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->zze:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
