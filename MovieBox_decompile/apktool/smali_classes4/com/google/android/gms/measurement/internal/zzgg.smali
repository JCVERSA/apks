.class public final Lcom/google/android/gms/measurement/internal/zzgg;
.super Lcom/google/android/gms/measurement/internal/zzh;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:J

.field private zzf:J

.field private zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:J

.field private zzn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzm:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzn:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzf:J

    .line 12
    .line 13
    return-void
.end method

.method private final zzah()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbr:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Disabled IID for tests."

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v4, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_1
    :try_start_1
    const-string v4, "getInstance"

    .line 54
    .line 55
    new-array v5, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v6, Landroid/content/Context;

    .line 58
    .line 59
    aput-object v6, v5, v0

    .line 60
    .line 61
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v5, v1, v0

    .line 72
    .line 73
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_2
    :try_start_2
    const-string v1, "getFirebaseInstanceId"

    .line 81
    .line 82
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    return-object v0

    .line 93
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "Failed to retrieve Firebase Instance Id"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v3

    .line 107
    :catch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "Failed to obtain Firebase Analytics instance"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :catch_2
    return-object v3
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;
    .locals 48

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    new-instance v42, Lcom/google/android/gms/measurement/internal/zzo;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzae()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzab()I

    move-result v1

    int-to-long v5, v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzd:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzd:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 14
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zze:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zze:J

    .line 16
    :cond_0
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zze:J

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v14

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzm:Z

    const/4 v8, 0x1

    xor-int/lit8 v15, v1, 0x1

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 21
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    .line 22
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzah()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    .line 23
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzha;->zzc:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v8

    cmp-long v19, v8, v10

    if-nez v19, :cond_2

    .line 25
    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:J

    :goto_1
    move-wide/from16 v21, v8

    goto :goto_2

    .line 26
    :cond_2
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzhy;->zza:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    .line 27
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzaa()I

    move-result v23

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzv()Z

    move-result v24

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v8, "deferred_analytics_collection"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzac()Ljava/lang/String;

    move-result-object v26

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    const-string v8, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    const/16 v27, 0x0

    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v10, 0x1

    xor-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v1

    .line 35
    :goto_3
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzf:J

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzg:Ljava/util/List;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzje;->zzf()Ljava/lang/String;

    move-result-object v29

    .line 38
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzh:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzp()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzh:Ljava/lang/String;

    .line 40
    :cond_4
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzh:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v30

    if-eqz v30, :cond_5

    move-object/from16 v30, v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    move-object/from16 v31, v9

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzcx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    .line 44
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v1

    if-nez v1, :cond_6

    move-wide/from16 v32, v10

    move/from16 v34, v14

    move/from16 v35, v15

    const-wide/16 v19, 0x0

    const/16 v36, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v30, v1

    move-object/from16 v31, v9

    .line 45
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    move-wide/from16 v32, v10

    .line 46
    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzm:J

    const-wide/16 v19, 0x0

    cmp-long v1, v9, v19

    if-eqz v1, :cond_7

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    move/from16 v34, v14

    move/from16 v35, v15

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzm:J

    sub-long/2addr v9, v14

    .line 48
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzl:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-wide/32 v14, 0x5265c00

    cmp-long v1, v9, v14

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzn:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzag()V

    goto :goto_4

    :cond_7
    move/from16 v34, v14

    move/from16 v35, v15

    .line 50
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzl:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzag()V

    .line 52
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgg;->zzl:Ljava/lang/String;

    move-object/from16 v36, v1

    .line 53
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    .line 54
    const-string v9, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_a

    const/16 v37, 0x0

    goto :goto_6

    .line 55
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v37, v1

    .line 56
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;)J

    move-result-wide v38

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v43

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzn()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object v44

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzci:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzc()I

    move-result v1

    move/from16 v45, v1

    goto :goto_7

    :cond_b
    const/16 v45, 0x0

    .line 61
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzci:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzm()J

    move-result-wide v9

    move-wide/from16 v46, v9

    goto :goto_8

    :cond_c
    move-wide/from16 v46, v19

    .line 63
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzu()Ljava/lang/String;

    move-result-object v40

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v1

    .line 65
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzf;

    invoke-direct {v8, v1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzjh;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()Ljava/lang/String;

    move-result-object v41

    const-wide/32 v8, 0x19e10

    const-wide/16 v16, 0x0

    const/16 v28, 0x0

    move-object/from16 v1, v42

    move-wide v10, v12

    move-object/from16 v12, p1

    move/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v15, v18

    move-wide/from16 v18, v21

    move/from16 v20, v23

    move/from16 v21, v24

    move/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-wide/from16 v25, v32

    move-object/from16 v27, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v36

    move/from16 v32, v37

    move-wide/from16 v33, v38

    move/from16 v35, v43

    move-object/from16 v36, v44

    move/from16 v37, v45

    move-wide/from16 v38, v46

    .line 66
    invoke-direct/range {v1 .. v41}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v42
.end method

.method final zzaa()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzi:I

    .line 5
    .line 6
    return v0
.end method

.method final zzab()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzc:I

    .line 5
    .line 6
    return v0
.end method

.method final zzac()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzk:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method final zzad()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zza:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zza:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method final zzae()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method final zzaf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzg:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzag()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "Analytics Storage consent is not granted"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v2, 0x10

    .line 38
    .line 39
    new-array v2, v2, [B

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    new-instance v4, Ljava/math/BigInteger;

    .line 55
    .line 56
    invoke-direct {v4, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 57
    .line 58
    .line 59
    new-array v2, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v4, v2, v0

    .line 62
    .line 63
    const-string v4, "%032x"

    .line 64
    .line 65
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    const-string v4, "null"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string v4, "not null"

    .line 83
    .line 84
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v4, v1, v0

    .line 87
    .line 88
    const-string v0, "Resetting session stitching token to %s"

    .line 89
    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzl:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzm:J

    .line 108
    .line 109
    return-void
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzn:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzn:Ljava/lang/String;

    return v0
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzgg;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzgf;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzgf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzjq;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzlj;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzls;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zznb;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected final zzx()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, ""

    .line 19
    .line 20
    const-string v4, "unknown"

    .line 21
    .line 22
    const-string v5, "Unknown"

    .line 23
    .line 24
    const/high16 v6, -0x80000000

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v8, "Error retrieving app installer package name. appId"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    if-nez v4, :cond_1

    .line 69
    .line 70
    const-string v4, "manual_install"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string v7, "com.android.vending"

    .line 74
    .line 75
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_2

    .line 80
    .line 81
    move-object v4, v3

    .line 82
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-nez v9, :cond_3

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move-object v8, v5

    .line 114
    :goto_2
    :try_start_2
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 115
    .line 116
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catch_1
    move-object v7, v5

    .line 120
    move-object v5, v8

    .line 121
    goto :goto_3

    .line 122
    :catch_2
    move-object v7, v5

    .line 123
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    const-string v9, "Error retrieving package info. appId, appName"

    .line 132
    .line 133
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v8, v9, v10, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    move-object v5, v7

    .line 141
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zza:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzd:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzb:Ljava/lang/String;

    .line 146
    .line 147
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzc:I

    .line 148
    .line 149
    const-wide/16 v4, 0x0

    .line 150
    .line 151
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zze:J

    .line 152
    .line 153
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzu()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    const/4 v5, 0x1

    .line 164
    if-nez v4, :cond_5

    .line 165
    .line 166
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzv()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v6, "am"

    .line 173
    .line 174
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    move v4, v5

    .line 181
    goto :goto_5

    .line 182
    :cond_5
    move v4, v2

    .line 183
    :goto_5
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 184
    .line 185
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzc()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    packed-switch v6, :pswitch_data_0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    const-string v8, "App measurement disabled"

    .line 201
    .line 202
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    const-string v8, "Invalid scion state in identity"

    .line 214
    .line 215
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    const-string v8, "App measurement disabled due to denied storage consent"

    .line 229
    .line 230
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    const-string v8, "App measurement disabled via the global data collection setting"

    .line 244
    .line 245
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 258
    .line 259
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    const-string v8, "App measurement disabled via the init parameters"

    .line 272
    .line 273
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    const-string v8, "App measurement disabled via the manifest"

    .line 286
    .line 287
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 300
    .line 301
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    const-string v8, "App measurement deactivated via the init parameters"

    .line 314
    .line 315
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    const-string v8, "App measurement deactivated via the manifest"

    .line 328
    .line 329
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    const-string v8, "App measurement collection enabled"

    .line 342
    .line 343
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_6
    if-nez v6, :cond_6

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_6
    move v5, v2

    .line 350
    :goto_7
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 351
    .line 352
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzk:Ljava/lang/String;

    .line 353
    .line 354
    if-eqz v4, :cond_7

    .line 355
    .line 356
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 357
    .line 358
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzu()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzk:Ljava/lang/String;

    .line 363
    .line 364
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 369
    .line 370
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzx()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    const-string v7, "google_app_id"

    .line 375
    .line 376
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzhs;

    .line 377
    .line 378
    invoke-direct {v8, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-eqz v6, :cond_8

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_8
    move-object v3, v4

    .line 393
    :goto_8
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-nez v3, :cond_9

    .line 400
    .line 401
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhs;

    .line 402
    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 408
    .line 409
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzx()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-direct {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string v4, "admob_app_id"

    .line 417
    .line 418
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzk:Ljava/lang/String;

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :catch_3
    move-exception v3

    .line 426
    goto :goto_b

    .line 427
    :cond_9
    :goto_9
    if-eqz v5, :cond_b

    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    const-string v4, "App measurement enabled for app package, google app id"

    .line 438
    .line 439
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zza:Ljava/lang/String;

    .line 440
    .line 441
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 442
    .line 443
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eqz v6, :cond_a

    .line 448
    .line 449
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzk:Ljava/lang/String;

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzj:Ljava/lang/String;

    .line 453
    .line 454
    :goto_a
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    const-string v5, "Fetching Google App Id failed with exception. appId"

    .line 467
    .line 468
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v4, v5, v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    :cond_b
    :goto_c
    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzg:Ljava/util/List;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const-string v3, "analytics.safelisted_events"

    .line 483
    .line 484
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzg(Ljava/lang/String;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-eqz v0, :cond_e

    .line 489
    .line 490
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_c

    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    const-string v3, "Safelisted event list is empty. Ignoring"

    .line 505
    .line 506
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    goto :goto_d

    .line 510
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_e

    .line 519
    .line 520
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    check-cast v4, Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    const-string v6, "safelisted event"

    .line 531
    .line 532
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-nez v4, :cond_d

    .line 537
    .line 538
    goto :goto_d

    .line 539
    :cond_e
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzg:Ljava/util/List;

    .line 540
    .line 541
    :goto_d
    if-eqz v1, :cond_f

    .line 542
    .line 543
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzi:I

    .line 552
    .line 553
    return-void

    .line 554
    :cond_f
    iput v2, p0, Lcom/google/android/gms/measurement/internal/zzgg;->zzi:I

    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzz()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
