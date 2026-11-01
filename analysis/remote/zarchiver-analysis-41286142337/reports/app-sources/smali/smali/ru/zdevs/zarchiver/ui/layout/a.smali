.class public final Lru/zdevs/zarchiver/ui/layout/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/layout/a$a;,
        Lru/zdevs/zarchiver/ui/layout/a$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lru/zdevs/zarchiver/ui/layout/a;->a:I

    .line 7
    .line 8
    iput p1, p0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-static {v0}, Lz0/c;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x15

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    move p1, v0

    .line 25
    :cond_0
    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a([Lru/zdevs/zarchiver/ui/layout/a$a;[Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iput v3, v0, Lru/zdevs/zarchiver/ui/layout/a;->a:I

    .line 12
    .line 13
    iput v3, v0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const v5, 0x7f05000a

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    float-to-int v5, v5

    .line 27
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    const/4 v7, -0x2

    .line 30
    invoke-direct {v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 35
    .line 36
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const v8, 0x1010361

    .line 43
    .line 44
    .line 45
    invoke-static {v7, v8}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    array-length v8, v1

    .line 50
    const/4 v14, 0x0

    .line 51
    :goto_0
    if-ge v14, v8, :cond_7

    .line 52
    .line 53
    aget-object v13, v1, v14

    .line 54
    .line 55
    iget v9, v13, Lru/zdevs/zarchiver/ui/layout/a$a;->b:I

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-static {v4, v10, v9}, Lz0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    if-nez v11, :cond_0

    .line 63
    .line 64
    move/from16 v16, v8

    .line 65
    .line 66
    move v3, v14

    .line 67
    const/4 v10, 0x0

    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_0
    iget-object v12, v13, Lru/zdevs/zarchiver/ui/layout/a$a;->a:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    :cond_1
    const/4 v15, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    array-length v9, v2

    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_1
    if-ge v10, v9, :cond_1

    .line 79
    .line 80
    aget-object v15, v2, v10

    .line 81
    .line 82
    invoke-static {v15, v12}, Lv0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-eqz v15, :cond_3

    .line 87
    .line 88
    const/4 v15, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_2
    if-eqz v15, :cond_4

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    iget v10, v0, Lru/zdevs/zarchiver/ui/layout/a;->a:I

    .line 100
    .line 101
    if-lt v9, v10, :cond_4

    .line 102
    .line 103
    iget v9, v0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 104
    .line 105
    add-int/2addr v9, v3

    .line 106
    iput v9, v0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 107
    .line 108
    :cond_4
    new-instance v10, Lru/zdevs/zarchiver/ui/layout/a$b;

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v16

    .line 114
    iget v9, v13, Lru/zdevs/zarchiver/ui/layout/a$a;->c:I

    .line 115
    .line 116
    iget v3, v13, Lru/zdevs/zarchiver/ui/layout/a$a;->e:I

    .line 117
    .line 118
    move/from16 v17, v9

    .line 119
    .line 120
    move-object v9, v10

    .line 121
    move-object v1, v10

    .line 122
    move-object/from16 v10, v16

    .line 123
    .line 124
    move-object v2, v12

    .line 125
    move/from16 v12, v17

    .line 126
    .line 127
    move/from16 v16, v8

    .line 128
    .line 129
    move-object v8, v13

    .line 130
    move v13, v3

    .line 131
    move v3, v14

    .line 132
    move v14, v7

    .line 133
    invoke-direct/range {v9 .. v14}, Lru/zdevs/zarchiver/ui/layout/a$b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;III)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    div-int/lit8 v9, v5, 0x4

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    invoke-virtual {v1, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    .line 144
    .line 145
    iget v8, v8, Lru/zdevs/zarchiver/ui/layout/a$a;->d:I

    .line 146
    .line 147
    if-nez v8, :cond_5

    .line 148
    .line 149
    const-string v8, ""

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v15}, Lru/zdevs/zarchiver/ui/layout/a$b;->setSelected(Z)V

    .line 160
    .line 161
    .line 162
    const/16 v8, 0x11

    .line 163
    .line 164
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v1, Lru/zdevs/zarchiver/ui/layout/a$b;->a:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v15, :cond_6

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    iget v8, v0, Lru/zdevs/zarchiver/ui/layout/a;->a:I

    .line 179
    .line 180
    if-lt v2, v8, :cond_6

    .line 181
    .line 182
    iget v2, v0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 183
    .line 184
    add-int/lit8 v2, v2, -0x1

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    add-int/lit8 v14, v3, 0x1

    .line 194
    .line 195
    move-object/from16 v1, p1

    .line 196
    .line 197
    move-object/from16 v2, p2

    .line 198
    .line 199
    move/from16 v8, v16

    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_7
    return-void
.end method

.method public getChips()[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-nez v2, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v0, v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lru/zdevs/zarchiver/ui/layout/a$b;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    add-int/lit8 v4, v2, 0x1

    .line 51
    .line 52
    iget-object v3, v3, Lru/zdevs/zarchiver/ui/layout/a$b;->a:Ljava/lang/String;

    .line 53
    .line 54
    aput-object v3, v1, v2

    .line 55
    .line 56
    move v2, v4

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    return-object v1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lru/zdevs/zarchiver/ui/layout/a;->a:I

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    iput v2, p0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 30
    .line 31
    if-ge v0, v2, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget v1, p0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    iput v1, p0, Lru/zdevs/zarchiver/ui/layout/a;->b:I

    .line 39
    .line 40
    if-le v0, v1, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
