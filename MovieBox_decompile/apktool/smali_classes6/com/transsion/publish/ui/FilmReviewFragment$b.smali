.class public final Lcom/transsion/publish/ui/FilmReviewFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/FilmReviewFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-lez v1, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$isBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_5

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Llo/h;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v2, Llo/h;->d:Landroid/widget/EditText;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    .line 37
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Landroid/graphics/Typeface;

    .line 40
    .line 41
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Llo/h;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, v2, Llo/h;->d:Landroid/widget/EditText;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$setBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 68
    .line 69
    invoke-static {v2, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$setBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Llo/h;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iget-object v2, v2, Llo/h;->d:Landroid/widget/EditText;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 87
    .line 88
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Landroid/graphics/Typeface;

    .line 91
    .line 92
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Llo/h;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget-object v2, v2, Llo/h;->d:Landroid/widget/EditText;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    add-int/lit8 v2, v2, -0x14

    .line 119
    .line 120
    if-lt v1, v2, :cond_7

    .line 121
    .line 122
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-gt v1, v2, :cond_7

    .line 129
    .line 130
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Llo/h;

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    iget-object v2, v2, Llo/h;->w:Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v2, :cond_6

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :cond_6
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Llo/h;

    .line 154
    .line 155
    if-eqz v2, :cond_8

    .line 156
    .line 157
    iget-object v2, v2, Llo/h;->w:Landroid/widget/TextView;

    .line 158
    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 162
    .line 163
    invoke-static {v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    sub-int/2addr v3, v1

    .line 168
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Llo/h;

    .line 183
    .line 184
    if-eqz v2, :cond_8

    .line 185
    .line 186
    iget-object v2, v2, Llo/h;->w:Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v2, :cond_8

    .line 189
    .line 190
    const/16 v3, 0x8

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 196
    .line 197
    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-le v1, v2, :cond_b

    .line 202
    .line 203
    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 204
    .line 205
    sget v2, Lcom/transsion/publish/R$string;->post_title_length_max:I

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_b

    .line 215
    .line 216
    if-eqz p1, :cond_9

    .line 217
    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    goto :goto_3

    .line 227
    :cond_9
    const/4 v1, 0x0

    .line 228
    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 236
    .line 237
    invoke-static {v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-le v1, v2, :cond_b

    .line 242
    .line 243
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 244
    .line 245
    invoke-static {v1}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Llo/h;

    .line 264
    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    iget-object v0, v0, Llo/h;->d:Landroid/widget/EditText;

    .line 268
    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$b;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Llo/h;

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    iget-object v0, v0, Llo/h;->d:Landroid/widget/EditText;

    .line 285
    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 293
    .line 294
    .line 295
    :cond_b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
