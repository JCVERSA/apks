.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/p2$d;
.implements Lcom/google/android/exoplayer2/ui/n0$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public l(Lcom/google/android/exoplayer2/ui/n0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/p2$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->c(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/p2$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/p2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-ne v1, p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->n()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne v1, p1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->f()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-ne v1, p1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v1, 0x4

    .line 58
    if-eq p1, v1, :cond_b

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->w()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-ne v1, p1, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->x()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-ne v1, p1, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 87
    .line 88
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/p2;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-ne v1, p1, :cond_6

    .line 100
    .line 101
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getRepeatMode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/f0;->a(II)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/p2;->setRepeatMode(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-ne v1, p1, :cond_7

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getShuffleModeEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    xor-int/lit8 p1, p1, 0x1

    .line 133
    .line 134
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/p2;->setShuffleModeEnabled(Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-ne v0, p1, :cond_8

    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-ne v0, p1, :cond_9

    .line 172
    .line 173
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-ne v0, p1, :cond_a

    .line 199
    .line 200
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-ne v0, p1, :cond_b

    .line 226
    .line 227
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 237
    .line 238
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 243
    .line 244
    .line 245
    :cond_b
    :goto_0
    return-void
.end method

.method public synthetic onCues(Lda/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->d(Lcom/google/android/exoplayer2/p2$d;Lda/f;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->e(Lcom/google/android/exoplayer2/p2$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->f(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->g(Lcom/google/android/exoplayer2/p2$d;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/p2$c;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    const/16 v0, 0xb

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/4 v3, 0x7

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x5

    .line 11
    filled-new-array {v4, v5}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/p2$c;->b([I)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 22
    .line 23
    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    filled-new-array {v4, v5, v3}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/p2$c;->b([I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 37
    .line 38
    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/p2$c;->a(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/p2$c;->a(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    new-array v1, v3, [I

    .line 64
    .line 65
    fill-array-data v1, :array_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/p2$c;->b([I)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    filled-new-array {v0, p1}, [I

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/p2$c;->b([I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    const/16 p1, 0xc

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/p2$c;->a(I)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    const/4 p1, 0x2

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/p2$c;->a(I)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->i(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->j(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->k(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/w1;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->m(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/w1;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/b2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->n(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/b2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->o(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->p(Lcom/google/android/exoplayer2/p2$d;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/o2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->q(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/o2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->r(Lcom/google/android/exoplayer2/p2$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->s(Lcom/google/android/exoplayer2/p2$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->t(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->u(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->v(Lcom/google/android/exoplayer2/p2$d;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->x(Lcom/google/android/exoplayer2/p2$d;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/r2;->y(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->A(Lcom/google/android/exoplayer2/p2$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/r2;->D(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->E(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->F(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->G(Lcom/google/android/exoplayer2/p2$d;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/l3;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->H(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/l3;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lna/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->I(Lcom/google/android/exoplayer2/p2$d;Lna/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/q3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->J(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/q3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->K(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/video/y;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->L(Lcom/google/android/exoplayer2/p2$d;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/ui/n0;JZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 5
    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/p2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/p2;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/p2;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/ui/n0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
