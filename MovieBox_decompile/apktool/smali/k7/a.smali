.class public abstract Lk7/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static A:Z

.field private static B:[Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:I

.field private static R:Z

.field private static S:Ljava/lang/String;

.field private static T:I

.field private static U:Z

.field private static V:I

.field private static W:I

.field private static X:Z

.field private static final Y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final Z:Landroid/os/Bundle;

.field private static final a:Z

.field private static a0:Ljava/lang/String;

.field private static b:Landroid/content/Intent;

.field private static b0:Ljava/lang/String;

.field private static c:Landroid/content/BroadcastReceiver;

.field private static volatile c0:Ljava/lang/Boolean;

.field private static d:I

.field private static volatile d0:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static final g:[Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static final l:[Ljava/lang/String;

.field private static m:I

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:Z

.field private static u:I

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const-string v0, "anti_fraud_log"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lk7/a;->a:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lk7/a;->b:Landroid/content/Intent;

    .line 12
    .line 13
    sput-object v0, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    sput v0, Lk7/a;->d:I

    .line 17
    .line 18
    sput v0, Lk7/a;->e:I

    .line 19
    .line 20
    sput v0, Lk7/a;->f:I

    .line 21
    .line 22
    const-string v17, "/system/bin/conbb"

    .line 23
    .line 24
    const-string v18, "/system/xbin/conbb"

    .line 25
    .line 26
    const-string v1, "/su"

    .line 27
    .line 28
    const-string v2, "/su/bin/su"

    .line 29
    .line 30
    const-string v3, "/sbin/su"

    .line 31
    .line 32
    const-string v4, "/data/local/xbin/su"

    .line 33
    .line 34
    const-string v5, "/data/local/bin/su"

    .line 35
    .line 36
    const-string v6, "/data/local/su"

    .line 37
    .line 38
    const-string v7, "/system/xbin/su"

    .line 39
    .line 40
    const-string v8, "/system/bin/su"

    .line 41
    .line 42
    const-string v9, "/system/sd/xbin/su"

    .line 43
    .line 44
    const-string v10, "/system/bin/failsafe/su"

    .line 45
    .line 46
    const-string v11, "/system/bin/cufsdosck"

    .line 47
    .line 48
    const-string v12, "/system/xbin/cufsdosck"

    .line 49
    .line 50
    const-string v13, "/system/bin/cufsmgr"

    .line 51
    .line 52
    const-string v14, "/system/xbin/cufsmgr"

    .line 53
    .line 54
    const-string v15, "/system/bin/cufaevdd"

    .line 55
    .line 56
    const-string v16, "/system/xbin/cufaevdd"

    .line 57
    .line 58
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sput-object v1, Lk7/a;->g:[Ljava/lang/String;

    .line 63
    .line 64
    sput v0, Lk7/a;->h:I

    .line 65
    .line 66
    sput v0, Lk7/a;->i:I

    .line 67
    .line 68
    sput v0, Lk7/a;->j:I

    .line 69
    .line 70
    sput v0, Lk7/a;->k:I

    .line 71
    .line 72
    const-string v8, "com.dual.dualgenius"

    .line 73
    .line 74
    const-string v9, "com.jiubang.commerce.gomultiple"

    .line 75
    .line 76
    const-string v2, "com.bly.dkplat"

    .line 77
    .line 78
    const-string v3, "com.by.chaos"

    .line 79
    .line 80
    const-string v4, "com.lbe.parallel"

    .line 81
    .line 82
    const-string v5, "com.excelliance.dualaid"

    .line 83
    .line 84
    const-string v6, "com.lody.virtual"

    .line 85
    .line 86
    const-string v7, "com.qihoo.magic"

    .line 87
    .line 88
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sput-object v1, Lk7/a;->l:[Ljava/lang/String;

    .line 93
    .line 94
    sput v0, Lk7/a;->m:I

    .line 95
    .line 96
    const-string v1, "/dev/socket/qemud"

    .line 97
    .line 98
    const-string v2, "/dev/qemu_pipe"

    .line 99
    .line 100
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sput-object v1, Lk7/a;->n:[Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, "goldfish"

    .line 107
    .line 108
    filled-new-array {v1}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sput-object v1, Lk7/a;->o:[Ljava/lang/String;

    .line 113
    .line 114
    const-string v1, "/sys/qemu_trace"

    .line 115
    .line 116
    const-string v2, "/system/bin/qemu-props"

    .line 117
    .line 118
    const-string v3, "/system/lib/libc_malloc_debug_qemu.so"

    .line 119
    .line 120
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    sput-object v1, Lk7/a;->p:[Ljava/lang/String;

    .line 125
    .line 126
    sput v0, Lk7/a;->q:I

    .line 127
    .line 128
    sput v0, Lk7/a;->r:I

    .line 129
    .line 130
    sput v0, Lk7/a;->s:I

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    sput-boolean v1, Lk7/a;->t:Z

    .line 134
    .line 135
    sput v0, Lk7/a;->u:I

    .line 136
    .line 137
    const-string v0, "bluetooth_name"

    .line 138
    .line 139
    sput-object v0, Lk7/a;->v:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, "base_band_version"

    .line 142
    .line 143
    sput-object v0, Lk7/a;->w:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "boot_time"

    .line 146
    .line 147
    sput-object v0, Lk7/a;->x:Ljava/lang/String;

    .line 148
    .line 149
    const-string v0, "phone_name"

    .line 150
    .line 151
    sput-object v0, Lk7/a;->y:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "ssid"

    .line 154
    .line 155
    sput-object v0, Lk7/a;->z:Ljava/lang/String;

    .line 156
    .line 157
    sput-boolean v1, Lk7/a;->A:Z

    .line 158
    .line 159
    new-array v0, v1, [Ljava/lang/String;

    .line 160
    .line 161
    sput-object v0, Lk7/a;->B:[Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, "screen_brightness"

    .line 164
    .line 165
    sput-object v0, Lk7/a;->C:Ljava/lang/String;

    .line 166
    .line 167
    const-string v0, "battery_percent"

    .line 168
    .line 169
    sput-object v0, Lk7/a;->D:Ljava/lang/String;

    .line 170
    .line 171
    const-string v0, "charge_type"

    .line 172
    .line 173
    sput-object v0, Lk7/a;->E:Ljava/lang/String;

    .line 174
    .line 175
    const-string v0, "rom_name"

    .line 176
    .line 177
    sput-object v0, Lk7/a;->F:Ljava/lang/String;

    .line 178
    .line 179
    const-string v0, "rom_build_time"

    .line 180
    .line 181
    sput-object v0, Lk7/a;->G:Ljava/lang/String;

    .line 182
    .line 183
    const-string v0, "os_api"

    .line 184
    .line 185
    sput-object v0, Lk7/a;->H:Ljava/lang/String;

    .line 186
    .line 187
    const-string v0, "build_id"

    .line 188
    .line 189
    sput-object v0, Lk7/a;->I:Ljava/lang/String;

    .line 190
    .line 191
    const-string v0, "cpu_cores"

    .line 192
    .line 193
    sput-object v0, Lk7/a;->J:Ljava/lang/String;

    .line 194
    .line 195
    const-string v0, "cpu_cores_cnt"

    .line 196
    .line 197
    sput-object v0, Lk7/a;->K:Ljava/lang/String;

    .line 198
    .line 199
    const-string v0, "cpu_abi"

    .line 200
    .line 201
    sput-object v0, Lk7/a;->L:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "cpu_kernel"

    .line 204
    .line 205
    sput-object v0, Lk7/a;->M:Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "board"

    .line 208
    .line 209
    sput-object v0, Lk7/a;->N:Ljava/lang/String;

    .line 210
    .line 211
    const-string v0, "hard_ware"

    .line 212
    .line 213
    sput-object v0, Lk7/a;->O:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "finger_print"

    .line 216
    .line 217
    sput-object v0, Lk7/a;->P:Ljava/lang/String;

    .line 218
    .line 219
    sput v1, Lk7/a;->Q:I

    .line 220
    .line 221
    sput-boolean v1, Lk7/a;->R:Z

    .line 222
    .line 223
    const-string v0, "phone_height"

    .line 224
    .line 225
    sput-object v0, Lk7/a;->S:Ljava/lang/String;

    .line 226
    .line 227
    sput v1, Lk7/a;->T:I

    .line 228
    .line 229
    sput-boolean v1, Lk7/a;->U:Z

    .line 230
    .line 231
    sput v1, Lk7/a;->V:I

    .line 232
    .line 233
    sput v1, Lk7/a;->W:I

    .line 234
    .line 235
    sput-boolean v1, Lk7/a;->X:Z

    .line 236
    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    .line 239
    const/4 v1, 0x1

    .line 240
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 241
    .line 242
    .line 243
    sput-object v0, Lk7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    .line 245
    new-instance v0, Landroid/os/Bundle;

    .line 246
    .line 247
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .line 249
    .line 250
    sput-object v0, Lk7/a;->Z:Landroid/os/Bundle;

    .line 251
    .line 252
    return-void
.end method

.method private static A()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cpu_abi"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->L:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->L:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->L:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->L:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static B()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cpu_cores"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->J:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->J:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->J:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->J:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static C()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v1, "cpu_cores_cnt"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    :try_start_1
    sget-object v0, Lk7/a;->K:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lk7/a;->K:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {}, Lk7/a;->E()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    div-int/lit16 v1, v1, 0x3e8

    .line 38
    .line 39
    invoke-static {v0, v1}, Lk7/a;->g(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lk7/a;->K:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    const-string v1, ""

    .line 51
    .line 52
    sput-object v1, Lk7/a;->K:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    sget-object v0, Lk7/a;->K:Ljava/lang/String;

    .line 62
    .line 63
    return-object v0
.end method

.method private static D()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cpu_kernel"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->M:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->M:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->M:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->M:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->M:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static E()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 3
    .line 4
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_3

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception v3

    .line 38
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_2
    move-exception v2

    .line 43
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_3
    move-exception v1

    .line 52
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 56
    :goto_3
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_4
    return v0
.end method

.method private static F()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1}, Lk7/a;->g0(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string v2, "bluetooth_name"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_1
    sget-object v1, Lk7/a;->v:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lk7/a;->v:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1e

    .line 30
    .line 31
    if-le v1, v2, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 42
    .line 43
    invoke-static {v1, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    sget-object v0, Lk7/a;->v:Ljava/lang/String;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "bluetooth"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move-object v1, v0

    .line 80
    :goto_0
    sput-object v1, Lk7/a;->v:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    sput-object v0, Lk7/a;->v:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    sget-object v0, Lk7/a;->v:Ljava/lang/String;

    .line 93
    .line 94
    return-object v0
.end method

.method private static G()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/os/StatFs;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    mul-long/2addr v4, v2

    .line 46
    const-wide/32 v6, 0x100000

    .line 47
    .line 48
    .line 49
    div-long/2addr v4, v6

    .line 50
    long-to-int v4, v4

    .line 51
    sput v4, Lk7/a;->V:I

    .line 52
    .line 53
    mul-long/2addr v0, v2

    .line 54
    div-long/2addr v0, v6

    .line 55
    long-to-int v0, v0

    .line 56
    sput v0, Lk7/a;->W:I

    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method private static H()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "finger_print"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->P:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->P:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->P:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->P:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->P:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static I()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "hard_ware"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->O:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->O:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->O:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->O:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->O:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static J()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v0, Lk7/a;->R:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget v0, Lk7/a;->Q:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lk7/a;->R:Z

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "camera"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    array-length v1, v0

    .line 48
    if-lez v1, :cond_2

    .line 49
    .line 50
    array-length v0, v0

    .line 51
    sput v0, Lk7/a;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    sget v0, Lk7/a;->Q:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method private static K()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "os_api"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->H:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->H:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->H:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->H:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->H:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static L()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "phone_height"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->S:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->S:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lk7/c;->k()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {}, Lk7/c;->j()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Lk7/a;->g(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lk7/a;->S:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, ""

    .line 35
    .line 36
    sput-object v1, Lk7/a;->S:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object v0, Lk7/a;->S:Ljava/lang/String;

    .line 46
    .line 47
    return-object v0
.end method

.method private static M()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "phone_name"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->y:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->y:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->y:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->y:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static N()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "rom_build_time"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->G:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v1, ""

    .line 23
    .line 24
    sput-object v1, Lk7/a;->G:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lk7/a;->G:Ljava/lang/String;

    .line 34
    .line 35
    return-object v0
.end method

.method private static O()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "rom_name"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->F:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->F:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->F:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->F:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static P()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method private static Q()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v1, "screen_brightness"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    :try_start_1
    sget-object v0, Lk7/a;->C:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lk7/a;->C:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0xff

    .line 38
    .line 39
    invoke-static {v0, v1}, Lk7/a;->g(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lk7/a;->C:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    const-string v1, ""

    .line 51
    .line 52
    sput-object v1, Lk7/a;->C:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    sget-object v0, Lk7/a;->C:Ljava/lang/String;

    .line 62
    .line 63
    return-object v0
.end method

.method private static R()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "ssid"

    .line 4
    .line 5
    sget-object v2, Lk7/a;->z:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lk7/a;->z:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "wifi"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v1, v0

    .line 50
    :goto_0
    sput-object v1, Lk7/a;->z:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    sput-object v0, Lk7/a;->z:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    sget-object v0, Lk7/a;->z:Ljava/lang/String;

    .line 63
    .line 64
    return-object v0
.end method

.method private static S()Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v0, Lk7/a;->X:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget v0, Lk7/a;->V:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lk7/a;->X:Z

    .line 30
    .line 31
    invoke-static {}, Lk7/a;->G()V

    .line 32
    .line 33
    .line 34
    sget v0, Lk7/a;->V:I

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    return-object v0
.end method

.method private static T()Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-boolean v0, Lk7/a;->U:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget v0, Lk7/a;->T:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lk7/a;->U:Z

    .line 28
    .line 29
    const-string v1, "/proc/meminfo"

    .line 30
    .line 31
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 37
    .line 38
    const/16 v3, 0x2000

    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "\\s+"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aget-object v0, v3, v0

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    div-int/lit16 v0, v0, 0x400

    .line 60
    .line 61
    sput v0, Lk7/a;->T:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_2
    move-exception v1

    .line 80
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_3
    move-exception v1

    .line 89
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 93
    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_4
    sget v0, Lk7/a;->T:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method private static U()[Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [Ljava/lang/String;

    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    sget-boolean v0, Lk7/a;->A:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lk7/a;->B:[Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lk7/a;->A:Z

    .line 25
    .line 26
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_6

    .line 41
    .line 42
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 51
    .line 52
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "wifi"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    move v3, v1

    .line 93
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-ge v3, v4, :cond_5

    .line 98
    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v6, 0x4

    .line 110
    if-le v5, v6, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v4}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, [Ljava/lang/String;

    .line 140
    .line 141
    sput-object v0, Lk7/a;->B:[Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    :goto_2
    sget-object v0, Lk7/a;->B:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    return-object v0

    .line 147
    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_4
    sget-object v0, Lk7/a;->B:[Ljava/lang/String;

    .line 155
    .line 156
    return-object v0
.end method

.method private static V()V
    .locals 4

    .line 1
    sget-object v0, Lk7/a;->b:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lk7/a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lk7/a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    const/16 v1, 0x21

    .line 15
    .line 16
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance v3, Landroid/content/IntentFilter;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lk7/a;->b:Landroid/content/Intent;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    new-instance v3, Landroid/content/IntentFilter;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lk7/a;->b:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static W()I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->i:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->i:I

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "accessibility"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {}, Lk7/a;->l0()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v1, 0x200

    .line 44
    .line 45
    :cond_2
    sput v1, Lk7/a;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget v0, Lk7/a;->i:I

    .line 57
    .line 58
    return v0
.end method

.method private static X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "enabled_accessibility_services"

    .line 17
    .line 18
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method private static Y()I
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->h:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->h:I

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "development_settings_enabled"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "adb_enabled"

    .line 48
    .line 49
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v2, v1

    .line 57
    :goto_1
    if-nez v0, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    :cond_4
    const/16 v1, 0x100

    .line 62
    .line 63
    :cond_5
    sput v1, Lk7/a;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    sget v0, Lk7/a;->h:I

    .line 75
    .line 76
    return v0
.end method

.method private static Z()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-static {v0}, Lk7/a;->o0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->e:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->e:I

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v2, "android.hardware.camera.any"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v0, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x10

    .line 43
    .line 44
    :cond_3
    sput v1, Lk7/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    sget v0, Lk7/a;->e:I

    .line 55
    .line 56
    return v0
.end method

.method private static a(II)I
    .locals 0

    .line 1
    or-int/2addr p0, p1

    .line 2
    return p0
.end method

.method private static a0()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method private static b()Z
    .locals 2

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "sdk"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method private static b0()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->o0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-static {}, Lk7/a;->V()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lk7/a;->b:Landroid/content/Intent;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    const-string v3, "status"

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {}, Lk7/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v2, v1, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {}, Lk7/a;->f()V

    .line 44
    .line 45
    .line 46
    return v1
.end method

.method private static c()Z
    .locals 6

    .line 1
    sget-object v0, Lk7/a;->p:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    new-instance v5, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v2
.end method

.method private static c0()I
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->m:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->m:I

    .line 18
    .line 19
    invoke-static {}, Lk7/a;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Lk7/a;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lk7/a;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lk7/a;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/16 v1, 0x2000

    .line 47
    .line 48
    :cond_3
    sput v1, Lk7/a;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    sget v0, Lk7/a;->m:I

    .line 59
    .line 60
    return v0
.end method

.method private static d()Z
    .locals 6

    .line 1
    sget-object v0, Lk7/a;->n:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    new-instance v5, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v2
.end method

.method private static d0()I
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->j:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->j:I

    .line 18
    .line 19
    invoke-static {}, Lk7/a;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Lk7/a;->i()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lk7/a;->k()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/16 v1, 0x400

    .line 41
    .line 42
    :cond_3
    sput v1, Lk7/a;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    sget v0, Lk7/a;->j:I

    .line 53
    .line 54
    return v0
.end method

.method private static e()Z
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/proc/tty/drivers"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x400

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lk7/a;->o:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v4, v1

    .line 44
    move v5, v2

    .line 45
    :goto_0
    if-ge v5, v4, :cond_1

    .line 46
    .line 47
    aget-object v6, v1, v5

    .line 48
    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_4
    return v2
.end method

.method private static e0()I
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->s:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->s:I

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 36
    .line 37
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "No location permission is currently available"

    .line 44
    .line 45
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "location"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/location/LocationManager;

    .line 62
    .line 63
    const-string v1, "gps"

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const/high16 v1, 0x10000

    .line 70
    .line 71
    :goto_0
    sput v1, Lk7/a;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    sget v0, Lk7/a;->s:I

    .line 82
    .line 83
    return v0
.end method

.method private static f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lk7/a;->b:Landroid/content/Intent;

    .line 3
    .line 4
    sget-object v1, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lk7/a;->c:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static f0()I
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-boolean v0, Lk7/a;->t:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    :cond_1
    return v1
.end method

.method public static g(II)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    if-gt p0, v0, :cond_1

    .line 5
    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    shl-int/lit8 p0, p0, 0x10

    .line 10
    .line 11
    xor-int/2addr p0, p1

    .line 12
    return p0

    .line 13
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 14
    return p0
.end method

.method private static g0(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lk7/a;->o()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    add-int/lit8 v3, p0, 0x1

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ""

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v1, "1"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    xor-int/2addr p0, v0

    .line 56
    return p0

    .line 57
    :catch_0
    return v0
.end method

.method private static h(Ljava/lang/Exception;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v0, :cond_4

    .line 10
    .line 11
    aget-object v4, p0, v2

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, "com.android.internal.os.ZygoteInit"

    .line 18
    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-ne v3, v4, :cond_3

    .line 30
    .line 31
    return v6

    .line 32
    :cond_0
    const-string v5, "com.saurik.substrate.MS$2"

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    const-string v5, "invoked"

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    return v6

    .line 57
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v7, "de.robv.android.xposed.XposedBridge"

    .line 62
    .line 63
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    const-string v5, "main"

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    return v6

    .line 82
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    const-string v5, "handleHookedMethod"

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    return v6

    .line 105
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    return v1
.end method

.method public static h0()Z
    .locals 3

    .line 1
    sget-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "is_open_anti_fraud_sp_key"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Ll7/a;->d(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method private static i()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "/proc/"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "/maps"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const-string v5, ".so"

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_1

    .line 56
    .line 57
    const-string v5, ".jar"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    const-string v5, " "

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/2addr v5, v4

    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/String;

    .line 98
    .line 99
    const-string v5, "com.saurik.substrate"

    .line 100
    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    .line 112
    .line 113
    return v4

    .line 114
    :catch_0
    move-exception v0

    .line 115
    goto :goto_6

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    :try_start_5
    const-string v5, "XposedBridge.jar"

    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    .line 128
    .line 129
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 130
    .line 131
    .line 132
    return v4

    .line 133
    :cond_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_9
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_7

    .line 140
    :goto_2
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catchall_2
    move-exception v1

    .line 145
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 149
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_3
    move-exception v1

    .line 154
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_5
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 158
    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_7
    const/4 v0, 0x0

    .line 166
    return v0
.end method

.method private static i0()I
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->k:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->k:I

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Lk7/a;->l:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    move v4, v1

    .line 35
    :goto_0
    if-ge v4, v3, :cond_3

    .line 36
    .line 37
    aget-object v5, v2, v4

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x1000

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    sput v1, Lk7/a;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    sget v0, Lk7/a;->k:I

    .line 64
    .line 65
    return v0
.end method

.method private static j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method private static j0()I
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method private static k()Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 2
    .line 3
    const-string v1, "findhook"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lk7/a;->h(Ljava/lang/Exception;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private static k0()I
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    sget v0, Lk7/a;->f:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    sput v1, Lk7/a;->f:I

    .line 17
    .line 18
    sget-object v0, Lk7/a;->g:[Ljava/lang/String;

    .line 19
    .line 20
    array-length v2, v0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    if-ge v3, v2, :cond_3

    .line 23
    .line 24
    aget-object v4, v0, v3

    .line 25
    .line 26
    new-instance v5, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move v0, v1

    .line 45
    :goto_1
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const-string v3, "test-keys"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    :cond_4
    if-eqz v0, :cond_6

    .line 58
    .line 59
    :cond_5
    const/16 v1, 0x40

    .line 60
    .line 61
    :cond_6
    sput v1, Lk7/a;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    sget v0, Lk7/a;->f:I

    .line 72
    .line 73
    return v0
.end method

.method private static l()V
    .locals 3

    .line 1
    sget-object v0, Lk7/a;->Z:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "bbv"

    .line 4
    .line 5
    invoke-static {}, Lk7/a;->r()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "bt"

    .line 13
    .line 14
    invoke-static {}, Lk7/a;->w()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "phn"

    .line 22
    .line 23
    invoke-static {}, Lk7/a;->M()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "si"

    .line 31
    .line 32
    invoke-static {}, Lk7/a;->R()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "bl"

    .line 40
    .line 41
    invoke-static {}, Lk7/a;->U()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "sb"

    .line 49
    .line 50
    invoke-static {}, Lk7/a;->Q()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "bpc"

    .line 58
    .line 59
    invoke-static {}, Lk7/a;->t()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "ct"

    .line 67
    .line 68
    invoke-static {}, Lk7/a;->y()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "rn"

    .line 76
    .line 77
    invoke-static {}, Lk7/a;->O()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "rv"

    .line 85
    .line 86
    invoke-static {}, Lk7/a;->P()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "rb"

    .line 94
    .line 95
    invoke-static {}, Lk7/a;->N()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "oa"

    .line 103
    .line 104
    invoke-static {}, Lk7/a;->K()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "bi"

    .line 112
    .line 113
    invoke-static {}, Lk7/a;->x()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "cc"

    .line 121
    .line 122
    invoke-static {}, Lk7/a;->B()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "ccf"

    .line 130
    .line 131
    invoke-static {}, Lk7/a;->C()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "ca"

    .line 139
    .line 140
    invoke-static {}, Lk7/a;->A()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "ck"

    .line 148
    .line 149
    invoke-static {}, Lk7/a;->D()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v1, "bd"

    .line 157
    .line 158
    invoke-static {}, Lk7/a;->v()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "hw"

    .line 166
    .line 167
    invoke-static {}, Lk7/a;->I()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "fp"

    .line 175
    .line 176
    invoke-static {}, Lk7/a;->H()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v1, "noc"

    .line 184
    .line 185
    invoke-static {}, Lk7/a;->J()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v1, "ps"

    .line 193
    .line 194
    invoke-static {}, Lk7/a;->L()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v1, "tm"

    .line 202
    .line 203
    invoke-static {}, Lk7/a;->T()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "td"

    .line 211
    .line 212
    invoke-static {}, Lk7/a;->S()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v1, "am"

    .line 220
    .line 221
    invoke-static {}, Lk7/a;->q()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v1, "ad"

    .line 229
    .line 230
    invoke-static {}, Lk7/a;->p()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lk7/a;->z()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string v2, "cp"

    .line 246
    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method private static l0()Z
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.accessibilityservice.AccessibilityService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.accessibilityservice.category.FEEDBACK_SPOKEN"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v3, 0x1a

    .line 36
    .line 37
    if-lt v1, v3, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 65
    .line 66
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, "/"

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 77
    .line 78
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v3, v1}, Lk7/a;->X(Landroid/content/Context;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    or-int/2addr v2, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "activity"

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/app/ActivityManager;

    .line 109
    .line 110
    const v4, 0x7fffffff

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 132
    .line 133
    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 134
    .line 135
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 158
    .line 159
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 160
    .line 161
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    :cond_4
    return v2
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lk7/a;->b0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lk7/a;->b0:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lk7/a;->h0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "=========== getAntiFraudLiteString server close ==========="

    .line 21
    .line 22
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    sget-object v0, Lk7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "phn"

    .line 41
    .line 42
    invoke-static {}, Lk7/a;->M()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "bt"

    .line 50
    .line 51
    invoke-static {}, Lk7/a;->w()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "si"

    .line 59
    .line 60
    invoke-static {}, Lk7/a;->R()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "bl"

    .line 68
    .line 69
    invoke-static {}, Lk7/a;->U()[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v2, "sb"

    .line 77
    .line 78
    invoke-static {}, Lk7/a;->Q()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "bpc"

    .line 86
    .line 87
    invoke-static {}, Lk7/a;->t()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v2, "rn"

    .line 95
    .line 96
    invoke-static {}, Lk7/a;->O()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v2, "rv"

    .line 104
    .line 105
    invoke-static {}, Lk7/a;->P()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "rb"

    .line 113
    .line 114
    invoke-static {}, Lk7/a;->N()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "oa"

    .line 122
    .line 123
    invoke-static {}, Lk7/a;->K()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "cp"

    .line 131
    .line 132
    invoke-static {}, Lk7/a;->z()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lk7/a;->n(Landroid/os/Bundle;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lk7/a;->b0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    sget-object v0, Lk7/a;->b0:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    sput-object v1, Lk7/a;->b0:Ljava/lang/String;

    .line 167
    .line 168
    :cond_3
    sget-object v0, Lk7/a;->b0:Ljava/lang/String;

    .line 169
    .line 170
    return-object v0
.end method

.method private static m0()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {v0}, Lk7/a;->o0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->d:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 22
    .line 23
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    sput v1, Lk7/a;->d:I

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "phone"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-gtz v0, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    const/4 v0, 0x4

    .line 65
    sput v0, Lk7/a;->d:I

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 69
    sput v0, Lk7/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    sget v0, Lk7/a;->d:I

    .line 80
    .line 81
    return v0
.end method

.method private static n(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "\u0002"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "bn"

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lk7/a;->F()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    instance-of v6, v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    const-string v7, "\u0001"

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    :try_start_1
    move-object v6, v5

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    const-string v5, "\"\""

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    instance-of v6, v5, Ljava/lang/Float;

    .line 86
    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    instance-of v6, v5, [F

    .line 103
    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    check-cast v5, [F

    .line 116
    .line 117
    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    instance-of v6, v5, [Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v6, :cond_1

    .line 128
    .line 129
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    check-cast v5, [Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method

.method public static n0()Z
    .locals 4

    .line 1
    sget v0, Lk7/a;->u:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    :cond_0
    return v1

    .line 11
    :cond_1
    invoke-static {}, Lk7/a;->o()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v3, "0"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sput v2, Lk7/a;->u:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/16 v0, 0x1b

    .line 27
    .line 28
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lk7/a;->u:I

    .line 33
    .line 34
    :goto_0
    sget v0, Lk7/a;->u:I

    .line 35
    .line 36
    if-ne v0, v2, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_3
    return v1
.end method

.method public static o()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "anti_fraud_sub_function_sp_key"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "0"

    .line 32
    .line 33
    sput-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    sget-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static o0(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lk7/a;->o()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "1"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v1, "01"

    .line 15
    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    add-int/lit8 v2, p0, 0x2

    .line 30
    .line 31
    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "10"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    xor-int/2addr p0, v0

    .line 42
    return p0

    .line 43
    :catch_0
    return v0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lk7/a;->X:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lk7/a;->W:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget v0, Lk7/a;->W:I

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    return-object v0
.end method

.method private static p0()I
    .locals 4

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->r:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->r:I

    .line 18
    .line 19
    const-string v0, "http.proxyHost"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "http.proxyPort"

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v3, "-1"

    .line 35
    .line 36
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    if-eq v3, v2, :cond_3

    .line 47
    .line 48
    const v1, 0x8000

    .line 49
    .line 50
    .line 51
    :cond_3
    sput v1, Lk7/a;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    sget v0, Lk7/a;->r:I

    .line 63
    .line 64
    return v0
.end method

.method private static q()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 22
    .line 23
    const-wide/32 v2, 0x100000

    .line 24
    .line 25
    .line 26
    div-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    return-object v0
.end method

.method private static q0()I
    .locals 5

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget v0, Lk7/a;->q:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    sput v1, Lk7/a;->q:I

    .line 18
    .line 19
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/net/NetworkInterface;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v3, "tun0"

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    const-string v3, "ppp0"

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    :goto_1
    const/16 v1, 0x4000

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    :goto_2
    const-string v2, "The network is disconnected."

    .line 93
    .line 94
    invoke-static {v2}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    :goto_3
    sput v1, Lk7/a;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :goto_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_5
    sget v0, Lk7/a;->q:I

    .line 109
    .line 110
    return v0
.end method

.method private static r()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "base_band_version"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->w:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->w:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->w:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->w:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lk7/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "anti_fraud_log"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static s()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "batterymanager"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/BatteryManager;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public static s0()V
    .locals 2

    .line 1
    invoke-static {}, Lk7/a;->h0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "preloadAntiFraud --> cloud close"

    .line 8
    .line 9
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0x1a

    .line 14
    .line 15
    :try_start_0
    invoke-static {v0}, Lk7/a;->g0(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lk7/e;->q()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-static {}, Lk7/a;->l()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lk7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "preloadAntiFraud --> Initialize set tag IS_PRELOAD_LOADING = false"

    .line 37
    .line 38
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    return-void
.end method

.method private static t()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "battery_percent"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->D:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->D:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lk7/a;->s()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {}, Lk7/a;->u()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Lk7/a;->g(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lk7/a;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, ""

    .line 35
    .line 36
    sput-object v1, Lk7/a;->D:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object v0, Lk7/a;->D:Ljava/lang/String;

    .line 46
    .line 47
    return-object v0
.end method

.method public static t0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cloud antiFraudSubfunctionControl = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lk7/a;->d0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sput-object p0, Lk7/a;->d0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "anti_fraud_sub_function_sp_key"

    .line 45
    .line 46
    sget-object v1, Lk7/a;->d0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static u()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static u0(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cloud isOpenAntiFraud = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, p0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lk7/a;->c0:Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lk7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "saveAntiFraudSwitch --> non preload"

    .line 51
    .line 52
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lk7/a;->s0()V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "is_open_anti_fraud_sp_key"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p0}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "board"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->N:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->N:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->N:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->N:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->N:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public static v0(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lk7/a;->a0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "fraud_data_set"

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Lk7/a;->a0:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {}, Lk7/a;->h0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const-string p0, "======= setAntiFraudFullString serve close ========="

    .line 29
    .line 30
    invoke-static {p0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :try_start_0
    sget-object v1, Lk7/a;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lk7/e;->m()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sget-object v3, Lk7/a;->Z:Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-static {}, Lk7/e;->k()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Lk7/a;->n(Landroid/os/Bundle;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 69
    .line 70
    .line 71
    sput-object v4, Lk7/a;->a0:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_0
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    return-void
.end method

.method private static w()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "boot_time"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->x:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x3e8

    .line 24
    .line 25
    div-long/2addr v0, v2

    .line 26
    long-to-int v0, v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lk7/a;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, ""

    .line 36
    .line 37
    sput-object v1, Lk7/a;->x:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-object v0, Lk7/a;->x:Ljava/lang/String;

    .line 47
    .line 48
    return-object v0
.end method

.method private static w0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    return-object p0
.end method

.method private static x()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "build_id"

    .line 2
    .line 3
    sget-object v1, Lk7/a;->I:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lk7/a;->I:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lk7/a;->w0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lk7/a;->I:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    sput-object v1, Lk7/a;->I:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lk7/a;->I:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private static y()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1}, Lk7/a;->g0(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string v2, "charge_type"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    :try_start_1
    sget-object v1, Lk7/a;->E:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lk7/a;->E:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lk7/a;->V()V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lk7/a;->b:Landroid/content/Intent;

    .line 31
    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    const-string v2, "plugged"

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    const-string v1, "1"

    .line 45
    .line 46
    sput-object v1, Lk7/a;->E:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x2

    .line 50
    if-ne v1, v2, :cond_3

    .line 51
    .line 52
    const-string v1, "2"

    .line 53
    .line 54
    sput-object v1, Lk7/a;->E:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v2, 0x4

    .line 58
    if-ne v1, v2, :cond_4

    .line 59
    .line 60
    const-string v1, "3"

    .line 61
    .line 62
    sput-object v1, Lk7/a;->E:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    sput-object v0, Lk7/a;->E:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    sput-object v0, Lk7/a;->E:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    sget-object v0, Lk7/a;->E:Ljava/lang/String;

    .line 78
    .line 79
    return-object v0
.end method

.method private static z()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lk7/a;->b0()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lk7/a;->m0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {}, Lk7/a;->Z()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Lk7/a;->k0()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {}, Lk7/a;->a0()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {}, Lk7/a;->Y()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {}, Lk7/a;->W()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {}, Lk7/a;->d0()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {}, Lk7/a;->j0()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {}, Lk7/a;->i0()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {}, Lk7/a;->c0()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-static {}, Lk7/a;->q0()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {}, Lk7/a;->p0()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {}, Lk7/a;->e0()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {}, Lk7/a;->f0()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v0, v1}, Lk7/a;->a(II)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    return v0
.end method
