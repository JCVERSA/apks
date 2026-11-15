.class public final Lh7/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/d$a;
    }
.end annotation


# static fields
.field public static final g:Lh7/d$a;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lh7/f;

.field private d:Lh7/f;

.field private final e:Ljava/util/ArrayList;

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh7/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lh7/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lh7/d;->g:Lh7/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lh7/d;->a:Landroid/view/View;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lh7/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lh7/d;->l(Lh7/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lh7/d;Lh7/e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh7/d;->e(Lh7/d;Lh7/e;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Lh7/e;)Lh7/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-le p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0
.end method

.method private final d(Landroid/widget/Button;Lh7/e;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lh7/e;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lh7/e;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lh7/e;->c()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lh7/c;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lh7/c;-><init>(Lh7/d;Lh7/e;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final e(Lh7/d;Lh7/e;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$buttonInfo"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lh7/d;->f()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lh7/e;->a()Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    invoke-virtual {p1, p0}, Lh7/e;->e(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh7/d;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Lh7/d;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh7/d;->f:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lh7/d;->f:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lh7/d;->b:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lh7/d;->b:Landroid/widget/PopupWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :catchall_0
    return-void
.end method

.method public final h(Ljava/lang/String;)Lh7/d;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lh7/f;->d:Lh7/f$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh7/f$a;->a(Ljava/lang/String;)Lh7/f;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lh7/d;->d:Lh7/f;

    .line 13
    .line 14
    return-object p0
.end method

.method public final i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lh7/d;
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lh7/e;->e:Lh7/e$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lh7/e$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lh7/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lh7/d;->c(Lh7/e;)Lh7/d;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lh7/d;
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lh7/f;->d:Lh7/f$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh7/f$a;->b(Ljava/lang/String;)Lh7/f;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lh7/d;->c:Lh7/f;

    .line 13
    .line 14
    return-object p0
.end method

.method public final k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lh7/d;->c:Lh7/f;

    .line 2
    .line 3
    const-string v1, "CustomDialog"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lh7/f;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lh7/d;->d:Lh7/f;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lh7/f;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "Custom dialog show failed, title and message and buttons is all empty."

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lh7/d;->g()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget v2, Lcom/cloud/hisavana/sdk/R$layout;->hs_custom_dialog_layout:I

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "inflate(...)"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Landroid/widget/FrameLayout;

    .line 77
    .line 78
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "#33000000"

    .line 86
    .line 87
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    .line 96
    const/4 v4, -0x2

    .line 97
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/16 v4, 0x11

    .line 101
    .line 102
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    .line 104
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Landroid/widget/PopupWindow;

    .line 110
    .line 111
    const/4 v4, -0x1

    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-direct {v3, v2, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Lh7/d;->b:Landroid/widget/PopupWindow;

    .line 117
    .line 118
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_title:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    iget-object v3, p0, Lh7/d;->c:Lh7/f;

    .line 129
    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    invoke-virtual {v3}, Lh7/f;->b()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Lh7/f;->c()F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Lh7/f;->a()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_1
    :goto_0
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_message:I

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    .line 168
    .line 169
    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v5}, Landroid/view/View;->setOverScrollMode(I)V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lh7/d;->d:Lh7/f;

    .line 179
    .line 180
    if-eqz v3, :cond_2

    .line 181
    .line 182
    invoke-virtual {v3}, Lh7/f;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Lh7/f;->c()F

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Lh7/f;->a()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .line 202
    .line 203
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    const/4 v4, 0x2

    .line 208
    if-ne v3, v4, :cond_3

    .line 209
    .line 210
    const/high16 v3, 0x42b40000    # 90.0f

    .line 211
    .line 212
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const/high16 v3, 0x43960000    # 300.0f

    .line 218
    .line 219
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 224
    .line 225
    .line 226
    :cond_4
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->dialog_button1:I

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Landroid/widget/Button;

    .line 233
    .line 234
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->dialog_button2:I

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Landroid/widget/Button;

    .line 241
    .line 242
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->separator_v:I

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v4, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    const/16 v6, 0x8

    .line 255
    .line 256
    const/4 v7, 0x1

    .line 257
    if-eqz v4, :cond_8

    .line 258
    .line 259
    if-nez v2, :cond_5

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :goto_2
    if-nez v3, :cond_6

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_6
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    :goto_3
    if-nez v0, :cond_7

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_8
    iget-object v4, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lh7/e;

    .line 285
    .line 286
    invoke-direct {p0, v2, v4}, Lh7/d;->d(Landroid/widget/Button;Lh7/e;)V

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-ne v2, v7, :cond_b

    .line 296
    .line 297
    if-nez v3, :cond_9

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_9
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    :goto_4
    if-nez v0, :cond_a

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_a
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_b
    iget-object v0, p0, Lh7/d;->e:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v2, "get(...)"

    .line 317
    .line 318
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    check-cast v0, Lh7/e;

    .line 322
    .line 323
    invoke-direct {p0, v3, v0}, Lh7/d;->d(Landroid/widget/Button;Lh7/e;)V

    .line 324
    .line 325
    .line 326
    :goto_5
    iget-object v0, p0, Lh7/d;->b:Landroid/widget/PopupWindow;

    .line 327
    .line 328
    if-eqz v0, :cond_d

    .line 329
    .line 330
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 331
    .line 332
    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    .line 337
    .line 338
    sget v2, Landroidx/appcompat/R$style;->Animation_AppCompat_Dialog:I

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 353
    .line 354
    .line 355
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 356
    .line 357
    const/16 v3, 0x1d

    .line 358
    .line 359
    if-lt v2, v3, :cond_c

    .line 360
    .line 361
    invoke-static {v0, v7}, Lh7/a;->a(Landroid/widget/PopupWindow;Z)V

    .line 362
    .line 363
    .line 364
    :cond_c
    new-instance v2, Lh7/b;

    .line 365
    .line 366
    invoke-direct {v2, p0}, Lh7/b;-><init>(Lh7/d;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 373
    .line 374
    .line 375
    iget-object v2, p0, Lh7/d;->a:Landroid/view/View;

    .line 376
    .line 377
    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .line 379
    .line 380
    goto :goto_7

    .line 381
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v4, "Show custom dialog failed, error: "

    .line 391
    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_7
    return-void
.end method
