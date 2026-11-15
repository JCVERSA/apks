.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "A0",
        "z0",
        "w0",
        "",
        "moduleName",
        "v0",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;",
        "infoBean",
        "D0",
        "(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
        "c",
        "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;",
        "lotteryUserActivityInfoBean",
        "Lsj/f;",
        "d",
        "Lsj/f;",
        "bind",
        "Lcom/transsion/commercialization/task/treasure/b;",
        "e",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/transsion/commercialization/task/treasure/b;",
        "iTreasureApi",
        "",
        "f",
        "Z",
        "isDisplayed",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

.field private d:Lsj/f;

.field private final e:Lkotlin/Lazy;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/commercialization/R$layout;->dialog_treasure_wheel_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/commercialization/task/wheel/h;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/commercialization/task/wheel/h;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->e:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method

.method private final A0()V
    .locals 5

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getPriceItems()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v3

    .line 18
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " --> render() --> priceItems = "

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getPriceItems()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    invoke-virtual {v0, v3}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setWheelItems(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    sget v1, Lcom/transsion/wrapperad/R$drawable;->treasure_wheel_center_indicator:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setCenterIndicator(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    const/high16 v1, 0x41a00000    # 20.0f

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setStartAngularSpeed(F)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    const v1, 0x3ee66666    # 0.45f

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setImageSizeRatio(F)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    const v1, 0x3f266666    # 0.65f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setImageRadiusRatio(F)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    iget-object v0, v0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    new-instance v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setOnWheelStateListener(Lcom/transsion/commercialization/task/wheel/e;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    sget-object v0, Ldi/c;->a:Ldi/c;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 133
    .line 134
    const-string v2, ""

    .line 135
    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getFirstTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getText()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-nez v1, :cond_9

    .line 155
    .line 156
    :cond_8
    move-object v1, v2

    .line 157
    :cond_9
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 158
    .line 159
    if-eqz v3, :cond_a

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-eqz v3, :cond_a

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getFirstTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getHighlightText()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-nez v3, :cond_b

    .line 178
    .line 179
    :cond_a
    move-object v3, v2

    .line 180
    :cond_b
    const-string v4, "#59D440"

    .line 181
    .line 182
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {v0, v1, v3, v4}, Ldi/c;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 191
    .line 192
    if-eqz v3, :cond_c

    .line 193
    .line 194
    iget-object v3, v3, Lsj/f;->f:Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v3, :cond_c

    .line 197
    .line 198
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    :cond_c
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 202
    .line 203
    if-eqz v1, :cond_d

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_d

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getSecondTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_d

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getText()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_e

    .line 222
    .line 223
    :cond_d
    move-object v1, v2

    .line 224
    :cond_e
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 225
    .line 226
    if-eqz v3, :cond_10

    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-eqz v3, :cond_10

    .line 233
    .line 234
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getSecondTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-eqz v3, :cond_10

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getHighlightText()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-nez v3, :cond_f

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_f
    move-object v2, v3

    .line 248
    :cond_10
    :goto_1
    const-string v3, "#94DA02"

    .line 249
    .line 250
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    const-string v4, "#FFFFFF"

    .line 255
    .line 256
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-virtual {v0, v1, v2, v3, v4}, Ldi/c;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableString;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 265
    .line 266
    if-eqz v1, :cond_11

    .line 267
    .line 268
    iget-object v1, v1, Lsj/f;->g:Landroid/widget/TextView;

    .line 269
    .line 270
    if-eqz v1, :cond_11

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    :cond_11
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 276
    .line 277
    if-eqz v0, :cond_12

    .line 278
    .line 279
    iget-object v0, v0, Lsj/f;->e:Landroid/widget/TextView;

    .line 280
    .line 281
    if-eqz v0, :cond_12

    .line 282
    .line 283
    new-instance v1, Lcom/transsion/commercialization/task/wheel/f;

    .line 284
    .line 285
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/f;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    :cond_12
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 292
    .line 293
    if-eqz v0, :cond_13

    .line 294
    .line 295
    iget-object v0, v0, Lsj/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 296
    .line 297
    if-eqz v0, :cond_13

    .line 298
    .line 299
    new-instance v1, Lcom/transsion/commercialization/task/wheel/g;

    .line 300
    .line 301
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/g;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    :cond_13
    return-void
.end method

.method private static final B0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/tn/lib/widget/R$string;->no_network:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, " --> lotteryDraw() --> \u65e0\u7f51\u7edc\u76f4\u63a5\u62d2\u7edd\u64cd\u4f5c"

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->startIndicator()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private static final C0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "close"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->v0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->B0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->y0()Lcom/transsion/commercialization/task/treasure/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->C0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->v0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lsj/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/commercialization/task/treasure/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->x0()Lcom/transsion/commercialization/task/treasure/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v0(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "dialog_name"

    .line 13
    .line 14
    const-string v3, "lucky_wheel"

    .line 15
    .line 16
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v2, "module_name"

    .line 20
    .line 21
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "getSimpleName(...)"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private final w0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->f:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-string v2, "dialog_name"

    .line 21
    .line 22
    const-string v3, "lucky_wheel"

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lqi/h;->a:Lqi/h;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v3, "getSimpleName(...)"

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1, v0}, Lqi/h;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private final x0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final y0()Lcom/transsion/commercialization/task/treasure/b;
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
    const-class v1, Lcom/transsion/commercialization/task/treasure/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private final z0()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final D0(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 2
    .line 3
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/tn/lib/widget/R$style;->BaseDialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->w0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p1}, Lsj/f;->a(Landroid/view/View;)Lsj/f;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lsj/f;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->A0()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
