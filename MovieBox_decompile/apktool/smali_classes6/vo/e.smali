.class public final Lvo/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo/e$a;
    }
.end annotation


# static fields
.field public static final a:Lvo/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvo/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lvo/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvo/e;->a:Lvo/e;

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

.method public static synthetic a(Lcom/transsion/push/notification/permission/NoticePermissionFrom;Lgf/f;Ljava/util/List;ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lvo/e;->g(Lcom/transsion/push/notification/permission/NoticePermissionFrom;Lgf/f;Ljava/util/List;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(JJ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lvo/e;->o(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(JJ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lvo/e;->m(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic d(ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lvo/e;->h(ZLjava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/transsion/push/notification/permission/NoticePermissionFrom;Lgf/f;Ljava/util/List;ZZ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "scope"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "deniedList"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    const/4 v8, 0x4

    .line 22
    const/4 v9, 0x0

    .line 23
    const-string v5, "NoticePer"

    .line 24
    .line 25
    const-string v6, "\u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c\u65e0\u9700\u5f39\u7a97"

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz p4, :cond_1

    .line 33
    .line 34
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " \u8bf7\u6c42\u6743\u9650\uff0c\u9700\u8981\u8df3\u5230\u8bbe\u7f6e\u9875\uff0c\u5148\u5c55\u793a\u63d0\u793a\u5f39\u7a97"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    const/4 v14, 0x4

    .line 54
    const/4 v15, 0x0

    .line 55
    const-string v11, "NoticePer"

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lff/a;

    .line 62
    .line 63
    sget-object v4, Lvo/e;->a:Lvo/e;

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Lvo/e;->i(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v18

    .line 69
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget v4, Lcom/transsion/lib/push/R$string;->permission_notice_turn_on:I

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v19

    .line 79
    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_permission_tips:I

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v20

    .line 85
    sget v0, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 86
    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v21

    .line 91
    const/16 v22, 0x1

    .line 92
    .line 93
    const/16 v23, 0x0

    .line 94
    .line 95
    const/16 v17, 0x0

    .line 96
    .line 97
    move-object/from16 v16, v3

    .line 98
    .line 99
    invoke-direct/range {v16 .. v23}, Lff/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Lgf/f;->c(Ljava/util/List;Lff/a;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    sget-object v3, Lcom/transsion/push/notification/permission/NoticePermissionFrom;->APP_START:Lcom/transsion/push/notification/permission/NoticePermissionFrom;

    .line 107
    .line 108
    if-ne v0, v3, :cond_2

    .line 109
    .line 110
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 111
    .line 112
    const/4 v8, 0x4

    .line 113
    const/4 v9, 0x0

    .line 114
    const-string v5, "NoticePer"

    .line 115
    .line 116
    const-string v6, "app \u542f\u52a8 \u76f4\u63a5\u8bf7\u6c42\u6743\u9650"

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p2}, Lgf/f;->b(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, " \u8bf7\u6c42\u6743\u9650\u524d\uff0c\u63d0\u793a\u5f39\u7a97"

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    const/4 v14, 0x4

    .line 146
    const/4 v15, 0x0

    .line 147
    const-string v11, "NoticePer"

    .line 148
    .line 149
    const/4 v13, 0x0

    .line 150
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance v3, Lff/a;

    .line 154
    .line 155
    sget-object v4, Lvo/e;->a:Lvo/e;

    .line 156
    .line 157
    invoke-virtual {v4, v0}, Lvo/e;->i(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget v4, Lcom/transsion/lib/push/R$string;->permission_notice_turn_on:I

    .line 166
    .line 167
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v19

    .line 171
    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_permission_tips:I

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v20

    .line 177
    sget v0, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v21

    .line 183
    const/16 v22, 0x1

    .line 184
    .line 185
    const/16 v23, 0x0

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    move-object/from16 v16, v3

    .line 190
    .line 191
    invoke-direct/range {v16 .. v23}, Lff/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2, v3}, Lgf/f;->e(Ljava/util/List;Lff/a;)V

    .line 195
    .line 196
    .line 197
    :goto_0
    return-void
.end method

.method private static final h(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "grantedList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "deniedList"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p2, "\u901a\u77e5\u6743\u9650 \u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "NoticePer"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final j(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Z
    .locals 3

    .line 1
    sget-object v0, Lvo/e$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "key_notification_permission_download"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lvo/e;->k()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    return v0
.end method

.method private final k()Z
    .locals 15

    .line 1
    sget-object v0, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "key_notification_permission_app_start_count"

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v7, "key_notification_permission_app_start_last_time"

    .line 20
    .line 21
    invoke-virtual {v1, v7, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    sget-object v1, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/push/bean/PushConfigHelper;->getRemindTime()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v8, 0x1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1, v8}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v1, 0x30

    .line 44
    .line 45
    :goto_0
    invoke-direct {p0}, Lvo/e;->l()Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    sub-long/2addr v9, v3

    .line 56
    const v3, 0x36ee80

    .line 57
    .line 58
    .line 59
    mul-int/2addr v3, v1

    .line 60
    int-to-long v3, v3

    .line 61
    cmp-long v3, v9, v3

    .line 62
    .line 63
    if-gez v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v9, "app\u542f\u52a8 \u8d85\u8fc7"

    .line 74
    .line 75
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "\u5c0f\u65f6\uff0c\u518d\u6b21\u8bf7\u6c42  count:"

    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v4, "NoticePer"

    .line 94
    .line 95
    invoke-virtual {v3, v4, v1, v8}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {v1, v7, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-wide/16 v3, 0x1

    .line 114
    .line 115
    add-long/2addr v5, v3

    .line 116
    invoke-virtual {v0, v2, v5, v6}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lvo/e;->n()V

    .line 120
    .line 121
    .line 122
    return v8

    .line 123
    :cond_2
    :goto_1
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "app\u542f\u52a8\uff0c\u5c0f\u4e8e"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, "\u5c0f\u65f6\uff0c\u4e0d\u8bf7\u6c42 count:"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    const/4 v13, 0x4

    .line 151
    const/4 v14, 0x0

    .line 152
    const-string v10, "NoticePer"

    .line 153
    .line 154
    const/4 v12, 0x0

    .line 155
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    return v0
.end method

.method private final l()Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sget-object v5, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, "key_notice_permission_app_start_limit_time"

    .line 18
    .line 19
    invoke-virtual {v5, v6, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    move-object v6, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v6, v5

    .line 28
    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_4

    .line 42
    :cond_1
    new-array v7, v0, [C

    .line 43
    .line 44
    const/16 v2, 0x2c

    .line 45
    .line 46
    aput-char v2, v7, v1

    .line 47
    .line 48
    const/4 v10, 0x6

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Iterable;

    .line 57
    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v6}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_2
    const-wide/32 v5, 0x240c8400

    .line 94
    .line 95
    .line 96
    sub-long/2addr v3, v5

    .line 97
    new-instance v5, Lvo/d;

    .line 98
    .line 99
    invoke-direct {v5, v3, v4}, Lvo/d;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v3, 0x2

    .line 110
    if-ge v2, v3, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move v0, v1

    .line 114
    :goto_3
    return v0

    .line 115
    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    return v1
.end method

.method private static final m(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p2, p0

    .line 2
    .line 3
    if-gez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private final n()V
    .locals 12

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "key_notice_permission_app_start_limit_time"

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sget-object v4, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v1, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    move-object v5, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v5, v4

    .line 26
    :goto_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    new-array v6, v0, [C

    .line 42
    .line 43
    const/16 v0, 0x2c

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aput-char v0, v6, v4

    .line 47
    .line 48
    const/4 v9, 0x6

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Iterable;

    .line 57
    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v5}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_2
    const-wide/32 v4, 0x240c8400

    .line 94
    .line 95
    .line 96
    sub-long v4, v2, v4

    .line 97
    .line 98
    new-instance v6, Lvo/c;

    .line 99
    .line 100
    invoke-direct {v6, v4, v5}, Lvo/c;-><init>(J)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-object v3, v0

    .line 114
    check-cast v3, Ljava/lang/Iterable;

    .line 115
    .line 116
    const-string v4, ","

    .line 117
    .line 118
    const/16 v10, 0x3e

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v2, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_4
    return-void
.end method

.method private static final o(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p2, p0

    .line 2
    .line 3
    if-gez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method


# virtual methods
.method public final e(Landroidx/fragment/app/Fragment;Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Z
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lvo/e;->a:Lvo/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lvo/e;->f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "activity"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "from"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v4, p0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    sget-object v2, Lcf/c;->a:Lcf/c;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Lcf/c;->b(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "checkRequestPermission , \u6743\u9650\u5df2\u5f00\u542f, from:"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    const-string v6, "NoticePer"

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-static/range {v5 .. v10}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return v3

    .line 68
    :cond_2
    move-object/from16 v4, p0

    .line 69
    .line 70
    invoke-direct {v4, v1}, Lvo/e;->j(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "checkRequestPermission \u4e0d\u8bf7\u6c42\u6743\u9650, from:"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v10, 0x4

    .line 96
    const/4 v11, 0x0

    .line 97
    const-string v7, "NoticePer"

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-static/range {v6 .. v11}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return v3

    .line 104
    :cond_3
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "checkRequestPermission from:"

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    const/16 v16, 0x4

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const-string v13, "NoticePer"

    .line 128
    .line 129
    const/4 v15, 0x0

    .line 130
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v0}, Lcf/c;->e(Landroidx/fragment/app/FragmentActivity;)Lcf/a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 138
    .line 139
    filled-new-array {v2}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Lcf/a;->b([Ljava/lang/String;)Lgf/h;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Lgf/h;->b()Lgf/h;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Lvo/a;

    .line 152
    .line 153
    invoke-direct {v2, v1}, Lvo/a;-><init>(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v2}, Lgf/h;->a(Ldf/b;)Lgf/h;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v1, Lvo/b;

    .line 161
    .line 162
    invoke-direct {v1}, Lvo/b;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v1}, Lgf/h;->d(Ldf/c;)V

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    return v0

    .line 170
    :goto_0
    return v3
.end method

.method public final i(Lcom/transsion/push/notification/permission/NoticePermissionFrom;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lvo/e$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    const-string v1, "getString(...)"

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget v0, Lcom/transsion/lib/push/R$string;->permission_notice_tips_music:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget v0, Lcom/transsion/lib/push/R$string;->permission_notice_tips_normal:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p1
.end method
