.class public final Lcom/transsion/baselib/locale/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/locale/f$a;,
        Lcom/transsion/baselib/locale/f$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/baselib/locale/f$a;


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private b:I

.field private c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/locale/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/locale/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/locale/f;->d:Lcom/transsion/baselib/locale/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 11
    .line 12
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcj/a;

    .line 6
    .line 7
    invoke-interface {p1}, Lcj/a;->changeLocal()V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/View;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/transsion/baselib/locale/f;->a(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return-void
.end method

.method private final b(Landroid/app/Activity;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "notifyActivityChangedLocale()-> activity = "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, " , waitChangedCount = "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "LocaleManagerCB"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 39
    .line 40
    if-gtz v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/transsion/baselib/locale/f$b;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->c()Ljava/util/Locale;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v2, v1

    .line 64
    :goto_0
    if-nez v2, :cond_2

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget v2, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    iput v2, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->b()Ljava/util/Locale;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->c()Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-ne v2, v3, :cond_3

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->c()Ljava/util/Locale;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/locale/f$b;->d(Ljava/util/Locale;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/locale/f$b;->e(Ljava/util/Locale;)V

    .line 102
    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/baselib/locale/f;->d(Landroid/app/Activity;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/locale/f;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/baselib/locale/f$b;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->a()Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/transsion/baselib/locale/f;->b(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final d(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "extra_language_activity_restart"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Locale;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-ne v2, v3, :cond_a

    .line 18
    .line 19
    iget-object v2, v0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-gtz v2, :cond_0

    .line 27
    .line 28
    iput v3, v0, Lcom/transsion/baselib/locale/f;->b:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget v4, v0, Lcom/transsion/baselib/locale/f;->b:I

    .line 32
    .line 33
    move v5, v3

    .line 34
    :goto_0
    if-ge v5, v2, :cond_9

    .line 35
    .line 36
    iget-object v6, v0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lcom/transsion/baselib/locale/f$b;

    .line 43
    .line 44
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v8, "setLocaleChanged()-> localeState = "

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const/4 v11, 0x4

    .line 64
    const/4 v12, 0x0

    .line 65
    const-string v8, "LocaleManagerCB"

    .line 66
    .line 67
    const/4 v10, 0x0

    .line 68
    move-object v7, v13

    .line 69
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    :goto_1
    move/from16 v16, v2

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v6}, Lcom/transsion/baselib/locale/f$b;->a()Landroid/app/Activity;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const/4 v15, 0x1

    .line 87
    if-nez v7, :cond_3

    .line 88
    .line 89
    invoke-virtual {v14}, Landroid/app/Activity;->isDestroyed()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move v12, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    move v12, v15

    .line 99
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v8, "setLocaleChanged()-> activityFinished = "

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    const/4 v11, 0x4

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const-string v8, "LocaleManagerCB"

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    move-object v7, v13

    .line 123
    move/from16 v17, v12

    .line 124
    .line 125
    move-object/from16 v12, v16

    .line 126
    .line 127
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    if-eqz v17, :cond_4

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v6}, Lcom/transsion/baselib/locale/f$b;->b()Ljava/util/Locale;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-virtual {v6}, Lcom/transsion/baselib/locale/f$b;->c()Ljava/util/Locale;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-ne v8, v9, :cond_5

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    move v15, v3

    .line 167
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v9, "setLocaleChanged()-> locale = "

    .line 173
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v9, " , activityLocale = "

    .line 181
    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v7, " , expectLocale = "

    .line 189
    .line 190
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v7, " , isSameDirection = "

    .line 197
    .line 198
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    const/16 v16, 0x4

    .line 209
    .line 210
    const/16 v17, 0x0

    .line 211
    .line 212
    const-string v8, "LocaleManagerCB"

    .line 213
    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    move-object v7, v13

    .line 217
    move-object/from16 v19, v10

    .line 218
    .line 219
    move/from16 v10, v18

    .line 220
    .line 221
    move-object v3, v11

    .line 222
    move/from16 v11, v16

    .line 223
    .line 224
    move/from16 v16, v2

    .line 225
    .line 226
    move-object v2, v12

    .line 227
    move-object/from16 v12, v17

    .line 228
    .line 229
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    const/4 v3, 0x0

    .line 237
    if-eqz v2, :cond_6

    .line 238
    .line 239
    invoke-virtual {v6, v3}, Lcom/transsion/baselib/locale/f$b;->e(Ljava/util/Locale;)V

    .line 240
    .line 241
    .line 242
    if-eqz v19, :cond_8

    .line 243
    .line 244
    add-int/lit8 v4, v4, -0x1

    .line 245
    .line 246
    const/4 v11, 0x4

    .line 247
    const/4 v12, 0x0

    .line 248
    const-string v8, "LocaleManagerCB"

    .line 249
    .line 250
    const-string v9, "setLocaleChanged()-> waitChangedCount--"

    .line 251
    .line 252
    const/4 v10, 0x0

    .line 253
    move-object v7, v13

    .line 254
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_6
    invoke-virtual {v6, v1}, Lcom/transsion/baselib/locale/f$b;->e(Ljava/util/Locale;)V

    .line 259
    .line 260
    .line 261
    if-nez v19, :cond_7

    .line 262
    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    const/4 v11, 0x4

    .line 266
    const/4 v12, 0x0

    .line 267
    const-string v8, "LocaleManagerCB"

    .line 268
    .line 269
    const-string v9, "setLocaleChanged()-> waitChangedCount++"

    .line 270
    .line 271
    const/4 v10, 0x0

    .line 272
    move-object v7, v13

    .line 273
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    if-eqz v15, :cond_8

    .line 277
    .line 278
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    const-string v7, "getConfiguration(...)"

    .line 287
    .line 288
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    const-string v8, "getResources(...)"

    .line 296
    .line 297
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    const-string v9, "getDisplayMetrics(...)"

    .line 305
    .line 306
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v1}, Lcom/transsion/baselib/locale/f$b;->d(Ljava/util/Locale;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v3}, Lcom/transsion/baselib/locale/f$b;->e(Ljava/util/Locale;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v2, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    const v3, 0x1020002

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    if-eqz v2, :cond_8

    .line 337
    .line 338
    invoke-direct {v0, v2}, Lcom/transsion/baselib/locale/f;->a(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 342
    .line 343
    move/from16 v2, v16

    .line 344
    .line 345
    const/4 v3, 0x0

    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_9
    iput v4, v0, Lcom/transsion/baselib/locale/f;->b:I

    .line 349
    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/transsion/baselib/locale/f;->c()V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 355
    .line 356
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 357
    .line 358
    .line 359
    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    new-instance v0, Lcom/transsion/baselib/locale/f$b;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/transsion/baselib/locale/f$b;-><init>(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/locale/d$b;->d(Landroid/content/Context;)Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/locale/f$b;->d(Ljava/util/Locale;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->b()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "onActivityCreated()-> "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " , curLocale = "

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v6, 0x4

    .line 56
    const/4 v7, 0x0

    .line 57
    const-string v3, "LocaleManagerCB"

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsion/baselib/locale/f$b;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/f$b;->c()Ljava/util/Locale;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v1

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/locale/f$b;->e(Ljava/util/Locale;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/transsion/baselib/locale/f;->b:I

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/transsion/baselib/locale/f;->a:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/transsion/baselib/locale/f;->c:Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/baselib/locale/f;->c:Ljava/lang/Integer;

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onActivityResumed()-> "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "LocaleManagerCB"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/transsion/baselib/locale/f;->c:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/baselib/locale/f;->b(Landroid/app/Activity;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
