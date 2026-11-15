.class final Lcom/google/android/gms/internal/play_billing/zzw;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Lcom/google/android/gms/internal/play_billing/zzv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzw;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzw;->zzb:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzv;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>(Lcom/google/android/gms/internal/play_billing/zzu;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzw;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
