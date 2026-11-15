.class public final Lcom/wecloud/load/lib/DySoLoadManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/wecloud/load/lib/DySoLoadManager;

.field private static b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/DySoLoadManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wecloud/load/lib/DySoLoadManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    .line 7
    .line 8
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

.method public static final synthetic a(Lcom/wecloud/load/lib/DySoLoadManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/DySoLoadManager;->g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string p3, "load_so"

    .line 10
    .line 11
    :cond_1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p3, p2}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic h(Lcom/wecloud/load/lib/DySoLoadManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/DySoLoadManager;->g(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonSoInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/DySoLoadManager;->c(Landroid/content/Context;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wecloud/load/lib/o$a;->a()Lcom/wecloud/load/lib/o;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/wecloud/load/lib/DySoLoadManager$a;

    .line 36
    .line 37
    invoke-direct {v1, v0, p1}, Lcom/wecloud/load/lib/DySoLoadManager$a;-><init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/wecloud/load/lib/DySoLoadManager;->f(Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "\u89e3\u6790\u540e\u7684SO\u914d\u7f6e\u6570\u91cf: "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "SoLoadManagerExample"

    .line 66
    .line 67
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    new-instance v2, Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 71
    .line 72
    sget-object v3, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 73
    .line 74
    invoke-direct {v2, p2, v3}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/wecloud/load/lib/SoDownloadRequest;->isValid()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    invoke-virtual {v0, p1, v1, v2}, Lcom/wecloud/load/lib/o;->i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 88
    .line 89
    const/4 v7, 0x4

    .line 90
    const/4 v8, 0x0

    .line 91
    const-string v4, "SoLoadManagerExample"

    .line 92
    .line 93
    const-string v5, "solist \u914d\u7f6e\u65e0\u6548 \u4e3anull\u6216\u8005\u7f3a\u5931\u5173\u952e\u4fe1\u606f\uff0c\u4e0d\u542f\u52a8\u670d\u52a1"

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const/4 p1, 0x0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object p2, p1

    .line 113
    :goto_0
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getEnableService()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "\u672a\u6ee1\u8db3\u6761\u4ef6 \u63a7\u5236\u914d\u7f6econtrolConfig="

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " \u63a7\u5236\u5f00\u5173="

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, " \u9000\u51fa\u5f00\u5173="

    .line 145
    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :goto_1
    return-void
.end method

.method public final c(Landroid/content/Context;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    sget-object v0, Ltx/b;->a:Ltx/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ltx/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "so_load_control_config"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    const-string v2, "SoLoadManagerExample"

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e: "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    move-object v4, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 53
    .line 54
    const-string v2, "SoLoadManagerExample"

    .line 55
    .line 56
    const-string v3, "MMKV \u4e2d\u4e0d\u5b58\u5728\u914d\u7f6e"

    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    .line 68
    .line 69
    const-class v2, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 76
    .line 77
    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    move-object p1, v0

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u5931\u8d25: "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const/16 v6, 0x8

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    const-string v2, "SoLoadManagerExample"

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    invoke-static/range {v1 .. v7}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    aget-object v6, v0, v3

    .line 14
    .line 15
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-string v7, "arm64-v8a"

    .line 19
    .line 20
    invoke-static {v6, v7, v2, v5, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const-string v0, "v8a"

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    array-length v1, v0

    .line 33
    move v3, v2

    .line 34
    :goto_1
    const-string v6, "v7a"

    .line 35
    .line 36
    if-ge v3, v1, :cond_2

    .line 37
    .line 38
    aget-object v7, v0, v3

    .line 39
    .line 40
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v8, "armeabi-v7a"

    .line 44
    .line 45
    invoke-static {v7, v8, v2, v5, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    :cond_2
    move-object v0, v6

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_2
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .line 1
    const-string v0, "jsonString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/wecloud/load/lib/DySoLoadManager;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "\u5f53\u524d\u8bbe\u5907CPU\u67b6\u6784: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "SoLoadManagerExample"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/wecloud/load/lib/DySoLoadManager$parseAndFilterConfig$type$1;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/wecloud/load/lib/DySoLoadManager$parseAndFilterConfig$type$1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "fromJson(...)"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast p1, Ljava/util/List;

    .line 56
    .line 57
    check-cast p1, Ljava/lang/Iterable;

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/wecloud/load/lib/bean/SoConfigGroup;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getVariants()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/wecloud/load/lib/bean/CpuVariant;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    new-instance v11, Lcom/wecloud/load/lib/bean/SoZipInfo;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/CpuVariant;->getZip_url()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/CpuVariant;->getMd5()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getSo_names()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getMethod_name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v3}, Lcom/wecloud/load/lib/bean/SoConfigGroup;->getInput()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    move-object v5, v11

    .line 115
    invoke-direct/range {v5 .. v10}, Lcom/wecloud/load/lib/bean/SoZipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    const/4 v11, 0x0

    .line 122
    :goto_1
    if-eqz v11, :cond_0

    .line 123
    .line 124
    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v1, "\u89e3\u6790JSON\u914d\u7f6e\u5931\u8d25: "

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_2
    return-object v1
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "so_load_control_config"

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v1, Ltx/b;->a:Ltx/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Ltx/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0, p2}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 29
    .line 30
    .line 31
    const-class v1, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 32
    .line 33
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 38
    .line 39
    sput-object v0, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    const-string v1, "\u5df2\u4fdd\u5b58\u914d\u7f6e\u5230 MMKV: "

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x1

    .line 50
    if-ne v0, v2, :cond_1

    .line 51
    .line 52
    sget-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/wecloud/load/lib/o$a;->a()Lcom/wecloud/load/lib/o;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/wecloud/load/lib/o;->k(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    move-object v3, p1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 89
    sput-object p1, Lcom/wecloud/load/lib/DySoLoadManager;->b:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 90
    .line 91
    sget-object p1, Ltx/b;->a:Ltx/b;

    .line 92
    .line 93
    invoke-virtual {p1}, Ltx/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "\u4fdd\u5b58\u914d\u7f6e\u5230 MMKV \u5931\u8d25: "

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/16 v5, 0x8

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    const-string v1, "SoLoadManagerExample"

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_3
    return-void
.end method
