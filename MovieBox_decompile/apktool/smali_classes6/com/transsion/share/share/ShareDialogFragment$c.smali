.class public final Lcom/transsion/share/share/ShareDialogFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Loq/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/share/share/ShareDialogFragment;->B0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/transsion/share/share/ShareDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lnq/a;)V
    .locals 4

    .line 1
    const-string v0, "shareData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/share/share/ShareDialogFragment;->m0(Lcom/transsion/share/share/ShareDialogFragment;Lnq/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lnq/a;->c()Lcom/transsion/share/bean/ShareType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/transsion/share/bean/ShareType;->DELETE:Lcom/transsion/share/bean/ShareType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 22
    .line 23
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Llq/a;->a:Llq/a;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 32
    .line 33
    sget v1, Lcom/transsion/share/R$string;->player_no_network_tip2:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "getString(...)"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Llq/a;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/share/share/ShareDialogFragment;->k0(Lcom/transsion/share/share/ShareDialogFragment;)Lcom/transsion/share/share/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/transsion/share/share/ShareDialogFragment;->h0(Lcom/transsion/share/share/ShareDialogFragment;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/transsion/share/share/ShareDialogFragment;->i0(Lcom/transsion/share/share/ShareDialogFragment;)Lcom/transsion/share/bean/PostType;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {p1, v0, v1}, Lcom/transsion/share/share/a;->a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 72
    .line 73
    const-string v0, "delete"

    .line 74
    .line 75
    invoke-static {p1, v0, v3, v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->t0(Lcom/transsion/share/share/ShareDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p1}, Lnq/a;->c()Lcom/transsion/share/bean/ShareType;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lcom/transsion/share/bean/ShareType;->DOWNLOAD:Lcom/transsion/share/bean/ShareType;

    .line 90
    .line 91
    if-ne v0, v1, :cond_5

    .line 92
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v1, 0x1d

    .line 96
    .line 97
    if-lt v0, v1, :cond_3

    .line 98
    .line 99
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/transsion/share/share/ShareDialogFragment;->l0(Lcom/transsion/share/share/ShareDialogFragment;Lnq/a;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 107
    .line 108
    sget-object v1, Loq/o;->a:Loq/o;

    .line 109
    .line 110
    invoke-virtual {v1}, Loq/o;->c()[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2}, Lcom/transsion/share/share/ShareDialogFragment;->g0(Lcom/transsion/share/share/ShareDialogFragment;[Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 121
    .line 122
    invoke-static {v0, p1}, Lcom/transsion/share/share/ShareDialogFragment;->l0(Lcom/transsion/share/share/ShareDialogFragment;Lnq/a;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 127
    .line 128
    invoke-virtual {v1}, Loq/o;->c()[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v1, 0xb

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p1}, Lnq/a;->c()Lcom/transsion/share/bean/ShareType;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Lcom/transsion/share/bean/ShareType;->CHECKOUT:Lcom/transsion/share/bean/ShareType;

    .line 143
    .line 144
    if-ne v0, v1, :cond_7

    .line 145
    .line 146
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/transsion/share/share/ShareDialogFragment;->k0(Lcom/transsion/share/share/ShareDialogFragment;)Lcom/transsion/share/share/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/transsion/share/share/ShareDialogFragment;->h0(Lcom/transsion/share/share/ShareDialogFragment;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {p1, v0}, Lcom/transsion/share/share/a;->d(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 164
    .line 165
    const-string v0, "checkout"

    .line 166
    .line 167
    invoke-static {p1, v0, v3, v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->t0(Lcom/transsion/share/share/ShareDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    invoke-virtual {p1}, Lnq/a;->c()Lcom/transsion/share/bean/ShareType;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sget-object v1, Lcom/transsion/share/bean/ShareType;->REPORT:Lcom/transsion/share/bean/ShareType;

    .line 181
    .line 182
    if-ne v0, v1, :cond_8

    .line 183
    .line 184
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 185
    .line 186
    const-string v0, "report"

    .line 187
    .line 188
    invoke-static {p1, v0, v3, v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->t0(Lcom/transsion/share/share/ShareDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    sget-object p1, Llq/a;->a:Llq/a;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "requireContext(...)"

    .line 200
    .line 201
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 205
    .line 206
    invoke-static {v1}, Lcom/transsion/share/share/ShareDialogFragment;->j0(Lcom/transsion/share/share/ShareDialogFragment;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/transsion/share/share/ShareDialogFragment;->h0(Lcom/transsion/share/share/ShareDialogFragment;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget-object v3, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 217
    .line 218
    invoke-static {v3}, Lcom/transsion/share/share/ShareDialogFragment;->k0(Lcom/transsion/share/share/ShareDialogFragment;)Lcom/transsion/share/share/a;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {p1, v0, v1, v2, v3}, Llq/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/share/share/a;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/transsion/share/share/ShareDialogFragment$c;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 232
    .line 233
    invoke-static {v0, p1}, Lcom/transsion/share/share/ShareDialogFragment;->l0(Lcom/transsion/share/share/ShareDialogFragment;Lnq/a;)V

    .line 234
    .line 235
    .line 236
    :goto_0
    return-void
.end method
