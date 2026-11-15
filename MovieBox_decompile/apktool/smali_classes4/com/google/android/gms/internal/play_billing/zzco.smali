.class final Lcom/google/android/gms/internal/play_billing/zzco;
.super Lcom/google/android/gms/internal/play_billing/zzcl;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzcl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzco;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzco;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcl;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcn;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcn;-><init>(Lcom/google/android/gms/internal/play_billing/zzcm;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:Lcom/google/android/gms/internal/play_billing/zzcp;

    .line 11
    .line 12
    return-void
.end method

.method static final zzb()Lcom/google/android/gms/internal/play_billing/zzcl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "No-op Provider"

    .line 2
    .line 3
    return-object v0
.end method
