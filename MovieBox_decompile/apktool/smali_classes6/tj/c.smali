.class public final Ltj/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltj/c$a;
    }
.end annotation


# static fields
.field public static final d:Ltj/c$a;


# instance fields
.field private a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltj/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ltj/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltj/c;->d:Ltj/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ltj/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ltj/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ltj/c;->b:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltj/c;->j(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d()Ltj/e;
    .locals 1

    .line 1
    invoke-static {}, Ltj/c;->i()Ltj/e;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Ltj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final f(Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;)Ljava/util/List;
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "global_dialog_date"

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lci/p;->a:Lci/p;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    :goto_0
    const-wide/16 v6, 0x3e8

    .line 29
    .line 30
    mul-long/2addr v4, v6

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-static {v3, v4, v6, v5, v6}, Lci/p;->b(Lci/p;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const-string v5, "global_widget_history"

    .line 46
    .line 47
    const-string v7, "global_dialog_history"

    .line 48
    .line 49
    const-string v8, "popup"

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 56
    .line 57
    invoke-direct {p0}, Ltj/c;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v10, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, " --> getDialogRecord() --> \u4e0d\u662f\u540c\u4e00\u5929\u6570\u636e\uff0creturn mutableListOf() --> currentDate = "

    .line 70
    .line 71
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, " -- globalDialogDate = "

    .line 78
    .line 79
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " --> \u4e0d\u662f\u540c\u4e00\u5929\u6570\u636e\uff0c\u9700\u8981\u6e05\u7a7a\u672c\u5730\u4fdd\u5b58\u7684\u6570\u636e"

    .line 86
    .line 87
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    const/4 v13, 0x4

    .line 95
    const/4 v14, 0x0

    .line 96
    const-string v10, "zxb_popup"

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    invoke-static/range {v9 .. v14}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v7, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v5, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    .line 122
    .line 123
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_2
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v7, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v5, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_2
    if-eqz v0, :cond_4

    .line 153
    .line 154
    const-class v1, Lcom/transsion/bean/HomePopupRequestEntity;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "fromJson(...)"

    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    check-cast v0, Ljava/util/List;

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    return-object v0
.end method

.method static synthetic g(Ltj/c;Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const-string p3, "popup"

    .line 11
    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ltj/c;->f(Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private final h(Lcom/transsion/bean/HomePopupEntity;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v6, p1

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    const-string v8, "popup"

    .line 5
    .line 6
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v9, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz v6, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getPopup()Lcom/transsion/bean/HomePopupInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    move-object v10, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v10, v9

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    if-nez v10, :cond_2

    .line 31
    .line 32
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    invoke-direct {p0}, Ltj/c;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " --> saveDialogRecord() --> popup == null --> \u4fdd\u5b58\u6570\u636e\u5f02\u5e38 -- type = "

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v4, 0x4

    .line 59
    const/4 v5, 0x0

    .line 60
    const-string v1, "zxb_popup"

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const/4 v4, 0x2

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v1, p1

    .line 72
    move-object/from16 v3, p2

    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Ltj/c;->g(Ltj/c;Lcom/transsion/bean/HomePopupEntity;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v1, v0

    .line 79
    check-cast v1, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v2, v9

    .line 86
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/transsion/bean/HomePopupRequestEntity;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/transsion/bean/HomePopupRequestEntity;->getId()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-virtual {v10}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    cmp-long v4, v4, v11

    .line 109
    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    move-object v2, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/4 v1, 0x1

    .line 115
    const-wide/16 v3, 0x0

    .line 116
    .line 117
    if-nez v2, :cond_6

    .line 118
    .line 119
    new-instance v2, Lcom/transsion/bean/HomePopupRequestEntity;

    .line 120
    .line 121
    invoke-virtual {v10}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move-wide v12, v3

    .line 133
    :goto_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-direct {v2, v10, v11, v5, v1}, Lcom/transsion/bean/HomePopupRequestEntity;-><init>(JLjava/lang/Long;I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupRequestEntity;->getCount()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    add-int/2addr v5, v1

    .line 149
    invoke-virtual {v2, v5}, Lcom/transsion/bean/HomePopupRequestEntity;->setCount(I)V

    .line 150
    .line 151
    .line 152
    if-eqz v6, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    .line 155
    .line 156
    .line 157
    move-result-wide v10

    .line 158
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move-object v1, v9

    .line 164
    :goto_4
    invoke-virtual {v2, v1}, Lcom/transsion/bean/HomePopupRequestEntity;->setTs(Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    :goto_5
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_8

    .line 178
    .line 179
    const-string v5, "global_dialog_history"

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_8
    const-string v5, "global_widget_history"

    .line 183
    .line 184
    :goto_6
    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v2, v5, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v1, Lci/p;->a:Lci/p;

    .line 196
    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getTs()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    :cond_9
    const-wide/16 v10, 0x3e8

    .line 204
    .line 205
    mul-long/2addr v3, v10

    .line 206
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const/4 v3, 0x2

    .line 211
    invoke-static {v1, v2, v9, v3, v9}, Lci/p;->b(Lci/p;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v2, "global_dialog_date"

    .line 216
    .line 217
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    .line 219
    .line 220
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 221
    .line 222
    invoke-direct {p0}, Ltj/c;->e()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, " --> saveDialogRecord() --> type = "

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, " --> \u5c55\u793a\u8bb0\u5f55\u4fdd\u5b58 --> homePopup = "

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    const/4 v7, 0x4

    .line 255
    const/4 v8, 0x0

    .line 256
    const-string v4, "zxb_popup"

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method private static final i()Ltj/e;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ltj/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private static final j(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;->x0(Lcom/transsion/bean/HomePopupEntity;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/commercialization/dialog/TaskCommonDialog;->w0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "TaskCommonDialog"

    .line 15
    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 1

    .line 1
    const-string v0, "widget"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Ltj/c;->h(Lcom/transsion/bean/HomePopupEntity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ltj/b;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2, v0}, Ltj/b;-><init>(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ltj/c;->a:Lcom/transsion/commercialization/dialog/TrendingFloatView;

    .line 3
    .line 4
    iget-object v1, p0, Ltj/c;->c:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Ltj/c;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method
