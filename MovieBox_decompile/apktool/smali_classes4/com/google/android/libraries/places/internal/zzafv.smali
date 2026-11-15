.class public final Lcom/google/android/libraries/places/internal/zzafv;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzafv;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:I

.field private zzu:I

.field private zzv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzafv;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzafv;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/libraries/places/internal/zzafv;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzh:I

    .line 6
    .line 7
    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzafs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzafs;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzafv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzi:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzj:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzk:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzl:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzm:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzn:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzo:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzp:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzq:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzr:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzn(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzs:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzo(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzt:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzp(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzg:I

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 10
    .line 11
    return-void
.end method

.method static synthetic zzq(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzh:I

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    .line 8
    .line 9
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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/libraries/places/internal/zzafv;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafs;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzafs;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafv;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzafv;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    const/16 p1, 0x14

    .line 67
    .line 68
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v4, "zzf"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object v4, p1, v5

    .line 74
    .line 75
    const-string v4, "zzg"

    .line 76
    .line 77
    aput-object v4, p1, p2

    .line 78
    .line 79
    sget-object p2, Lcom/google/android/libraries/places/internal/zzafu;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    .line 80
    .line 81
    aput-object p2, p1, v3

    .line 82
    .line 83
    const-string p2, "zzh"

    .line 84
    .line 85
    aput-object p2, p1, v2

    .line 86
    .line 87
    sget-object p2, Lcom/google/android/libraries/places/internal/zzafr;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    .line 88
    .line 89
    aput-object p2, p1, v1

    .line 90
    .line 91
    const-string p2, "zzi"

    .line 92
    .line 93
    aput-object p2, p1, v0

    .line 94
    .line 95
    const-string p2, "zzj"

    .line 96
    .line 97
    aput-object p2, p1, p3

    .line 98
    .line 99
    const-string p2, "zzk"

    .line 100
    .line 101
    const/4 p3, 0x7

    .line 102
    aput-object p2, p1, p3

    .line 103
    .line 104
    const-string p2, "zzl"

    .line 105
    .line 106
    const/16 p3, 0x8

    .line 107
    .line 108
    aput-object p2, p1, p3

    .line 109
    .line 110
    const-string p2, "zzm"

    .line 111
    .line 112
    const/16 p3, 0x9

    .line 113
    .line 114
    aput-object p2, p1, p3

    .line 115
    .line 116
    const-string p2, "zzn"

    .line 117
    .line 118
    const/16 p3, 0xa

    .line 119
    .line 120
    aput-object p2, p1, p3

    .line 121
    .line 122
    const-string p2, "zzp"

    .line 123
    .line 124
    const/16 p3, 0xb

    .line 125
    .line 126
    aput-object p2, p1, p3

    .line 127
    .line 128
    const-string p2, "zzq"

    .line 129
    .line 130
    const/16 p3, 0xc

    .line 131
    .line 132
    aput-object p2, p1, p3

    .line 133
    .line 134
    const-string p2, "zzr"

    .line 135
    .line 136
    const/16 p3, 0xd

    .line 137
    .line 138
    aput-object p2, p1, p3

    .line 139
    .line 140
    const-string p2, "zzs"

    .line 141
    .line 142
    const/16 p3, 0xe

    .line 143
    .line 144
    aput-object p2, p1, p3

    .line 145
    .line 146
    const-string p2, "zzt"

    .line 147
    .line 148
    const/16 p3, 0xf

    .line 149
    .line 150
    aput-object p2, p1, p3

    .line 151
    .line 152
    const-string p2, "zzo"

    .line 153
    .line 154
    const/16 p3, 0x10

    .line 155
    .line 156
    aput-object p2, p1, p3

    .line 157
    .line 158
    const-string p2, "zzu"

    .line 159
    .line 160
    const/16 p3, 0x11

    .line 161
    .line 162
    aput-object p2, p1, p3

    .line 163
    .line 164
    const-string p2, "zzv"

    .line 165
    .line 166
    const/16 p3, 0x12

    .line 167
    .line 168
    aput-object p2, p1, p3

    .line 169
    .line 170
    sget-object p2, Lcom/google/android/libraries/places/internal/zzaft;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    .line 171
    .line 172
    const/16 p3, 0x13

    .line 173
    .line 174
    aput-object p2, p1, p3

    .line 175
    .line 176
    sget-object p2, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    .line 177
    .line 178
    const-string p3, "\u0001\u0010\u0000\u0001\u0001\u0011\u0010\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u100b\u0005\u0007\u100b\u0006\u0008\u100b\u0007\n\u100b\t\u000b\u100b\n\u000c\u100b\u000b\r\u1007\u000c\u000e\u100b\r\u000f\u100b\u0008\u0010\u100b\u000e\u0011\u180c\u000f"

    .line 179
    .line 180
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    return-object p1
.end method
