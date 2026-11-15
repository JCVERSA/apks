.class public Lf/e;
.super Lf/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/e$a;
    }
.end annotation


# static fields
.field public static final b:Lf/e$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lf/e;->b:Lf/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lf/e;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lf/a;-><init>()V

    .line 4
    iput p1, p0, Lf/e;->a:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max items must be higher than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lf/e;->b:Lf/e$a;

    invoke-virtual {p1}, Lf/e$a;->a()I

    move-result p1

    :cond_0
    invoke-direct {p0, p1}, Lf/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Landroidx/activity/result/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lf/e;->d(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/Object;)Lf/a$a;
    .locals 0

    .line 1
    check-cast p2, Landroidx/activity/result/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lf/e;->e(Landroid/content/Context;Landroidx/activity/result/e;)Lf/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/e;->f(ILandroid/content/Intent;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroid/content/Context;Landroidx/activity/result/e;)Landroid/content/Intent;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lf/g;->a:Lf/g$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lf/g$a;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "android.provider.action.PICK_IMAGES"

    .line 23
    .line 24
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/activity/result/e;->d()Lf/g$f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lf/g$a;->b(Lf/g$f;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lf/e;->a:I

    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/activity/result/e;->c()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-le v0, v2, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lf/d;->a()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-gt v0, v1, :cond_0

    .line 55
    .line 56
    const-string v1, "android.provider.extra.PICK_IMAGES_MAX"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/activity/result/e;->b()Lf/g$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lf/g$b;->a()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const-string v1, "android.provider.extra.PICK_IMAGES_LAUNCH_TAB"

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string v0, "android.provider.extra.PICK_IMAGES_IN_ORDER"

    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/activity/result/e;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroidx/activity/result/e;->e()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    const-string v0, "android.provider.extra.PICK_IMAGES_ACCENT_COLOR"

    .line 90
    .line 91
    invoke-virtual {p2}, Landroidx/activity/result/e;->a()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p2, "Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_1
    invoke-virtual {v0, p1}, Lf/g$a;->c(Landroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lf/g$a;->a(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 121
    .line 122
    new-instance v1, Landroid/content/Intent;

    .line 123
    .line 124
    const-string v3, "androidx.activity.result.contract.action.PICK_IMAGES"

    .line 125
    .line 126
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroidx/activity/result/e;->d()Lf/g$f;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lf/g$a;->b(Lf/g$f;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    iget p1, p0, Lf/e;->a:I

    .line 150
    .line 151
    invoke-virtual {p2}, Landroidx/activity/result/e;->c()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-le p1, v2, :cond_3

    .line 160
    .line 161
    const-string v0, "androidx.activity.result.contract.extra.PICK_IMAGES_MAX"

    .line 162
    .line 163
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroidx/activity/result/e;->b()Lf/g$b;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lf/g$b;->a()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    const-string v0, "androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB"

    .line 175
    .line 176
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    const-string p1, "androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER"

    .line 180
    .line 181
    invoke-virtual {p2}, Landroidx/activity/result/e;->f()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroidx/activity/result/e;->e()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_2

    .line 193
    .line 194
    const-string p1, "androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR"

    .line 195
    .line 196
    invoke-virtual {p2}, Landroidx/activity/result/e;->a()J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    :cond_2
    move-object p1, v1

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p2, "Max items must be greater than 1"

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    const-string p2, "Required value was null."

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 222
    .line 223
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 224
    .line 225
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroidx/activity/result/e;->d()Lf/g$f;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {v0, p2}, Lf/g$a;->b(Lf/g$f;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 240
    .line 241
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    if-nez p2, :cond_6

    .line 249
    .line 250
    const-string p2, "*/*"

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    const-string p2, "image/*"

    .line 256
    .line 257
    const-string v0, "video/*"

    .line 258
    .line 259
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    const-string v0, "android.intent.extra.MIME_TYPES"

    .line 264
    .line 265
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    :cond_6
    :goto_0
    return-object p1
.end method

.method public final e(Landroid/content/Context;Landroidx/activity/result/e;)Lf/a$a;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "input"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public final f(ILandroid/content/Intent;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    sget-object p1, Lf/c;->a:Lf/c$a;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lf/c$a;->a(Landroid/content/Intent;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_2
    return-object p1
.end method
