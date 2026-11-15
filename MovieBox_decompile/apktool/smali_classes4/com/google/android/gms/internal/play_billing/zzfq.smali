.class abstract Lcom/google/android/gms/internal/play_billing/zzfq;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzfq;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>(Lcom/google/android/gms/internal/play_billing/zzfl;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfq;->zza:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfo;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfo;-><init>(Lcom/google/android/gms/internal/play_billing/zzfn;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 15
    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/play_billing/zzfq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfq;->zza:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 2
    .line 3
    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/play_billing/zzfq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
