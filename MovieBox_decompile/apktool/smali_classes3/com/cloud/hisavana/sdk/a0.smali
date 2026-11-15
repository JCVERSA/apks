.class public final Lcom/cloud/hisavana/sdk/a0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

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

.method private final a(Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;)I
    .locals 9

    .line 1
    invoke-static {}, Lk7/c;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getModelWhite()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getModelBlack()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/a0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/16 p1, 0xb

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getApkList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    if-eqz v0, :cond_9

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getApkList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_9

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_9

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v2, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 65
    .line 66
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->d()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getCountryCodes()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/cloud/hisavana/sdk/a0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lk7/c;->g()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getSysVersionCode()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v8, "getSysVersionCode(...)"

    .line 92
    .line 93
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-ge v4, v5, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-static {}, Lk7/c;->h()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getAndroidSupportVersion()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/cloud/hisavana/sdk/a0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    invoke-static {}, Lk7/c;->a()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getBrand()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-direct {v2, v4, v5, v6, v3}, Lcom/cloud/hisavana/sdk/a0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_6

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    invoke-static {}, Lk7/c;->f()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getModel()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getNonModel()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-direct {v2, v4, v5, v6, v3}, Lcom/cloud/hisavana/sdk/a0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_7

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    invoke-static {}, Lk7/c;->b()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->getCpus()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {v2, v4, v0}, Lcom/cloud/hisavana/sdk/a0;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    return v7

    .line 168
    :cond_9
    :goto_1
    return v1
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {p1, v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    :cond_1
    return-object p1
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    if-eqz p3, :cond_8

    .line 11
    .line 12
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_7

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "getDefault(...)"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v2, "toLowerCase(...)"

    .line 44
    .line 45
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v4, ","

    .line 49
    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    filled-new-array {v4}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v9, 0x6

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_0
    if-eqz p3, :cond_6

    .line 91
    .line 92
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    filled-new-array {v4}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v9, 0x6

    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    :goto_1
    move v0, v1

    .line 133
    :goto_2
    return v0

    .line 134
    :cond_7
    :goto_3
    return v1

    .line 135
    :cond_8
    :goto_4
    return v0
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    if-nez p4, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    if-eqz p1, :cond_9

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-nez p4, :cond_2

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    const-string v1, "getDefault(...)"

    .line 28
    .line 29
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p4, "toLowerCase(...)"

    .line 37
    .line 38
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v2, ","

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "all"

    .line 54
    .line 55
    invoke-static {p2, v4, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    filled-new-array {v2}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v9, 0x6

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    move p2, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_0
    move p2, v3

    .line 97
    :goto_1
    if-eqz p3, :cond_8

    .line 98
    .line 99
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    filled-new-array {v2}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const/4 v9, 0x6

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    move p1, v0

    .line 140
    goto :goto_3

    .line 141
    :cond_8
    :goto_2
    move p1, v3

    .line 142
    :goto_3
    if-eqz p2, :cond_9

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    move v0, v3

    .line 147
    :cond_9
    :goto_4
    return v0
.end method

.method private final k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "yyyy-MM-dd"

    .line 27
    .line 28
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Ljava/util/Date;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_3

    .line 47
    .line 48
    new-instance p2, Ljava/util/Date;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-lez p1, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    const-string v0, ","

    .line 22
    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v5, 0x6

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, p1

    .line 32
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v2, 0xa

    .line 39
    .line 40
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/4 v7, 0x6

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v3, p2

    .line 88
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    xor-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    return p1

    .line 144
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 145
    return p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;)I
    .locals 3

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCountryWhite()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCountryBlack()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/cloud/hisavana/sdk/a0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x7

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-static {}, Lk7/c;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getBrandWhite()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getBrandBlack()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {p0, v0, v1, v2}, Lcom/cloud/hisavana/sdk/a0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const/16 p1, 0x8

    .line 45
    .line 46
    return p1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getEndDate()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/a0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x1

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getStartDate()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/a0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v2, 0x2

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowMaxOfDay()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gtz v0, :cond_4

    .line 76
    .line 77
    const/16 p1, 0x9

    .line 78
    .line 79
    return p1

    .line 80
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowMaxOfDay()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lt p1, v0, :cond_6

    .line 112
    .line 113
    const/4 p1, 0x3

    .line 114
    return p1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-static {p1, p3, v0}, Lcom/cloud/hisavana/sdk/common/util/d0;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    if-ne p1, v1, :cond_7

    .line 129
    .line 130
    const/4 p1, 0x5

    .line 131
    goto :goto_1

    .line 132
    :cond_7
    const/4 p1, 0x6

    .line 133
    :goto_1
    return p1

    .line 134
    :cond_8
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    const/4 p3, 0x0

    .line 139
    if-eq p1, v1, :cond_9

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eq p1, v2, :cond_9

    .line 146
    .line 147
    return p3

    .line 148
    :cond_9
    if-eqz p4, :cond_a

    .line 149
    .line 150
    sget-object p1, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 151
    .line 152
    invoke-direct {p1, p4}, Lcom/cloud/hisavana/sdk/a0;->a(Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;)I

    .line 153
    .line 154
    .line 155
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return p1

    .line 157
    :cond_a
    return p3

    .line 158
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string p4, "check ad validity error: "

    .line 168
    .line 169
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string p3, "DefaultAdUtil"

    .line 184
    .line 185
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const p1, 0x7fffffff

    .line 189
    .line 190
    .line 191
    return p1
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;Z)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 9

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdCreativeId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getFirstPrice()Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setFirstPrice(Ljava/lang/Double;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getSettlementRatio()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setSettlementRatio(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMaterialStyle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setMaterialStyle(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDescription()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getButton()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-direct {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    if-eqz p2, :cond_0

    .line 92
    .line 93
    new-instance v5, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getLogoUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-direct {p0, v6}, Lcom/cloud/hisavana/sdk/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-direct {v5, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    new-instance v5, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getLogoUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-direct {v5, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_1

    .line 122
    .line 123
    new-instance v7, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMainIngUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-direct {p0, v8}, Lcom/cloud/hisavana/sdk/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-direct {v7, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    new-instance v7, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMainIngUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-direct {v7, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setTitle(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setDescript(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setLogo(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setButton(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setMainImages(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    if-eqz p2, :cond_2

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :goto_2
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdChoiceImageUrl(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setNativeObject(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;)V

    .line 183
    .line 184
    .line 185
    const/4 v1, 0x4

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdLaunchTypes(Ljava/lang/Integer;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getEndDate()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setExpiredDate(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPageUrl()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "getPageUrl(...)"

    .line 205
    .line 206
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v3, "ssplocalhost=true"

    .line 210
    .line 211
    const/4 v4, 0x0

    .line 212
    const/4 v5, 0x2

    .line 213
    const/4 v6, 0x0

    .line 214
    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_4

    .line 219
    .line 220
    if-eqz p2, :cond_4

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPageUrl()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v2, "?"

    .line 230
    .line 231
    invoke-static {v1, v2, v4, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_3

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPageUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v2, "&htmlfromlocal=true"

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setPageUrl(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPageUrl()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v2, "?htmlfromlocal=true"

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setPageUrl(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPageUrl()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setClickUrl(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCampaignname()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCampaignname(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMaterialType()Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v2, "getMaterialType(...)"

    .line 305
    .line 306
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setDefaultMaterialType(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFromLocal(Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowTime()Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setShowTime(Ljava/lang/Integer;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowTrackingSecretKey()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setShowTrackingSecretKey(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAppInfo()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    if-eqz p2, :cond_5

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAppInfo()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAppInfo(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/J0;->F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V

    .line 351
    .line 352
    .line 353
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDeepLinkUrl()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getClickUrls()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    if-eqz p2, :cond_6

    .line 365
    .line 366
    :try_start_0
    new-instance p2, Lcom/cloud/hisavana/sdk/a0$a;

    .line 367
    .line 368
    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/a0$a;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getClickUrls()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1, p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    check-cast p2, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setStoreDeeplink(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .line 387
    .line 388
    :catch_0
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setPullNewestLive(Ljava/lang/Integer;)V

    .line 397
    .line 398
    .line 399
    new-instance p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 400
    .line 401
    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    const/4 v2, 0x1

    .line 409
    if-eq v1, v2, :cond_7

    .line 410
    .line 411
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPullNewestLive()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-ne v1, v5, :cond_8

    .line 416
    .line 417
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setStoreFlag(Ljava/lang/Integer;)V

    .line 422
    .line 423
    .line 424
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    sget v2, Lcom/cloud/hisavana/sdk/R$string;->download_by_pamlstore:I

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setStoreTitle(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :cond_8
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdActivationRewardTime()Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setDwellTime(Ljava/lang/Integer;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExt(Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMaterialWidth()I

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialWith(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getMaterialHeight()I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialHeight(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPackageName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setPackageName(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getClickTrackingUrls()Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setClickTrackingUrls(Ljava/util/List;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowTrackingUrls()Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object p2

    .line 479
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setShowTrackingUrls(Ljava/util/ArrayList;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPsClickTrackingUrls()Ljava/util/ArrayList;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setPsClickTrackingUrls(Ljava/util/ArrayList;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getTrackType()I

    .line 490
    .line 491
    .line 492
    move-result p2

    .line 493
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object p2

    .line 497
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTrackType(Ljava/lang/Integer;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    if-nez p2, :cond_9

    .line 505
    .line 506
    goto :goto_4

    .line 507
    :cond_9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getRating()I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->setRating(Ljava/lang/Integer;)V

    .line 516
    .line 517
    .line 518
    :goto_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getScale()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScale(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getRewardDuration()I

    .line 526
    .line 527
    .line 528
    move-result p2

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object p2

    .line 533
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setRewardDuration(Ljava/lang/Integer;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getSupportNetType()I

    .line 537
    .line 538
    .line 539
    move-result p2

    .line 540
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setDefaultAdSupportNetType(I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDownloadArea()I

    .line 544
    .line 545
    .line 546
    move-result p2

    .line 547
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setDownloadArea(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAutoRetentionTime()I

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAutoRetentionTime(I)V

    .line 555
    .line 556
    .line 557
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v3, "yyyy-MM-dd"

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :catch_0
    :goto_0
    return-object v0
.end method

.method public final e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "B20301"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "B20302"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "B20303"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 63
    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    if-eqz p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v1, ","

    .line 32
    .line 33
    filled-new-array {v1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v6, 0x6

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v2, p2

    .line 42
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    return v2

    .line 70
    :cond_4
    :goto_1
    return v0
.end method

.method public final j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "B20301"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "B20302"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "B20303"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-object p1
.end method
