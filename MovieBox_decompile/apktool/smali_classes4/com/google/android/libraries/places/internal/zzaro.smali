.class public final Lcom/google/android/libraries/places/internal/zzaro;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaua;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzaro;

.field private static volatile zzf:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:D

.field private zzo:I

.field private zzp:I

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/libraries/places/internal/zzatz;

.field private zzs:Z

.field private zzt:Lcom/google/android/libraries/places/internal/zzarj;

.field private zzu:Lcom/google/android/libraries/places/internal/zzarl;

.field private zzv:Lcom/google/android/libraries/places/internal/zzarh;

.field private zzw:Lcom/google/android/libraries/places/internal/zzaqn;

.field private zzx:Lcom/google/android/libraries/places/internal/zzarn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzard;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzard;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaro;->zzb:Lcom/google/android/libraries/places/internal/zzaua;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaro;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaro;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 14
    .line 15
    const-class v1, Lcom/google/android/libraries/places/internal/zzaro;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzh:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzi:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzj:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzl:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzq:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzau()Lcom/google/android/libraries/places/internal/zzatz;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzr:Lcom/google/android/libraries/places/internal/zzatz;

    .line 21
    .line 22
    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzare;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzare;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaro;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzaro;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaro;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzh:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaro;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzi:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaro;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaro;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaro;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzm:Z

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaro;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzn:D

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzaro;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzo:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzaro;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzr:Lcom/google/android/libraries/places/internal/zzatz;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzav(Lcom/google/android/libraries/places/internal/zzatz;)Lcom/google/android/libraries/places/internal/zzatz;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzr:Lcom/google/android/libraries/places/internal/zzatz;

    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzr:Lcom/google/android/libraries/places/internal/zzatz;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzaqb;->zza()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzatz;->zzh(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzaro;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzs:Z

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzn(Lcom/google/android/libraries/places/internal/zzaro;Lcom/google/android/libraries/places/internal/zzarj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzt:Lcom/google/android/libraries/places/internal/zzarj;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzg:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzg:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zzo(Lcom/google/android/libraries/places/internal/zzaro;Lcom/google/android/libraries/places/internal/zzarl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzu:Lcom/google/android/libraries/places/internal/zzarl;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzg:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzg:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zzp(Lcom/google/android/libraries/places/internal/zzaro;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x2

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaro;->zzk:I

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x6

    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_7

    .line 10
    .line 11
    if-eq p1, v3, :cond_6

    .line 12
    .line 13
    if-eq p1, v2, :cond_5

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    if-eq p1, v0, :cond_3

    .line 19
    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaro;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/libraries/places/internal/zzaro;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaro;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/libraries/places/internal/zzaro;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p2

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_2
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzare;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzare;-><init>(Lcom/google/android/libraries/places/internal/zzard;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaro;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaro;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    const/16 p1, 0x12

    .line 67
    .line 68
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v4, "zzg"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object v4, p1, v5

    .line 74
    .line 75
    const-string v4, "zzh"

    .line 76
    .line 77
    aput-object v4, p1, p2

    .line 78
    .line 79
    const-string p2, "zzi"

    .line 80
    .line 81
    aput-object p2, p1, v3

    .line 82
    .line 83
    const-string p2, "zzj"

    .line 84
    .line 85
    aput-object p2, p1, v2

    .line 86
    .line 87
    const-string p2, "zzk"

    .line 88
    .line 89
    aput-object p2, p1, v1

    .line 90
    .line 91
    const-string p2, "zzl"

    .line 92
    .line 93
    aput-object p2, p1, v0

    .line 94
    .line 95
    const-string p2, "zzm"

    .line 96
    .line 97
    aput-object p2, p1, p3

    .line 98
    .line 99
    const-string p2, "zzn"

    .line 100
    .line 101
    const/4 p3, 0x7

    .line 102
    aput-object p2, p1, p3

    .line 103
    .line 104
    const-string p2, "zzo"

    .line 105
    .line 106
    const/16 p3, 0x8

    .line 107
    .line 108
    aput-object p2, p1, p3

    .line 109
    .line 110
    const-string p2, "zzr"

    .line 111
    .line 112
    const/16 p3, 0x9

    .line 113
    .line 114
    aput-object p2, p1, p3

    .line 115
    .line 116
    const-string p2, "zzs"

    .line 117
    .line 118
    const/16 p3, 0xa

    .line 119
    .line 120
    aput-object p2, p1, p3

    .line 121
    .line 122
    const-string p2, "zzt"

    .line 123
    .line 124
    const/16 p3, 0xb

    .line 125
    .line 126
    aput-object p2, p1, p3

    .line 127
    .line 128
    const-string p2, "zzu"

    .line 129
    .line 130
    const/16 p3, 0xc

    .line 131
    .line 132
    aput-object p2, p1, p3

    .line 133
    .line 134
    const-string p2, "zzv"

    .line 135
    .line 136
    const/16 p3, 0xd

    .line 137
    .line 138
    aput-object p2, p1, p3

    .line 139
    .line 140
    const-string p2, "zzw"

    .line 141
    .line 142
    const/16 p3, 0xe

    .line 143
    .line 144
    aput-object p2, p1, p3

    .line 145
    .line 146
    const-string p2, "zzx"

    .line 147
    .line 148
    const/16 p3, 0xf

    .line 149
    .line 150
    aput-object p2, p1, p3

    .line 151
    .line 152
    const-string p2, "zzp"

    .line 153
    .line 154
    const/16 p3, 0x10

    .line 155
    .line 156
    aput-object p2, p1, p3

    .line 157
    .line 158
    const-string p2, "zzq"

    .line 159
    .line 160
    const/16 p3, 0x11

    .line 161
    .line 162
    aput-object p2, p1, p3

    .line 163
    .line 164
    sget-object p2, Lcom/google/android/libraries/places/internal/zzaro;->zze:Lcom/google/android/libraries/places/internal/zzaro;

    .line 165
    .line 166
    const-string p3, "\u0000\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u000c\u0006\u0208\u0007\u0007\t\u0000\n\u0004\u000b,\u000c\u0007\r\u1009\u0000\u000e\u1009\u0001\u000f\u1009\u0002\u0010\u1009\u0003\u0011\u1009\u0004\u0012\u0004\u0013\u0208"

    .line 167
    .line 168
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    return-object p1
.end method
