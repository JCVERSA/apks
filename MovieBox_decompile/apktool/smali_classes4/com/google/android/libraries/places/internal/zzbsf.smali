.class final Lcom/google/android/libraries/places/internal/zzbsf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbgf;
.implements Lcom/google/android/libraries/places/internal/zzbrj;
.implements Lcom/google/android/libraries/places/internal/zzbsr;


# static fields
.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Ljava/util/logging/Logger;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/libraries/places/internal/zzbjh;

.field private zzC:Z

.field private zzD:Z

.field private final zzE:Ljavax/net/SocketFactory;

.field private zzF:Ljavax/net/ssl/SSLSocketFactory;

.field private zzG:Ljava/net/Socket;

.field private zzH:I

.field private final zzI:Ljava/util/Deque;

.field private final zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

.field private zzK:Lcom/google/android/libraries/places/internal/zzbkh;

.field private final zzL:Ljava/lang/Runnable;

.field private final zzM:I

.field private final zzN:Lcom/google/android/libraries/places/internal/zzbqz;

.field private final zzO:Lcom/google/android/libraries/places/internal/zzbji;

.field private zzP:Lcom/google/android/libraries/places/internal/zzbaf;

.field final zza:Lcom/google/android/libraries/places/internal/zzbaa;

.field zzb:I

.field private final zze:Ljava/net/InetSocketAddress;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/util/Random;

.field private final zzi:Lcom/google/android/libraries/places/internal/zznc;

.field private final zzj:I

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbuf;

.field private zzl:Lcom/google/android/libraries/places/internal/zzbmk;

.field private zzm:Lcom/google/android/libraries/places/internal/zzbrk;

.field private zzn:Lcom/google/android/libraries/places/internal/zzbsu;

.field private final zzo:Ljava/lang/Object;

.field private final zzp:Lcom/google/android/libraries/places/internal/zzbap;

.field private zzq:I

.field private final zzr:Ljava/util/Map;

.field private final zzs:Ljava/util/concurrent/Executor;

.field private final zzt:Lcom/google/android/libraries/places/internal/zzbqe;

.field private final zzu:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzv:I

.field private zzw:I

.field private zzx:Lcom/google/android/libraries/places/internal/zzbse;

.field private zzy:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzz:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzbtp;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 11
    .line 12
    const-string v3, "No error: A GRPC status of OK should have been sent"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 22
    .line 23
    const-string v3, "Protocol error"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 33
    .line 34
    const-string v3, "Internal error"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzh:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 44
    .line 45
    const-string v3, "Flow control error"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 55
    .line 56
    const-string v3, "Stream closed"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzj:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 66
    .line 67
    const-string v3, "Frame too large"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzk:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 77
    .line 78
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 79
    .line 80
    const-string v4, "Refused stream"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 90
    .line 91
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 92
    .line 93
    const-string v4, "Cancelled"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzm:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 103
    .line 104
    const-string v3, "Compression error"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzn:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 114
    .line 115
    const-string v3, "Connect error"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzo:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 125
    .line 126
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 127
    .line 128
    const-string v3, "Enhance your calm"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzp:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 138
    .line 139
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzh:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 140
    .line 141
    const-string v3, "Inadequate security"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzc:Ljava/util/Map;

    .line 155
    .line 156
    const-class v0, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzd:Ljava/util/logging/Logger;

    .line 167
    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbru;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbaa;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object p4, Lcom/google/android/libraries/places/internal/zzbjd;->zzr:Lcom/google/android/libraries/places/internal/zznc;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbub;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbub;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzh:Ljava/util/Random;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    .line 34
    .line 35
    new-instance v2, Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbrz;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbrz;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    .line 48
    .line 49
    const/16 v2, 0x7530

    .line 50
    .line 51
    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzb:I

    .line 52
    .line 53
    const-string v2, "address"

    .line 54
    .line 55
    invoke-static {p2, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    .line 59
    .line 60
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    .line 61
    .line 62
    const/high16 p3, 0x400000

    .line 63
    .line 64
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzv:I

    .line 65
    .line 66
    const p3, 0xffff

    .line 67
    .line 68
    .line 69
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    .line 70
    .line 71
    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    const-string v2, "executor"

    .line 74
    .line 75
    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzs:Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    new-instance p3, Lcom/google/android/libraries/places/internal/zzbqe;

    .line 81
    .line 82
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    invoke-direct {p3, v2}, Lcom/google/android/libraries/places/internal/zzbqe;-><init>(Ljava/util/concurrent/Executor;)V

    .line 85
    .line 86
    .line 87
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 88
    .line 89
    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    const-string v2, "scheduledExecutorService"

    .line 92
    .line 93
    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzu:Ljava/util/concurrent/ScheduledExecutorService;

    .line 97
    .line 98
    const/4 p3, 0x3

    .line 99
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 100
    .line 101
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    .line 106
    .line 107
    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    .line 109
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    .line 110
    .line 111
    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zze:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 112
    .line 113
    const-string v2, "connectionSpec"

    .line 114
    .line 115
    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 119
    .line 120
    const-string p3, "stopwatchFactory"

    .line 121
    .line 122
    invoke-static {p4, p3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzi:Lcom/google/android/libraries/places/internal/zznc;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    .line 128
    .line 129
    const-string p3, "grpc-java-okhttp/1.64.0-SNAPSHOT"

    .line 130
    .line 131
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    .line 132
    .line 133
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 134
    .line 135
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzL:Ljava/lang/Runnable;

    .line 136
    .line 137
    const p3, 0x7fffffff

    .line 138
    .line 139
    .line 140
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzM:I

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzc:Lcom/google/android/libraries/places/internal/zzbqw;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbqw;->zza()Lcom/google/android/libraries/places/internal/zzbqz;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzN:Lcom/google/android/libraries/places/internal/zzbqz;

    .line 149
    .line 150
    const-class p3, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p3, p2}, Lcom/google/android/libraries/places/internal/zzbap;->zzb(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbap;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    .line 161
    .line 162
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaye;->zza()Lcom/google/android/libraries/places/internal/zzayb;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbit;->zzb:Lcom/google/android/libraries/places/internal/zzayc;

    .line 167
    .line 168
    invoke-virtual {p2, p3, p5}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    .line 176
    .line 177
    monitor-enter v1

    .line 178
    :try_start_0
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbsa;

    .line 179
    .line 180
    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzbsa;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqz;->zzf(Lcom/google/android/libraries/places/internal/zzbqx;)V

    .line 184
    .line 185
    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    throw p1
.end method

.method static bridge synthetic zzA(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    const-string v7, ":"

    .line 11
    .line 12
    const-string v8, "\r\n"

    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    if-eqz v10, :cond_0

    .line 19
    .line 20
    iget-object v10, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 27
    .line 28
    .line 29
    move-result v12

    .line 30
    invoke-virtual {v10, v11, v12}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    iget-object v10, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    invoke-virtual {v10, v11, v12}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 49
    .line 50
    .line 51
    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 53
    .line 54
    .line 55
    iget v11, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzb:I

    .line 56
    .line 57
    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwh;->zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwh;->zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzbwh;->zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    new-instance v13, Lcom/google/android/libraries/places/internal/zzbug;

    .line 73
    .line 74
    invoke-direct {v13}, Lcom/google/android/libraries/places/internal/zzbug;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v14, "https"

    .line 78
    .line 79
    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzc(I)Lcom/google/android/libraries/places/internal/zzbug;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbug;->zze()Lcom/google/android/libraries/places/internal/zzbui;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    new-instance v14, Lcom/google/android/libraries/places/internal/zzbuj;

    .line 101
    .line 102
    invoke-direct {v14}, Lcom/google/android/libraries/places/internal/zzbuj;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v13}, Lcom/google/android/libraries/places/internal/zzbuj;->zzd(Lcom/google/android/libraries/places/internal/zzbui;)Lcom/google/android/libraries/places/internal/zzbuj;

    .line 106
    .line 107
    .line 108
    const-string v15, "Host"

    .line 109
    .line 110
    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbui;->zzd()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbui;->zzc()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v14, v15, v3}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    .line 137
    .line 138
    .line 139
    const-string v3, "User-Agent"

    .line 140
    .line 141
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v14, v3, v0}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    .line 144
    .line 145
    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    if-eqz v2, :cond_1

    .line 149
    .line 150
    const-string v0, "Proxy-Authorization"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 151
    .line 152
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v2, "ISO-8859-1"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    .line 177
    .line 178
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzd()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "Basic "

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 203
    :try_start_3
    invoke-virtual {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :catch_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_1
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/libraries/places/internal/zzbuj;->zze()Lcom/google/android/libraries/places/internal/zzbul;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zzb()Lcom/google/android/libraries/places/internal/zzbui;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 222
    .line 223
    const-string v3, "CONNECT %s:%d HTTP/1.1"

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbui;->zzd()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbui;->zzc()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-array v9, v4, [Ljava/lang/Object;

    .line 238
    .line 239
    aput-object v7, v9, v5

    .line 240
    .line 241
    aput-object v1, v9, v6

    .line 242
    .line 243
    invoke-static {v2, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-interface {v12, v1}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 248
    .line 249
    .line 250
    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbtd;->zza()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    move v2, v5

    .line 262
    :goto_2
    if-ge v2, v1, :cond_2

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzb(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 273
    .line 274
    .line 275
    const-string v3, ": "

    .line 276
    .line 277
    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzc(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 289
    .line 290
    .line 291
    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 292
    .line 293
    .line 294
    add-int/2addr v2, v6

    .line 295
    goto :goto_2

    .line 296
    :cond_2
    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 297
    .line 298
    .line 299
    invoke-interface {v12}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V

    .line 300
    .line 301
    .line 302
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbsf;->zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v1, "HTTP/1."

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 312
    const/4 v2, 0x4

    .line 313
    const/16 v3, 0x20

    .line 314
    .line 315
    const-string v7, "Unexpected status line: "

    .line 316
    .line 317
    if-eqz v1, :cond_6

    .line 318
    .line 319
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    const/16 v8, 0x9

    .line 324
    .line 325
    if-lt v1, v8, :cond_5

    .line 326
    .line 327
    const/16 v1, 0x8

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-ne v1, v3, :cond_5

    .line 334
    .line 335
    const/4 v1, 0x7

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    add-int/lit8 v1, v1, -0x30

    .line 341
    .line 342
    if-nez v1, :cond_3

    .line 343
    .line 344
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_3
    if-ne v1, v6, :cond_4

    .line 348
    .line 349
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    .line 353
    .line 354
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v1

    .line 362
    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    .line 363
    .line 364
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v1

    .line 372
    :cond_6
    const-string v1, "ICY "

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_c

    .line 379
    .line 380
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 381
    .line 382
    move v8, v2

    .line 383
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 384
    .line 385
    .line 386
    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 387
    const/4 v9, 0x3

    .line 388
    add-int/lit8 v12, v8, 0x3

    .line 389
    .line 390
    if-lt v1, v12, :cond_b

    .line 391
    .line 392
    :try_start_5
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 400
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 401
    .line 402
    .line 403
    move-result v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 404
    const-string v13, ""

    .line 405
    .line 406
    if-le v9, v12, :cond_8

    .line 407
    .line 408
    :try_start_7
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    if-ne v9, v3, :cond_7

    .line 413
    .line 414
    add-int/2addr v8, v2

    .line 415
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    move-object v2, v0

    .line 420
    goto :goto_4

    .line 421
    :cond_7
    new-instance v1, Ljava/net/ProtocolException;

    .line 422
    .line 423
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v1

    .line 431
    :cond_8
    move-object v2, v13

    .line 432
    :cond_9
    :goto_4
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbsf;->zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_9

    .line 441
    .line 442
    const/16 v0, 0xc8

    .line 443
    .line 444
    if-lt v1, v0, :cond_a

    .line 445
    .line 446
    const/16 v0, 0x12c

    .line 447
    .line 448
    if-ge v1, v0, :cond_a

    .line 449
    .line 450
    invoke-virtual {v10, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 451
    .line 452
    .line 453
    return-object v10

    .line 454
    :cond_a
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 455
    .line 456
    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 457
    .line 458
    .line 459
    :try_start_8
    invoke-virtual {v10}, Ljava/net/Socket;->shutdownOutput()V

    .line 460
    .line 461
    .line 462
    const-wide/16 v7, 0x400

    .line 463
    .line 464
    invoke-interface {v11, v3, v7, v8}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 465
    .line 466
    .line 467
    goto :goto_5

    .line 468
    :catch_2
    move-exception v0

    .line 469
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v8, "Unable to read body: "

    .line 479
    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 491
    .line 492
    .line 493
    :goto_5
    :try_start_a
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 494
    .line 495
    .line 496
    :catch_3
    :try_start_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 497
    .line 498
    const-string v7, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    .line 499
    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzi()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    const/4 v8, 0x3

    .line 509
    new-array v8, v8, [Ljava/lang/Object;

    .line 510
    .line 511
    aput-object v1, v8, v5

    .line 512
    .line 513
    aput-object v2, v8, v6

    .line 514
    .line 515
    aput-object v3, v8, v4

    .line 516
    .line 517
    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 522
    .line 523
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdp;

    .line 528
    .line 529
    const/4 v2, 0x0

    .line 530
    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 531
    .line 532
    .line 533
    throw v1

    .line 534
    :catch_4
    move-exception v0

    .line 535
    goto :goto_7

    .line 536
    :catch_5
    new-instance v1, Ljava/net/ProtocolException;

    .line 537
    .line 538
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v1

    .line 546
    :cond_b
    new-instance v1, Ljava/net/ProtocolException;

    .line 547
    .line 548
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v1

    .line 556
    :cond_c
    new-instance v1, Ljava/net/ProtocolException;

    .line 557
    .line 558
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 566
    :goto_6
    const/4 v10, 0x0

    .line 567
    :goto_7
    if-eqz v10, :cond_d

    .line 568
    .line 569
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    .line 570
    .line 571
    .line 572
    :cond_d
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 573
    .line 574
    const-string v2, "Failed trying to connect with proxy"

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdp;

    .line 585
    .line 586
    const/4 v2, 0x0

    .line 587
    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 588
    .line 589
    .line 590
    throw v1
.end method

.method static bridge synthetic zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzC(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzs:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzD()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzd:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzE(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/SocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzx:Lcom/google/android/libraries/places/internal/zzbse;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzw:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/libraries/places/internal/zzbsf;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbjh;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbaf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzP:Lcom/google/android/libraries/places/internal/zzbaf;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzG:Ljava/net/Socket;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zzS(Lcom/google/android/libraries/places/internal/zzbsf;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzad()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, -0x1

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    add-long/2addr v1, v3

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzb(J)B

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    const-wide v1, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzj(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "\\n not found: "

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method private final zzX()Ljava/lang/Throwable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdp;

    .line 10
    .line 11
    invoke-direct {v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v3

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 19
    .line 20
    const-string v3, "Connection closed"

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdp;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v3

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method private final zzY(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbkh;->zzc()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbef;->zzq()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private final zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbkh;->zzb()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbef;->zzq()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private final zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    .line 11
    .line 12
    invoke-interface {v1, p3}, Lcom/google/android/libraries/places/internal/zzbmk;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 30
    .line 31
    new-array v4, v2, [B

    .line 32
    .line 33
    invoke-virtual {v3, v2, p2, v4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-le v4, p1, :cond_2

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/google/android/libraries/places/internal/zzbry;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbfs;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 84
    .line 85
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 86
    .line 87
    invoke-direct {v6}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p3, v5, v2, v6}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/google/android/libraries/places/internal/zzbry;

    .line 98
    .line 99
    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Lcom/google/android/libraries/places/internal/zzbry;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbfs;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 126
    .line 127
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 128
    .line 129
    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p3, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    .line 145
    .line 146
    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw p1
.end method

.method private final zzab(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzG()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "StreamId already assigned"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbrx;->zzN(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzx()Lcom/google/android/libraries/places/internal/zzbcj;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    .line 48
    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzx()Lcom/google/android/libraries/places/internal/zzbcj;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzg()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzI()Z

    .line 67
    .line 68
    .line 69
    :goto_2
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 70
    .line 71
    const v0, 0x7ffffffd

    .line 72
    .line 73
    .line 74
    if-lt p1, v0, :cond_3

    .line 75
    .line 76
    const p1, 0x7fffffff

    .line 77
    .line 78
    .line 79
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 80
    .line 81
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 82
    .line 83
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 84
    .line 85
    const-string v2, "Stream ids exhausted"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    add-int/lit8 p1, p1, 0x2

    .line 96
    .line 97
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 98
    .line 99
    return-void
.end method

.method private final zzac()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzC:Z

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzC:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbkh;->zzd()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzX()Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbjh;->zzb(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    .line 49
    .line 50
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 57
    .line 58
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    new-array v3, v2, [B

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbrk;->close()V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_0
    return-void
.end method

.method private final zzad()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbry;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzab(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzw:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzM:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    return-object p0
.end method

.method static zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 13
    .line 14
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Unknown http2 error code: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzx:Lcom/google/android/libraries/places/internal/zzbse;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzx(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzL:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    .line 6
    .line 7
    const-string v2, "logId"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbap;->zza()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    .line 14
    .line 15
    .line 16
    const-string v1, "address"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method final zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/android/libraries/places/internal/zzbry;

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    iget-object p5, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 21
    .line 22
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 23
    .line 24
    invoke-virtual {p5, p1, v2}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p6, :cond_1

    .line 37
    .line 38
    new-instance p6, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 39
    .line 40
    invoke-direct {p6}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, p2, p3, p4, p6}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzad()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method final zzQ(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final zzR(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    .line 28
    .line 29
    if-lt v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzab(Lcom/google/android/libraries/places/internal/zzbry;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method final zzT()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method final zzU(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr p1, v1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    return v2

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public final zzV()[Lcom/google/android/libraries/places/internal/zzbsq;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbsq;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/google/android/libraries/places/internal/zzbry;

    .line 34
    .line 35
    add-int/lit8 v5, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzH()Lcom/google/android/libraries/places/internal/zzbsq;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v1, v3

    .line 46
    .line 47
    move v3, v5

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-object v1

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    const-string v0, "method"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    move-object/from16 v1, p4

    .line 15
    .line 16
    invoke-static {v1, v0, v3}, Lcom/google/android/libraries/places/internal/zzbqo;->zza([Lcom/google/android/libraries/places/internal/zzayx;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzbqo;

    .line 17
    .line 18
    .line 19
    move-result-object v12

    .line 20
    iget-object v14, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v14

    .line 23
    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbry;

    .line 24
    .line 25
    iget-object v4, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 26
    .line 27
    iget-object v6, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    .line 28
    .line 29
    iget-object v7, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 30
    .line 31
    iget v8, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzv:I

    .line 32
    .line 33
    iget v9, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    .line 34
    .line 35
    iget-object v10, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v11, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v13, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzN:Lcom/google/android/libraries/places/internal/zzbqz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    move-object/from16 v2, p1

    .line 45
    .line 46
    move-object/from16 v3, p2

    .line 47
    .line 48
    move-object/from16 v5, p0

    .line 49
    .line 50
    move-object/from16 v17, v14

    .line 51
    .line 52
    move-object/from16 v14, p3

    .line 53
    .line 54
    move/from16 v15, v16

    .line 55
    .line 56
    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/google/android/libraries/places/internal/zzbry;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzbrk;Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbsu;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzayj;Z)V

    .line 57
    .line 58
    .line 59
    monitor-exit v17

    .line 60
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object/from16 v17, v14

    .line 65
    .line 66
    :goto_0
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzbmk;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzi()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 4
    .line 5
    const/16 v0, 0x2710

    .line 6
    .line 7
    invoke-static {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzc(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)Lcom/google/android/libraries/places/internal/zzbri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbwh;->zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzd(Lcom/google/android/libraries/places/internal/zzbwc;Z)Lcom/google/android/libraries/places/internal/zzbts;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbrf;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzbrf;-><init>(Lcom/google/android/libraries/places/internal/zzbri;Lcom/google/android/libraries/places/internal/zzbts;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbrk;

    .line 31
    .line 32
    invoke-direct {v3, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrk;-><init>(Lcom/google/android/libraries/places/internal/zzbrj;Lcom/google/android/libraries/places/internal/zzbts;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbsu;

    .line 38
    .line 39
    invoke-direct {v1, p0, v3}, Lcom/google/android/libraries/places/internal/zzbsu;-><init>(Lcom/google/android/libraries/places/internal/zzbsr;Lcom/google/android/libraries/places/internal/zzbts;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    .line 43
    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 51
    .line 52
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbsc;

    .line 53
    .line 54
    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzbsc;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/libraries/places/internal/zzbri;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zze()V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbue;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbue;-><init>()V

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    .line 74
    .line 75
    const/4 v3, 0x7

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/libraries/places/internal/zzbue;->zze(III)Lcom/google/android/libraries/places/internal/zzbue;

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzi(Lcom/google/android/libraries/places/internal/zzbue;)V

    .line 83
    .line 84
    .line 85
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 90
    .line 91
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsd;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbsd;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    return-object p1

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :catchall_2
    move-exception p1

    .line 110
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    throw p1
.end method

.method final zzr(I)Lcom/google/android/libraries/places/internal/zzbry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbry;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method final zzy()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0
.end method
