.class public final Lcom/transsnet/downloader/util/DownloadSDCardUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field private static final e:Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/transsnet/downloader/R$string;->sdcard_name:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getString(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->e:Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 19

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x2

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const-string v3, ""

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lyw/f;

    .line 37
    .line 38
    invoke-virtual {v6}, Lyw/f;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {v6}, Lyw/f;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v5, 0x0

    .line 60
    if-le v3, v4, :cond_4

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v3, v5

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_7

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lyw/f;

    .line 80
    .line 81
    invoke-virtual {v4}, Lyw/f;->c()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_5

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    invoke-virtual {v4}, Lyw/f;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 94
    .line 95
    sget-object v8, Lui/b;->a:Lui/b$a;

    .line 96
    .line 97
    invoke-virtual {v8}, Lui/b$a;->f()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v8}, Lui/b$a;->f()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    sget-object v6, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b:Ljava/lang/String;

    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    :goto_2
    move-object v14, v6

    .line 164
    goto :goto_3

    .line 165
    :cond_6
    sget-object v6, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :goto_3
    new-instance v6, Lyw/b;

    .line 169
    .line 170
    invoke-virtual {v4}, Lyw/f;->a()J

    .line 171
    .line 172
    .line 173
    move-result-wide v16

    .line 174
    const/16 v18, 0x3

    .line 175
    .line 176
    const/4 v15, 0x2

    .line 177
    move-object v11, v6

    .line 178
    invoke-direct/range {v11 .. v18}, Lyw/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    :cond_7
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 17

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 4
    .line 5
    const-class v3, Landroid/os/storage/StorageManager;

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const-string v5, "storage"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v5, "null cannot be cast to non-null type android.os.storage.StorageManager"

    .line 18
    .line 19
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 23
    .line 24
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v7, 0x18

    .line 32
    .line 33
    const-string v8, "getPath"

    .line 34
    .line 35
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    if-lt v6, v7, :cond_2

    .line 39
    .line 40
    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/g;->a(Landroid/os/storage/StorageManager;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "getStorageVolumes(...)"

    .line 45
    .line 46
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/i;->a(Ljava/lang/Object;)Landroid/os/storage/StorageVolume;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/j;->a(Landroid/os/storage/StorageVolume;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v0}, Lcom/transsnet/downloader/util/i;->a(Landroid/os/storage/StorageVolume;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/k;->a(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    sput-boolean v2, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_4

    .line 86
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 98
    :try_start_2
    new-array v12, v2, [Ljava/lang/Class;

    .line 99
    .line 100
    aput-object v10, v12, v1

    .line 101
    .line 102
    invoke-virtual {v11, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    invoke-virtual {v12, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    check-cast v12, Ljava/lang/String;

    .line 117
    .line 118
    new-instance v13, Lyw/f;

    .line 119
    .line 120
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v13, v12, v7, v4, v6}, Lyw/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_1
    :try_start_3
    const-string v12, "mPath"

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v11, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    new-instance v11, Lyw/f;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {v11, v0, v7, v4, v6}, Lyw/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    goto :goto_3

    .line 163
    :cond_1
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_2
    :try_start_5
    const-string v6, "android.os.storage.StorageVolume"

    .line 178
    .line 179
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    const-string v8, "isRemovable"

    .line 188
    .line 189
    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    const-string v11, "isEmulated"

    .line 194
    .line 195
    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const-string v11, "getVolumeState"

    .line 200
    .line 201
    new-array v12, v2, [Ljava/lang/Class;

    .line 202
    .line 203
    const-class v13, Ljava/lang/String;

    .line 204
    .line 205
    aput-object v13, v12, v1

    .line 206
    .line 207
    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    const-string v12, "getVolumeList"

    .line 212
    .line 213
    invoke-virtual {v3, v12, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v3, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    move v13, v1

    .line 226
    :goto_5
    if-ge v13, v12, :cond_3

    .line 227
    .line 228
    invoke-static {v3, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v7, v14, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    check-cast v15, Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v8, v14, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    check-cast v1, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v6, v14, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    check-cast v14, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    new-array v10, v2, [Ljava/lang/Object;

    .line 268
    .line 269
    const/16 v16, 0x0

    .line 270
    .line 271
    aput-object v15, v10, v16

    .line 272
    .line 273
    invoke-virtual {v11, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    check-cast v10, Ljava/lang/String;

    .line 281
    .line 282
    new-instance v2, Lyw/f;

    .line 283
    .line 284
    invoke-direct {v2, v15, v10, v1, v14}, Lyw/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 288
    .line 289
    .line 290
    const/4 v1, 0x1

    .line 291
    add-int/2addr v13, v1

    .line 292
    move v2, v1

    .line 293
    move/from16 v1, v16

    .line 294
    .line 295
    const/4 v10, 0x0

    .line 296
    goto :goto_5

    .line 297
    :catchall_3
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    .line 300
    .line 301
    :cond_3
    :goto_6
    return-object v5
.end method

.method public final c()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "file"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v2, 0x21

    .line 39
    .line 40
    if-lt v1, v2, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->e:Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-static {v1, v2, v0, v3}, Lcom/transsion/commercialization/pslink/c;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->e:Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->c:Z

    .line 64
    .line 65
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->c:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->e:Lcom/transsnet/downloader/util/DownloadSDCardUtil$sdcardBroadcastReceiver$1;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method
