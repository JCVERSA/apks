.class public final Lcom/transsion/publish/ui/FilmReviewFragment$c;
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


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Llo/h;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v2, Llo/h;->c:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_a

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v3, Lcom/transsion/publish/ui/FilmReviewActivity;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/transsion/publish/ui/FilmReviewFragment;->isPostEnable()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/transsion/publish/ui/FilmReviewActivity;->j0(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v4, 0x3e3

    .line 62
    .line 63
    if-lt v3, v4, :cond_2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Llo/h;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object v3, v3, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    sget v4, Lcom/tn/lib/widget/R$color;->error_50:I

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Lcom/transsion/publish/view/operation/OperationBarView;->setInputLimitColor(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Llo/h;

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    iget-object v3, v3, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    sget v4, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lcom/transsion/publish/view/operation/OperationBarView;->setInputLimitColor(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 109
    .line 110
    invoke-static {v4}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getDESC_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-lt v3, v4, :cond_a

    .line 115
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_9

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move-object v1, v0

    .line 134
    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 142
    .line 143
    invoke-static {v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getDESC_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-le v1, v3, :cond_9

    .line 148
    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->access$getDESC_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Llo/h;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 176
    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    if-eqz v0, :cond_7

    .line 183
    .line 184
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Llo/h;

    .line 191
    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 195
    .line 196
    if-eqz p1, :cond_7

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Llo/h;

    .line 212
    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 216
    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    :cond_8
    invoke-virtual {p1, v2}, Lcom/transsion/publish/view/operation/OperationBarView;->updateInputNum(I)V

    .line 226
    .line 227
    .line 228
    :cond_9
    return-void

    .line 229
    :cond_a
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$c;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Llo/h;

    .line 236
    .line 237
    if-eqz p1, :cond_c

    .line 238
    .line 239
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 240
    .line 241
    if-eqz p1, :cond_c

    .line 242
    .line 243
    if-eqz v1, :cond_b

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    :cond_b
    invoke-virtual {p1, v2}, Lcom/transsion/publish/view/operation/OperationBarView;->updateInputNum(I)V

    .line 250
    .line 251
    .line 252
    :cond_c
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
