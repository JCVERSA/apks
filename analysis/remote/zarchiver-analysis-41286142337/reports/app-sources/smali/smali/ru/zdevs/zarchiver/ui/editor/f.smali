.class public final Lru/zdevs/zarchiver/ui/editor/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z[II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    aget p0, p1, v1

    .line 6
    .line 7
    if-ge p2, p0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    aput p2, p1, v0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    aput p2, p1, v0

    .line 14
    .line 15
    aput p2, p1, v1

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public static b(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-le v2, v5, :cond_5

    .line 25
    .line 26
    sub-int/2addr v5, v4

    .line 27
    aput v5, v0, v4

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    if-lez v2, :cond_5

    .line 31
    .line 32
    sub-int/2addr v2, v4

    .line 33
    aput v2, v0, v1

    .line 34
    .line 35
    aput v2, v0, v4

    .line 36
    .line 37
    return v4

    .line 38
    :cond_3
    if-eqz v3, :cond_4

    .line 39
    .line 40
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 41
    .line 42
    if-ge v5, p0, :cond_5

    .line 43
    .line 44
    add-int/2addr v5, v4

    .line 45
    aput v5, v0, v4

    .line 46
    .line 47
    return v4

    .line 48
    :cond_4
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 49
    .line 50
    if-ge v2, p0, :cond_5

    .line 51
    .line 52
    add-int/2addr v2, v4

    .line 53
    aput v2, v0, v1

    .line 54
    .line 55
    aput v2, v0, v4

    .line 56
    .line 57
    return v4

    .line 58
    :cond_5
    return v1
.end method

.method public static c(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    :goto_0
    aget v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 38
    .line 39
    and-int/2addr p0, v4

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_3
    sub-int v1, v3, v1

    .line 44
    .line 45
    :goto_1
    add-int/2addr v3, v1

    .line 46
    invoke-static {v2, v0, v3}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_4
    return v1
.end method

.method public static d(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    cmpg-float v4, v2, v4

    .line 17
    .line 18
    if-gtz v4, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-float p0, p0

    .line 26
    div-float/2addr p0, v2

    .line 27
    float-to-int p0, p0

    .line 28
    const/4 v2, 0x1

    .line 29
    aget v4, v0, v2

    .line 30
    .line 31
    if-eq v4, v3, :cond_2

    .line 32
    .line 33
    aget v5, v0, v1

    .line 34
    .line 35
    if-eq v5, v4, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_0
    aget v4, v0, v2

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    neg-int p0, p0

    .line 48
    :cond_3
    add-int/2addr v4, p0

    .line 49
    if-gez v4, :cond_4

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    :cond_4
    iget-object p0, p1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-lt v4, p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/lit8 v4, p0, -0x1

    .line 65
    .line 66
    :cond_5
    invoke-virtual {p1, v4}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 73
    .line 74
    invoke-static {v2, v0, p0}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :cond_6
    return v1
.end method

.method public static e(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    :goto_0
    aget v5, v0, v2

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {p0, v6}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v3, 0x1

    .line 34
    :goto_1
    add-int/2addr v6, v3

    .line 35
    invoke-virtual {p0, v6}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz v7, :cond_5

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    iget p1, v7, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 44
    .line 45
    sub-int/2addr v5, p1

    .line 46
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 47
    .line 48
    if-lt v5, p1, :cond_4

    .line 49
    .line 50
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 51
    .line 52
    and-int/2addr v3, v4

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_3
    sub-int v5, p1, v1

    .line 57
    .line 58
    :cond_4
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 59
    .line 60
    add-int/2addr p0, v5

    .line 61
    invoke-static {v2, v0, p0}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_5
    return v1
.end method

.method public static f(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    and-int/lit16 v0, v0, -0x601

    .line 17
    .line 18
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    and-int/lit16 v0, v0, -0xc2

    .line 23
    .line 24
    const/16 v1, 0x5c

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eq p2, v1, :cond_d

    .line 29
    .line 30
    const/16 v1, 0x5d

    .line 31
    .line 32
    if-eq p2, v1, :cond_c

    .line 33
    .line 34
    const/16 v1, 0x7a

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    if-eq p2, v1, :cond_9

    .line 38
    .line 39
    const/16 v1, 0x7b

    .line 40
    .line 41
    if-eq p2, v1, :cond_6

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    const/16 v5, 0x1000

    .line 45
    .line 46
    packed-switch p2, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :pswitch_0
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_e

    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_e

    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_e

    .line 68
    .line 69
    iget-object p2, p1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 70
    .line 71
    aget p3, p2, v2

    .line 72
    .line 73
    aget p2, p2, v3

    .line 74
    .line 75
    if-ne p3, p2, :cond_1

    .line 76
    .line 77
    const/4 p3, -0x1

    .line 78
    :cond_1
    if-eq p3, v4, :cond_e

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :pswitch_1
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_2

    .line 91
    .line 92
    invoke-static {p1, v3}, Lru/zdevs/zarchiver/ui/editor/f;->b(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_2
    invoke-static {v0, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_3
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_e

    .line 111
    .line 112
    invoke-static {p1, v3}, Lru/zdevs/zarchiver/ui/editor/f;->c(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :pswitch_2
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    invoke-static {p1, v2}, Lru/zdevs/zarchiver/ui/editor/f;->b(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_4
    invoke-static {v0, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_5
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_e

    .line 143
    .line 144
    invoke-static {p1, v2}, Lru/zdevs/zarchiver/ui/editor/f;->c(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :pswitch_3
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_e

    .line 155
    .line 156
    invoke-static {p1, v3}, Lru/zdevs/zarchiver/ui/editor/f;->e(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    goto :goto_4

    .line 161
    :pswitch_4
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_e

    .line 166
    .line 167
    invoke-static {p1, v2}, Lru/zdevs/zarchiver/ui/editor/f;->e(Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    goto :goto_4

    .line 172
    :cond_6
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_e

    .line 177
    .line 178
    iget-object p0, p1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 179
    .line 180
    aget p2, p0, v3

    .line 181
    .line 182
    if-ne p2, v4, :cond_7

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    aget p3, p0, v2

    .line 186
    .line 187
    if-eq p3, v4, :cond_8

    .line 188
    .line 189
    if-eq p2, p3, :cond_8

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_8
    const/4 v2, 0x0

    .line 193
    :goto_1
    iget p2, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 194
    .line 195
    invoke-static {v2, p0, p2}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    :goto_2
    move v3, p0

    .line 200
    goto :goto_4

    .line 201
    :cond_9
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_e

    .line 206
    .line 207
    iget-object p0, p1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 208
    .line 209
    aget p2, p0, v3

    .line 210
    .line 211
    if-ne p2, v4, :cond_a

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    aget p3, p0, v2

    .line 215
    .line 216
    if-eq p3, v4, :cond_b

    .line 217
    .line 218
    if-eq p2, p3, :cond_b

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_b
    const/4 v2, 0x0

    .line 222
    :goto_3
    invoke-static {v2, p0, v3}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    goto :goto_2

    .line 227
    :cond_c
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-eqz p2, :cond_e

    .line 232
    .line 233
    invoke-static {p0, p1, v3}, Lru/zdevs/zarchiver/ui/editor/f;->d(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    goto :goto_4

    .line 238
    :cond_d
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_e

    .line 243
    .line 244
    invoke-static {p0, p1, v2}, Lru/zdevs/zarchiver/ui/editor/f;->d(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    .line 249
    .line 250
    invoke-static {p1}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 251
    .line 252
    .line 253
    :cond_f
    return v3

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
