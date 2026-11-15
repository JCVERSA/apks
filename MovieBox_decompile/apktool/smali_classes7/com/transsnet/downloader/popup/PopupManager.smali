.class public final Lcom/transsnet/downloader/popup/PopupManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/popup/PopupManager$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsnet/downloader/popup/PopupManager$a;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsnet/downloader/adapter/u0$b;

.field private e:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/popup/PopupManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/popup/PopupManager;->f:Lcom/transsnet/downloader/popup/PopupManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "downloadBean"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    new-instance p1, Lcom/transsnet/downloader/popup/d;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/transsnet/downloader/popup/d;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->c:Lkotlin/Lazy;

    .line 23
    .line 24
    return-void
.end method

.method private final C(Landroid/content/Context;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "delete"

    .line 10
    .line 11
    const-string v4, "feedback"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-ne v2, v5, :cond_0

    .line 15
    .line 16
    new-instance v2, Lkotlin/Pair;

    .line 17
    .line 18
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    sget v7, Lcom/transsnet/downloader/R$string;->help:I

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-direct {v2, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lkotlin/Pair;

    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget v7, Lcom/transsnet/downloader/R$string;->download_dialog_audio_playlist:I

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "audio_add"

    .line 44
    .line 45
    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lkotlin/Pair;

    .line 49
    .line 50
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    sget v8, Lcom/transsnet/downloader/R$string;->delete:I

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-direct {v6, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    new-array v3, v3, [Lkotlin/Pair;

    .line 65
    .line 66
    aput-object v2, v3, v1

    .line 67
    .line 68
    aput-object v4, v3, v5

    .line 69
    .line 70
    aput-object v6, v3, v0

    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_0
    sget-object v2, Lcm/f;->c:Lcm/f$a;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcm/f$a;->a()Lcm/f;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v6, "sb_show_save_to"

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    invoke-static {v2, v6, v1, v0, v7}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v2, v1

    .line 111
    :goto_0
    new-instance v6, Lkotlin/Pair;

    .line 112
    .line 113
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    sget v8, Lcom/transsnet/downloader/R$string;->help:I

    .line 118
    .line 119
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-direct {v6, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lkotlin/Pair;

    .line 127
    .line 128
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    sget v8, Lcom/transsnet/downloader/R$string;->delete:I

    .line 133
    .line 134
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-direct {v4, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-array v3, v0, [Lkotlin/Pair;

    .line 142
    .line 143
    aput-object v6, v3, v1

    .line 144
    .line 145
    aput-object v4, v3, v5

    .line 146
    .line 147
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    sget-object v3, Lij/o;->a:Lij/o;

    .line 152
    .line 153
    invoke-virtual {v3}, Lij/o;->i()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-nez v3, :cond_2

    .line 158
    .line 159
    new-instance v3, Lkotlin/Pair;

    .line 160
    .line 161
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    sget v6, Lcom/transsnet/downloader/R$string;->download_transfer_tips:I

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const-string v6, "transfer_file_2_mb"

    .line 172
    .line 173
    invoke-direct {v3, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    if-eqz v2, :cond_3

    .line 180
    .line 181
    new-instance v2, Lkotlin/Pair;

    .line 182
    .line 183
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    sget v4, Lcom/transsnet/downloader/R$string;->download_save_to_dot:I

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "transfer_file"

    .line 194
    .line 195
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_3
    move-object v0, v1

    .line 202
    :goto_1
    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Lcom/transsnet/downloader/popup/c;

    .line 209
    .line 210
    invoke-direct {v1, p0, p1}, Lcom/transsnet/downloader/popup/c;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->s0(Lkotlin/jvm/functions/Function3;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "more_Dialog"

    .line 217
    .line 218
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method private static final D(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string p2, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_5

    .line 7
    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    sparse-switch p2, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string p1, "transfer_file_2_mb"

    .line 17
    .line 18
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->P()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string p1, "audio_add"

    .line 30
    .line 31
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->n()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string p1, "feedback"

    .line 43
    .line 44
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->J()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string p2, "delete"

    .line 56
    .line 57
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->v(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :sswitch_4
    const-string p2, "transfer_file"

    .line 69
    .line 70
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v4, 0x6

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    move-object v0, p0

    .line 82
    move-object v1, p1

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager;->L(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x7810ceb0 -> :sswitch_4
        -0x4f997a55 -> :sswitch_3
        -0xb6a147b -> :sswitch_2
        0xb3c68b8 -> :sswitch_1
        0x40be0651 -> :sswitch_0
    .end sparse-switch
.end method

.method private final E(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget v3, Lcom/transsnet/downloader/R$string;->help:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "feedback"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget v4, Lcom/transsnet/downloader/R$string;->delete:I

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "delete"

    .line 33
    .line 34
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v1, v3, v4

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    aput-object v2, v3, v1

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/transsnet/downloader/popup/e;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Lcom/transsnet/downloader/popup/e;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->s0(Lkotlin/jvm/functions/Function3;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "more_Dialog"

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private static final F(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p4, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-eq p2, p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->v(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->J()V

    .line 17
    .line 18
    .line 19
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final G(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    .line 2
    .line 3
    new-instance v1, Lcom/transsnet/downloader/popup/l;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/transsnet/downloader/popup/l;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/transsnet/downloader/util/DocumentsUtils;->k(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private static final H(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onStoragePermissionGranted------- uri = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "SaveVideo"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    .line 31
    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1, p0, p2}, Lcom/transsnet/downloader/util/DocumentsUtils;->m(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 37
    .line 38
    .line 39
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method private final J()V
    .locals 3

    .line 1
    const-string v0, "/profile/user_center_labels_feedback"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "feedback_from_page"

    .line 8
    .line 9
    const-string v2, "SUBJECT_DOWNLOAD"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "subject_id"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic L(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->K(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final M(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lui/b;->a:Lui/b$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lui/b$a;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lui/b;->a:Lui/b$a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lui/b$a;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->t:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog$a;

    .line 31
    .line 32
    invoke-virtual {v1, v0, p2}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog$a;->a(Ljava/lang/String;Z)Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/transsnet/downloader/popup/g;

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    move-object v3, p0

    .line 40
    move-object v4, p1

    .line 41
    move-object v5, v0

    .line 42
    move v6, p2

    .line 43
    move-object v7, p3

    .line 44
    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/popup/g;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->I0(Lkotlin/jvm/functions/Function1;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lcom/transsnet/downloader/popup/h;

    .line 51
    .line 52
    invoke-direct {p2}, Lcom/transsnet/downloader/popup/h;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;->H0(Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "save_loading_Dialog"

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static final N(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lyw/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "pathInfo"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p5

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager;->z(Landroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final O()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/popup/PopupManager;->D(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/popup/PopupManager;->r(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager;->H(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->w(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/popup/PopupManager;->F(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/popup/PopupManager;->O()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->t(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/popup/PopupManager;->o()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->u(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lyw/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager;->N(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lyw/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/popup/PopupManager;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->y(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    move-object v3, v1

    .line 18
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v17

    .line 54
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v20

    .line 60
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 63
    .line 64
    .line 65
    move-result v22

    .line 66
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 69
    .line 70
    .line 71
    move-result v21

    .line 72
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v16

    .line 78
    iget-object v1, v0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v18

    .line 84
    new-instance v1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 85
    .line 86
    move-object v2, v1

    .line 87
    const v23, 0x11f80

    .line 88
    .line 89
    .line 90
    const/16 v24, 0x0

    .line 91
    .line 92
    const-string v9, ""

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v14, 0x0

    .line 99
    const/4 v15, 0x0

    .line 100
    const/16 v19, 0x0

    .line 101
    .line 102
    invoke-direct/range {v2 .. v24}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v6, Lcom/transsnet/downloader/popup/PopupManager$audioAddPlayList$1;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-direct {v6, v1, v2}, Lcom/transsnet/downloader/popup/PopupManager$audioAddPlayList$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    const/4 v7, 0x3

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private static final o()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final p()Lkotlin/Pair;
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v2

    .line 20
    move-object v3, v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lyw/f;

    .line 32
    .line 33
    invoke-virtual {v4}, Lyw/f;->c()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4}, Lyw/f;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    move-object v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "onStoragePermissionGranted\uff0c1  sdRootPath = "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v8, 0x4

    .line 65
    const/4 v9, 0x0

    .line 66
    const-string v5, "SaveVideo"

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v4, v0

    .line 70
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-lez v4, :cond_2

    .line 78
    .line 79
    sget-object v4, Lcom/transsnet/downloader/util/DocumentsUtils;->a:Lcom/transsnet/downloader/util/DocumentsUtils;

    .line 80
    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string v6, "getApp(...)"

    .line 86
    .line 87
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5, v1}, Lcom/transsnet/downloader/util/DocumentsUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, " check other permission, showOpenDocumentTree = "

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const/4 v8, 0x4

    .line 112
    const/4 v9, 0x0

    .line 113
    const-string v5, "SaveVideo"

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    move-object v4, v0

    .line 117
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    new-instance v0, Lkotlin/Pair;

    .line 123
    .line 124
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_2
    new-instance v0, Lkotlin/Pair;

    .line 131
    .line 132
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object v0
.end method

.method private final q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->p()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Lcom/transsnet/downloader/popup/f;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/f;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/transsnet/downloader/popup/PopupManager;->G(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->M(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private static final r(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->M(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final s()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget v1, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    sget-object v1, Lon/e0;->a:Lon/e0;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lon/e0;->s(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lcom/transsnet/downloader/popup/j;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/popup/j;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2, v3}, Lcom/transsnet/downloader/manager/g;->y(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    new-instance v2, Lcom/transsnet/downloader/popup/k;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/popup/k;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/manager/g;->m(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v2, 0x1

    .line 96
    if-ne v0, v2, :cond_4

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->x()Lep/a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v0, v1}, Lep/a;->a(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ne v0, v2, :cond_4

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    const-class v1, Lep/b;

    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lep/b;

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Lep/b;->hide()V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->x()Lep/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-interface {v0}, Lep/a;->stop()V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_1
    return-void
.end method

.method private static final t(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lon/e0;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final u(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_success:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->a:I

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lon/e0;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private final v(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/transsion/lib/push/R$string;->app_name:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget v0, Lcom/transsnet/downloader/R$string;->sdcard_name:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    .line 37
    .line 38
    sget v2, Lcom/transsnet/downloader/R$string;->cancel:I

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget v3, Lcom/transsnet/downloader/R$string;->delete:I

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget v4, Lcom/transsnet/downloader/R$string;->download_delete_tips:I

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    new-array v5, v5, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    aput-object v0, v5, v6

    .line 57
    .line 58
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/transsnet/downloader/popup/i;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/popup/i;-><init>(Lcom/transsnet/downloader/popup/PopupManager;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "confirm_Dialog"

    .line 76
    .line 77
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private static final w(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/downloader/popup/PopupManager;->s()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final x()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y(Z)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v1, Lcom/transsnet/downloader/R$string;->download_move_successful:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lcom/transsnet/downloader/R$string;->download_save_subtitle_tips:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v1, Lcom/transsnet/downloader/R$string;->download_save_successful:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget v2, Lcom/transsnet/downloader/R$string;->download_save_subtitle_tips:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_0
    return-object p1
.end method

.method private final z(Landroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, p0

    .line 14
    move v4, p4

    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p2

    .line 17
    move-object v7, p3

    .line 18
    move-object v8, p5

    .line 19
    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v4, v0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final A(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->d:Lcom/transsnet/downloader/adapter/u0$b;

    .line 7
    .line 8
    return-void
.end method

.method public final B(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager;->e:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public final I(Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "anchorView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const-string v1, "getContext(...)"

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->C(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->E(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final K(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->M(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/transsnet/downloader/popup/PopupManager$b;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager$b;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/popup/PopupManager;->q(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
