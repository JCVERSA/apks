.class public final Lcom/google/android/libraries/places/internal/zzbrv;
.super Lcom/google/android/libraries/places/internal/zzazt;
.source "source.java"


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzbsz;

.field static final zzb:Lcom/google/android/libraries/places/internal/zzbqn;

.field private static final zzc:Ljava/util/logging/Logger;

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzbql;

.field private static final zze:Ljava/util/EnumSet;


# instance fields
.field private final zzf:Lcom/google/android/libraries/places/internal/zzbmd;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbqw;

.field private zzh:Ljavax/net/ssl/SSLSocketFactory;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzbsz;

.field private final zzj:J

.field private zzk:I

.field private final zzl:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzm:Lcom/google/android/libraries/places/internal/zzbqn;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbrv;

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
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzc:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsx;

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbsz;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;-><init>(Lcom/google/android/libraries/places/internal/zzbsz;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbsw;

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaK:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaO:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    aput-object v2, v1, v4

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaL:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    aput-object v2, v1, v5

    .line 37
    .line 38
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaP:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    aput-object v2, v1, v5

    .line 42
    .line 43
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaT:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 44
    .line 45
    const/4 v5, 0x4

    .line 46
    aput-object v2, v1, v5

    .line 47
    .line 48
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzaS:Lcom/google/android/libraries/places/internal/zzbsw;

    .line 49
    .line 50
    const/4 v5, 0x5

    .line 51
    aput-object v2, v1, v5

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;->zza([Lcom/google/android/libraries/places/internal/zzbsw;)Lcom/google/android/libraries/places/internal/zzbsx;

    .line 54
    .line 55
    .line 56
    new-array v1, v4, [Lcom/google/android/libraries/places/internal/zzbtn;

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtn;->zzb:Lcom/google/android/libraries/places/internal/zzbtn;

    .line 59
    .line 60
    aput-object v2, v1, v3

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsx;->zzd([Lcom/google/android/libraries/places/internal/zzbtn;)Lcom/google/android/libraries/places/internal/zzbsx;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzbsx;->zzc(Z)Lcom/google/android/libraries/places/internal/zzbsx;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbsx;->zzf()Lcom/google/android/libraries/places/internal/zzbsz;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 73
    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 75
    .line 76
    const-wide/16 v1, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbrn;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbrn;-><init>()V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzd:Lcom/google/android/libraries/places/internal/zzbql;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 93
    .line 94
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdy;->zzb:Lcom/google/android/libraries/places/internal/zzbdy;

    .line 95
    .line 96
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdy;->zzc:Lcom/google/android/libraries/places/internal/zzbdy;

    .line 97
    .line 98
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zze:Ljava/util/EnumSet;

    .line 103
    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzazt;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbqz;->zza()Lcom/google/android/libraries/places/internal/zzbqw;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzg:Lcom/google/android/libraries/places/internal/zzbqw;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzq:Lcom/google/android/libraries/places/internal/zzbql;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Lcom/google/android/libraries/places/internal/zzbqn;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzm:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbrv;->zza:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzi:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    .line 28
    .line 29
    sget-wide v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzl:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzj:J

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbmd;

    .line 34
    .line 35
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbrr;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v6, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrr;-><init>(Lcom/google/android/libraries/places/internal/zzbrv;Lcom/google/android/libraries/places/internal/zzbrq;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbrp;

    .line 42
    .line 43
    invoke-direct {v7, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrp;-><init>(Lcom/google/android/libraries/places/internal/zzbrv;Lcom/google/android/libraries/places/internal/zzbro;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v2, v0

    .line 49
    move-object v3, p1

    .line 50
    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbmd;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzayl;Lcom/google/android/libraries/places/internal/zzayf;Lcom/google/android/libraries/places/internal/zzbmc;Lcom/google/android/libraries/places/internal/zzbmb;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzf:Lcom/google/android/libraries/places/internal/zzbmd;

    .line 54
    .line 55
    return-void
.end method

.method public static zze(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzbrv;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/libraries/places/internal/zzbrv;

    .line 2
    .line 3
    const/16 p1, 0x1bb

    .line 4
    .line 5
    const-string v0, "places.googleapis.com"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzd(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbrv;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method protected final zzb()Lcom/google/android/libraries/places/internal/zzbbs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzf:Lcom/google/android/libraries/places/internal/zzbmd;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x1bb

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    const-string v1, "TLS not handled"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method final zzd()Lcom/google/android/libraries/places/internal/zzbru;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v12, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzj:J

    .line 4
    .line 5
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzi:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 6
    .line 7
    new-instance v20, Lcom/google/android/libraries/places/internal/zzbru;

    .line 8
    .line 9
    move-object/from16 v1, v20

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzg:Lcom/google/android/libraries/places/internal/zzbqw;

    .line 12
    .line 13
    move-object/from16 v17, v2

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbrv;->zzg()Ljavax/net/ssl/SSLSocketFactory;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzl:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbrv;->zzm:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 22
    .line 23
    const/16 v18, 0x0

    .line 24
    .line 25
    const/16 v19, 0x0

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/high16 v8, 0x400000

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const-wide v10, 0x7fffffffffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const v14, 0xffff

    .line 38
    .line 39
    .line 40
    const/4 v15, 0x0

    .line 41
    const v16, 0x7fffffff

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v19}, Lcom/google/android/libraries/places/internal/zzbru;-><init>(Lcom/google/android/libraries/places/internal/zzbqn;Lcom/google/android/libraries/places/internal/zzbqn;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/google/android/libraries/places/internal/zzbsz;IZJJIZILcom/google/android/libraries/places/internal/zzbqw;ZLcom/google/android/libraries/places/internal/zzbrt;)V

    .line 45
    .line 46
    .line 47
    return-object v20
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbrv;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    .line 3
    .line 4
    return-object p0
.end method

.method final zzg()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzk:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Default"

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtl;->zze()Lcom/google/android/libraries/places/internal/zzbtl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbtl;->zzf()Ljava/security/Provider;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrv;->zzh:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v2, "TLS Provider failure"

    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    const-string v1, "Unknown negotiation type: TLS"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    throw v0
.end method
