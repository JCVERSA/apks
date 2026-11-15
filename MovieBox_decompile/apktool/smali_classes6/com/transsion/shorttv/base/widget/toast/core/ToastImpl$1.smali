.class Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->lambda$run$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/toast/core/i;->a()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lkr/a;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, -0x2

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Lkr/a;->getView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    instance-of v1, v1, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Lkr/a;->getView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-float v1, v1

    .line 80
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v1, v2

    .line 86
    :goto_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 89
    .line 90
    .line 91
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    .line 93
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    .line 95
    const/4 v1, -0x3

    .line 96
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 97
    .line 98
    const v1, 0x1030004

    .line 99
    .line 100
    .line 101
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Lkr/a;->a()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    const/16 v1, 0x88

    .line 116
    .line 117
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const/16 v1, 0x98

    .line 121
    .line 122
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    .line 124
    :goto_1
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->a(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iput-object v1, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v1}, Lkr/a;->getGravity()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    .line 144
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Lkr/a;->getXOffset()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 155
    .line 156
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 157
    .line 158
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Lkr/a;->getYOffset()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 167
    .line 168
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 169
    .line 170
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-interface {v1}, Lkr/a;->getVerticalMargin()F

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 179
    .line 180
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 181
    .line 182
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v1}, Lkr/a;->getHorizontalMargin()F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 191
    .line 192
    const-string v1, "window"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Landroid/view/WindowManager;

    .line 199
    .line 200
    if-nez v0, :cond_4

    .line 201
    .line 202
    return-void

    .line 203
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 204
    .line 205
    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v1}, Lkr/a;->getView()Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->d()Landroid/os/Handler;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v1, Lcom/transsion/shorttv/base/widget/toast/core/f;

    .line 221
    .line 222
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/base/widget/toast/core/f;-><init>(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lkr/a;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v2}, Lkr/a;->getDuration()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    const/4 v3, 0x1

    .line 236
    if-ne v2, v3, :cond_5

    .line 237
    .line 238
    const-wide/16 v4, 0xdac

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    const-wide/16 v4, 0x7d0

    .line 242
    .line 243
    :goto_2
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 247
    .line 248
    invoke-static {v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/widget/toast/core/i;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$1;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :catch_0
    move-exception v0

    .line 264
    goto :goto_3

    .line 265
    :catch_1
    move-exception v0

    .line 266
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :cond_6
    :goto_4
    return-void
.end method
