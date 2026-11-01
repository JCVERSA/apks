.class public final Lru/zdevs/zarchiver/ZArchiver$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$i;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f070038

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver$i;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0x7f07002f

    .line 18
    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const v0, 0x7f070028

    .line 28
    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p2}, Lru/zdevs/zarchiver/ZArchiver;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v3, p1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2
    :goto_0
    iget-object p2, v3, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 46
    .line 47
    iget-object p2, p2, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 48
    .line 49
    invoke-virtual {p2, v3, v2}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return v2
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$i;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lv0/b;->i(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Lb0/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const v1, 0x7f090009

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7f090008

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 49
    .line 50
    .line 51
    const v1, 0x7f090004

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 58
    .line 59
    iget-char p1, p1, Lru/zdevs/zarchiver/d;->a:C

    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    const v2, 0x7f070038

    .line 64
    .line 65
    .line 66
    const v3, 0x7f070006

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    const v5, 0x7f07002f

    .line 71
    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    const v7, 0x7f070024

    .line 75
    .line 76
    .line 77
    const/4 v8, 0x5

    .line 78
    const/4 v9, 0x4

    .line 79
    const v10, 0x7f07002a

    .line 80
    .line 81
    .line 82
    const/4 v11, 0x1

    .line 83
    const/4 v12, 0x0

    .line 84
    if-eq p1, v1, :cond_5

    .line 85
    .line 86
    const/16 v1, 0x11

    .line 87
    .line 88
    if-ne p1, v1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/16 v1, 0x41

    .line 92
    .line 93
    if-ne p1, v1, :cond_4

    .line 94
    .line 95
    new-array p1, v8, [I

    .line 96
    .line 97
    aput v10, p1, v12

    .line 98
    .line 99
    aput v7, p1, v11

    .line 100
    .line 101
    aput v2, p1, v6

    .line 102
    .line 103
    aput v3, p1, v4

    .line 104
    .line 105
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 106
    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    :cond_3
    aput v5, p1, v9

    .line 111
    .line 112
    invoke-static {p2, p1, v12}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    invoke-interface {p1, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    :goto_0
    new-array p1, v8, [I

    .line 127
    .line 128
    aput v10, p1, v12

    .line 129
    .line 130
    aput v7, p1, v11

    .line 131
    .line 132
    aput v5, p1, v6

    .line 133
    .line 134
    aput v3, p1, v4

    .line 135
    .line 136
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    :cond_6
    aput v2, p1, v9

    .line 142
    .line 143
    invoke-static {p2, p1, v12}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_1
    new-array p1, v11, [I

    .line 147
    .line 148
    const v1, 0x7f070028

    .line 149
    .line 150
    .line 151
    aput v1, p1, v12

    .line 152
    .line 153
    invoke-static {p2, p1, v11}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 154
    .line 155
    .line 156
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 157
    .line 158
    invoke-virtual {p1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const/16 p2, 0x80

    .line 163
    .line 164
    invoke-static {p2}, Lt0/b;->l(I)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_a

    .line 169
    .line 170
    const/4 v1, 0x7

    .line 171
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iget v2, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    iget-object v1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 180
    .line 181
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v1}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    const/16 v1, 0x20

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    :cond_8
    new-instance v1, Lh0/h;

    .line 198
    .line 199
    sget-object v3, Lt0/b;->b:[Ljava/lang/String;

    .line 200
    .line 201
    aget-object v3, v3, v2

    .line 202
    .line 203
    invoke-direct {v1, v3}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2, p2, v1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_9
    const/16 v1, 0x43

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_a

    .line 217
    .line 218
    invoke-virtual {p1, v9}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 225
    .line 226
    invoke-virtual {v1}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 231
    .line 232
    new-instance v3, Lh0/h;

    .line 233
    .line 234
    invoke-static {v1}, La0/c;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-direct {v3, v1}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2, p2, v3}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 242
    .line 243
    .line 244
    :cond_a
    :goto_2
    iget-object p2, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 245
    .line 246
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    if-eqz p2, :cond_b

    .line 251
    .line 252
    invoke-virtual {p2}, Ld0/h;->h()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v12}, Ld0/h;->m(Z)V

    .line 256
    .line 257
    .line 258
    :cond_b
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_c

    .line 263
    .line 264
    iget-object p2, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 265
    .line 266
    iget p1, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 267
    .line 268
    invoke-virtual {v0, p1, v12, p2}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 269
    .line 270
    .line 271
    :cond_c
    const p1, 0x7f0c00fc

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 275
    .line 276
    .line 277
    return v11
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    .line 1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$i;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lv0/b;->i(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    const/4 v3, 0x2

    .line 39
    if-ge p1, v3, :cond_3

    .line 40
    .line 41
    iget-object v3, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-virtual {v3, v4}, Ld0/h;->m(Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 57
    .line 58
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 64
    .line 65
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$i;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    iget-object v1, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 12
    .line 13
    iget-object v2, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 14
    .line 15
    iget v1, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 16
    .line 17
    aget-object v1, v2, v1

    .line 18
    .line 19
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 20
    .line 21
    invoke-virtual {v1}, Lh0/h;->r()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lx0/g;->c(Ljava/lang/String;)B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-object p1, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 33
    .line 34
    invoke-virtual {p1}, Lru/zdevs/zarchiver/d;->e()B

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const v1, 0x7f070031

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ne p1, v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    const v1, 0x7f070032

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x4

    .line 63
    if-ne p1, v2, :cond_1

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {p2}, Lz0/e;->m(Landroid/view/Menu;)V

    .line 70
    .line 71
    .line 72
    return v0
.end method
