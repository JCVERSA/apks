.class public final Lcom/google/android/libraries/places/internal/zzali;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzali;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzakm;

.field private zzi:Lcom/google/android/libraries/places/internal/zzakm;

.field private zzj:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Lcom/google/android/libraries/places/internal/zzakm;

.field private zzq:Lcom/google/android/libraries/places/internal/zzakp;

.field private zzr:Lcom/google/android/libraries/places/internal/zzakv;

.field private zzs:I

.field private zzt:I

.field private zzu:Lcom/google/android/libraries/places/internal/zzaks;

.field private zzv:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzali;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzali;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzali;->zzb:Lcom/google/android/libraries/places/internal/zzali;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/libraries/places/internal/zzali;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzali;->zzv:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzali;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzali;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzali;->zzb:Lcom/google/android/libraries/places/internal/zzali;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x2

    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    if-eq p1, v5, :cond_7

    .line 13
    .line 14
    if-eq p1, v4, :cond_6

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eq p1, v3, :cond_5

    .line 18
    .line 19
    if-eq p1, v2, :cond_4

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    move p3, v0

    .line 26
    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzali;->zzv:B

    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzali;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    const-class p2, Lcom/google/android/libraries/places/internal/zzali;

    .line 34
    .line 35
    monitor-enter p2

    .line 36
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzali;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 41
    .line 42
    sget-object p3, Lcom/google/android/libraries/places/internal/zzali;->zzb:Lcom/google/android/libraries/places/internal/zzali;

    .line 43
    .line 44
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 45
    .line 46
    .line 47
    sput-object p1, Lcom/google/android/libraries/places/internal/zzali;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    monitor-exit p2

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1

    .line 56
    :cond_3
    :goto_2
    return-object p1

    .line 57
    :cond_4
    sget-object p1, Lcom/google/android/libraries/places/internal/zzali;->zzb:Lcom/google/android/libraries/places/internal/zzali;

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzalh;

    .line 61
    .line 62
    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzalh;-><init>(Lcom/google/android/libraries/places/internal/zzalg;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzali;

    .line 67
    .line 68
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzali;-><init>()V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_7
    const/16 p1, 0x11

    .line 73
    .line 74
    new-array p1, p1, [Ljava/lang/Object;

    .line 75
    .line 76
    const-string p2, "zzf"

    .line 77
    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    const-string p2, "zzg"

    .line 81
    .line 82
    aput-object p2, p1, p3

    .line 83
    .line 84
    const-string p2, "zzh"

    .line 85
    .line 86
    aput-object p2, p1, v5

    .line 87
    .line 88
    const-string p2, "zzi"

    .line 89
    .line 90
    aput-object p2, p1, v4

    .line 91
    .line 92
    const-string p2, "zzj"

    .line 93
    .line 94
    aput-object p2, p1, v3

    .line 95
    .line 96
    const-class p2, Lcom/google/android/libraries/places/internal/zzalf;

    .line 97
    .line 98
    aput-object p2, p1, v2

    .line 99
    .line 100
    const-string p2, "zzk"

    .line 101
    .line 102
    aput-object p2, p1, v1

    .line 103
    .line 104
    const-string p2, "zzl"

    .line 105
    .line 106
    const/4 p3, 0x7

    .line 107
    aput-object p2, p1, p3

    .line 108
    .line 109
    const-string p2, "zzm"

    .line 110
    .line 111
    const/16 p3, 0x8

    .line 112
    .line 113
    aput-object p2, p1, p3

    .line 114
    .line 115
    const-string p2, "zzn"

    .line 116
    .line 117
    const/16 p3, 0x9

    .line 118
    .line 119
    aput-object p2, p1, p3

    .line 120
    .line 121
    const-string p2, "zzo"

    .line 122
    .line 123
    const/16 p3, 0xa

    .line 124
    .line 125
    aput-object p2, p1, p3

    .line 126
    .line 127
    const-string p2, "zzp"

    .line 128
    .line 129
    const/16 p3, 0xb

    .line 130
    .line 131
    aput-object p2, p1, p3

    .line 132
    .line 133
    const-string p2, "zzq"

    .line 134
    .line 135
    const/16 p3, 0xc

    .line 136
    .line 137
    aput-object p2, p1, p3

    .line 138
    .line 139
    const-string p2, "zzr"

    .line 140
    .line 141
    const/16 p3, 0xd

    .line 142
    .line 143
    aput-object p2, p1, p3

    .line 144
    .line 145
    const-string p2, "zzs"

    .line 146
    .line 147
    const/16 p3, 0xe

    .line 148
    .line 149
    aput-object p2, p1, p3

    .line 150
    .line 151
    const-string p2, "zzt"

    .line 152
    .line 153
    const/16 p3, 0xf

    .line 154
    .line 155
    aput-object p2, p1, p3

    .line 156
    .line 157
    const-string p2, "zzu"

    .line 158
    .line 159
    const/16 p3, 0x10

    .line 160
    .line 161
    aput-object p2, p1, p3

    .line 162
    .line 163
    sget-object p2, Lcom/google/android/libraries/places/internal/zzali;->zzb:Lcom/google/android/libraries/places/internal/zzali;

    .line 164
    .line 165
    const-string p3, "\u0001\u000f\u0000\u0001\u0002\u0010\u000f\u0000\u0001\u0001\u0002\u1504\u0000\u0003\u1009\u0001\u0004\u1009\u0002\u0005\u001b\u0006\u1004\u0003\u0007\u1004\u0004\u0008\u1004\u0005\t\u1004\u0006\n\u1004\u0007\u000b\u1009\u0008\u000c\u1009\t\r\u1009\n\u000e\u1004\u000b\u000f\u1004\u000c\u0010\u1009\r"

    .line 166
    .line 167
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzali;->zzv:B

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method
