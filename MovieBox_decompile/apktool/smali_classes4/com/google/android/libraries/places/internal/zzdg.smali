.class public final Lcom/google/android/libraries/places/internal/zzdg;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzdg;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:F

.field private zzl:I

.field private zzm:I

.field private zzn:F

.field private zzo:I

.field private zzp:I

.field private zzq:F

.field private zzr:I

.field private zzs:F

.field private zzt:I

.field private zzu:I

.field private zzv:F

.field private zzw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdg;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/libraries/places/internal/zzdg;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzdg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/libraries/places/internal/zzdg;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdf;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzdf;-><init>(Lcom/google/android/libraries/places/internal/zzde;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdg;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzdg;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcr;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcu;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxj;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/16 v6, 0x15

    .line 79
    .line 80
    new-array v6, v6, [Ljava/lang/Object;

    .line 81
    .line 82
    const-string v7, "zzf"

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    aput-object v7, v6, v8

    .line 86
    .line 87
    const-string v7, "zzg"

    .line 88
    .line 89
    aput-object v7, v6, p2

    .line 90
    .line 91
    aput-object p1, v6, v3

    .line 92
    .line 93
    const-string p1, "zzh"

    .line 94
    .line 95
    aput-object p1, v6, v2

    .line 96
    .line 97
    aput-object v4, v6, v1

    .line 98
    .line 99
    const-string p1, "zzi"

    .line 100
    .line 101
    aput-object p1, v6, v0

    .line 102
    .line 103
    aput-object v5, v6, p3

    .line 104
    .line 105
    const-string p1, "zzj"

    .line 106
    .line 107
    const/4 p2, 0x7

    .line 108
    aput-object p1, v6, p2

    .line 109
    .line 110
    const-string p1, "zzk"

    .line 111
    .line 112
    const/16 p2, 0x8

    .line 113
    .line 114
    aput-object p1, v6, p2

    .line 115
    .line 116
    const-string p1, "zzl"

    .line 117
    .line 118
    const/16 p2, 0x9

    .line 119
    .line 120
    aput-object p1, v6, p2

    .line 121
    .line 122
    const-string p1, "zzm"

    .line 123
    .line 124
    const/16 p2, 0xa

    .line 125
    .line 126
    aput-object p1, v6, p2

    .line 127
    .line 128
    const-string p1, "zzn"

    .line 129
    .line 130
    const/16 p2, 0xb

    .line 131
    .line 132
    aput-object p1, v6, p2

    .line 133
    .line 134
    const-string p1, "zzo"

    .line 135
    .line 136
    const/16 p2, 0xc

    .line 137
    .line 138
    aput-object p1, v6, p2

    .line 139
    .line 140
    const-string p1, "zzp"

    .line 141
    .line 142
    const/16 p2, 0xd

    .line 143
    .line 144
    aput-object p1, v6, p2

    .line 145
    .line 146
    const-string p1, "zzq"

    .line 147
    .line 148
    const/16 p2, 0xe

    .line 149
    .line 150
    aput-object p1, v6, p2

    .line 151
    .line 152
    const-string p1, "zzr"

    .line 153
    .line 154
    const/16 p2, 0xf

    .line 155
    .line 156
    aput-object p1, v6, p2

    .line 157
    .line 158
    const-string p1, "zzs"

    .line 159
    .line 160
    const/16 p2, 0x10

    .line 161
    .line 162
    aput-object p1, v6, p2

    .line 163
    .line 164
    const-string p1, "zzt"

    .line 165
    .line 166
    const/16 p2, 0x11

    .line 167
    .line 168
    aput-object p1, v6, p2

    .line 169
    .line 170
    const-string p1, "zzu"

    .line 171
    .line 172
    const/16 p2, 0x12

    .line 173
    .line 174
    aput-object p1, v6, p2

    .line 175
    .line 176
    const-string p1, "zzv"

    .line 177
    .line 178
    const/16 p2, 0x13

    .line 179
    .line 180
    aput-object p1, v6, p2

    .line 181
    .line 182
    const-string p1, "zzw"

    .line 183
    .line 184
    const/16 p2, 0x14

    .line 185
    .line 186
    aput-object p1, v6, p2

    .line 187
    .line 188
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    .line 189
    .line 190
    const-string p2, "\u0001\u0011\u0000\u0001\u0001\u0011\u0011\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u1004\u0003\u0005\u1001\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1001\u0007\t\u1004\u0008\n\u1004\t\u000b\u1001\n\u000c\u1004\u000b\r\u1001\u000c\u000e\u1004\r\u000f\u1004\u000e\u0010\u1001\u000f\u0011\u1004\u0010"

    .line 191
    .line 192
    invoke-static {p1, p2, v6}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1
.end method
