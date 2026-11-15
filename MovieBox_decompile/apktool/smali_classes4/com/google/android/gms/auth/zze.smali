.class public final Lcom/google/android/gms/auth/zze;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "account_capability_api"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/auth/zze;->zza:Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 13
    .line 14
    const-string v4, "account_data_service"

    .line 15
    .line 16
    const-wide/16 v5, 0x6

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/android/gms/auth/zze;->zzb:Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 24
    .line 25
    const-string v5, "account_data_service_legacy"

    .line 26
    .line 27
    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/google/android/gms/auth/zze;->zzc:Lcom/google/android/gms/common/Feature;

    .line 31
    .line 32
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 33
    .line 34
    const-string v6, "account_data_service_token"

    .line 35
    .line 36
    const-wide/16 v7, 0x8

    .line 37
    .line 38
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lcom/google/android/gms/auth/zze;->zzd:Lcom/google/android/gms/common/Feature;

    .line 42
    .line 43
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 44
    .line 45
    const-string v7, "account_data_service_visibility"

    .line 46
    .line 47
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    sput-object v6, Lcom/google/android/gms/auth/zze;->zze:Lcom/google/android/gms/common/Feature;

    .line 51
    .line 52
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 53
    .line 54
    const-string v8, "config_sync"

    .line 55
    .line 56
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/google/android/gms/auth/zze;->zzf:Lcom/google/android/gms/common/Feature;

    .line 60
    .line 61
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 62
    .line 63
    const-string v9, "device_account_api"

    .line 64
    .line 65
    invoke-direct {v8, v9, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    sput-object v8, Lcom/google/android/gms/auth/zze;->zzg:Lcom/google/android/gms/common/Feature;

    .line 69
    .line 70
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 71
    .line 72
    const-string v10, "gaiaid_primary_email_api"

    .line 73
    .line 74
    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    sput-object v9, Lcom/google/android/gms/auth/zze;->zzh:Lcom/google/android/gms/common/Feature;

    .line 78
    .line 79
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    const-string v11, "google_auth_service_accounts"

    .line 82
    .line 83
    const-wide/16 v12, 0x2

    .line 84
    .line 85
    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    sput-object v10, Lcom/google/android/gms/auth/zze;->zzi:Lcom/google/android/gms/common/Feature;

    .line 89
    .line 90
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 91
    .line 92
    const-string v12, "google_auth_service_token"

    .line 93
    .line 94
    const-wide/16 v13, 0x3

    .line 95
    .line 96
    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    sput-object v11, Lcom/google/android/gms/auth/zze;->zzj:Lcom/google/android/gms/common/Feature;

    .line 100
    .line 101
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 102
    .line 103
    const-string v13, "hub_mode_api"

    .line 104
    .line 105
    invoke-direct {v12, v13, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 106
    .line 107
    .line 108
    sput-object v12, Lcom/google/android/gms/auth/zze;->zzk:Lcom/google/android/gms/common/Feature;

    .line 109
    .line 110
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 111
    .line 112
    const-string v14, "work_account_client_is_whitelisted"

    .line 113
    .line 114
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    sput-object v13, Lcom/google/android/gms/auth/zze;->zzl:Lcom/google/android/gms/common/Feature;

    .line 118
    .line 119
    const/16 v2, 0xc

    .line 120
    .line 121
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    .line 122
    .line 123
    const/4 v3, 0x0

    .line 124
    aput-object v0, v2, v3

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    aput-object v1, v2, v0

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    aput-object v4, v2, v0

    .line 131
    .line 132
    const/4 v0, 0x3

    .line 133
    aput-object v5, v2, v0

    .line 134
    .line 135
    const/4 v0, 0x4

    .line 136
    aput-object v6, v2, v0

    .line 137
    .line 138
    const/4 v0, 0x5

    .line 139
    aput-object v7, v2, v0

    .line 140
    .line 141
    const/4 v0, 0x6

    .line 142
    aput-object v8, v2, v0

    .line 143
    .line 144
    const/4 v0, 0x7

    .line 145
    aput-object v9, v2, v0

    .line 146
    .line 147
    const/16 v0, 0x8

    .line 148
    .line 149
    aput-object v10, v2, v0

    .line 150
    .line 151
    const/16 v0, 0x9

    .line 152
    .line 153
    aput-object v11, v2, v0

    .line 154
    .line 155
    const/16 v0, 0xa

    .line 156
    .line 157
    aput-object v12, v2, v0

    .line 158
    .line 159
    const/16 v0, 0xb

    .line 160
    .line 161
    aput-object v13, v2, v0

    .line 162
    .line 163
    sput-object v2, Lcom/google/android/gms/auth/zze;->zzm:[Lcom/google/android/gms/common/Feature;

    .line 164
    .line 165
    return-void
.end method
