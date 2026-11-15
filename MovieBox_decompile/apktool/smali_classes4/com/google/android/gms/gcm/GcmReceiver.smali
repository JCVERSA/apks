.class public Lcom/google/android/gms/gcm/GcmReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "source.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static zzr:Z = false

.field private static zzs:Lcom/google/android/gms/iid/zzk;

.field private static zzt:Lcom/google/android/gms/iid/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzd(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2

    .line 1
    const-string v0, "GcmReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/iid/zzk;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/iid/zzk;->zzd(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return v1
.end method

.method private final declared-synchronized zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/iid/zzk;
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzt:Lcom/google/android/gms/iid/zzk;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/iid/zzk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/iid/zzk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzt:Lcom/google/android/gms/iid/zzk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/gcm/GcmReceiver;->zzt:Lcom/google/android/gms/iid/zzk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzs:Lcom/google/android/gms/iid/zzk;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lcom/google/android/gms/iid/zzk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/iid/zzk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzs:Lcom/google/android/gms/iid/zzk;

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/gcm/GcmReceiver;->zzs:Lcom/google/android/gms/iid/zzk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static zze(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 5

    .line 1
    const-string v0, "GcmReceiver"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_5

    .line 35
    .line 36
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v2, "."

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    const-string v2, "Restricting intent to a specific service: "

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_1
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    add-int/lit8 v3, v3, 0x5e

    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    add-int/2addr v3, v4

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const-string v3, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, "/"

    .line 139
    .line 140
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :goto_2
    const-string v1, "Failed to resolve target intent service, skipping classname enforcement"

    .line 155
    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :goto_3
    :try_start_0
    const-string v1, "android.permission.WAKE_LOCK"

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_7

    .line 166
    .line 167
    invoke-static {p0, p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    goto :goto_4

    .line 172
    :catch_0
    move-exception p0

    .line 173
    goto :goto_5

    .line 174
    :catch_1
    move-exception p0

    .line 175
    goto :goto_6

    .line 176
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    :goto_4
    if-nez p0, :cond_8

    .line 181
    .line 182
    const-string p0, "Error while delivering the message: ServiceIntent not found."

    .line 183
    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    const/16 p0, 0x194

    .line 188
    .line 189
    return p0

    .line 190
    :cond_8
    const/4 p0, -0x1

    .line 191
    return p0

    .line 192
    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    add-int/lit8 p1, p1, 0x2d

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const-string p1, "Failed to start service while in background: "

    .line 208
    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    const/16 p0, 0x192

    .line 223
    .line 224
    return p0

    .line 225
    :goto_6
    const-string p1, "Error while delivering the message to the serviceIntent"

    .line 226
    .line 227
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .line 229
    .line 230
    const/16 p0, 0x191

    .line 231
    .line 232
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "GcmReceiver"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v0, "from"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "google.com/iid"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "com.google.android.gms.iid.InstanceID"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string v0, "gcm.rawData64"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string v3, "rawData"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/16 v0, 0x1f4

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 81
    .line 82
    const/16 v3, 0x1a

    .line 83
    .line 84
    if-lt v0, v3, :cond_3

    .line 85
    .line 86
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move v0, v2

    .line 89
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/high16 v4, 0x10000000

    .line 94
    .line 95
    and-int/2addr v3, v4

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    move v2, v1

    .line 99
    :cond_4
    if-eqz v0, :cond_5

    .line 100
    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zzd(Landroid/content/Context;Landroid/content/Intent;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zze(Landroid/content/Context;Landroid/content/Intent;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zze(Landroid/content/Context;Landroid/content/Intent;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    const/16 v1, 0x192

    .line 136
    .line 137
    if-ne v0, v1, :cond_7

    .line 138
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zzd(Landroid/content/Context;Landroid/content/Intent;)I

    .line 140
    .line 141
    .line 142
    const/16 p1, 0x193

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    move p1, v0

    .line 146
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_8

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    return-void
.end method
