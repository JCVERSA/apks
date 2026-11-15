.class public final Lcom/google/android/gms/internal/measurement/zzpp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.measurement"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()Lcom/google/android/gms/internal/measurement/zzhr;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "measurement.rb.attribution.ad_campaign_info"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 28
    .line 29
    const-string v1, "measurement.rb.attribution.client.bundle_on_backgrounded"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 37
    .line 38
    const-string v1, "measurement.rb.attribution.service.bundle_on_backgrounded"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 45
    .line 46
    const-string v1, "measurement.rb.attribution.client2"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzd:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 53
    .line 54
    const-string v1, "measurement.rb.attribution.dma_fix"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 57
    .line 58
    .line 59
    const-string v1, "measurement.rb.attribution.followup1.service"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zze:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 66
    .line 67
    const-string v1, "measurement.rb.attribution.index_out_of_bounds_fix"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 70
    .line 71
    .line 72
    const-string v1, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzf:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 79
    .line 80
    const-string v1, "measurement.rb.attribution.retry_disposition"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzg:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 87
    .line 88
    const-string v1, "measurement.rb.attribution.service"

    .line 89
    .line 90
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzh:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 95
    .line 96
    const-string v1, "measurement.rb.attribution.enable_trigger_redaction"

    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzi:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 103
    .line 104
    const-string v1, "measurement.rb.attribution.uuid_generation"

    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpp;->zzj:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 111
    .line 112
    const-string v1, "measurement.id.rb.attribution.retry_disposition"

    .line 113
    .line 114
    const-wide/16 v4, 0x0

    .line 115
    .line 116
    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 117
    .line 118
    .line 119
    const-string v1, "measurement.rb.attribution.improved_retry"

    .line 120
    .line 121
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzk:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 126
    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzd:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zze:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzf:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzg:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzh:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzj()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzi:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzk()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzj:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzl()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zzk:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
