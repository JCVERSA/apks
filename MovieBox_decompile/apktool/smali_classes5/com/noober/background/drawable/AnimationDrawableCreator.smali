.class public Lcom/noober/background/drawable/AnimationDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private animationTa:Landroid/content/res/TypedArray;

.field private drawable:Landroid/graphics/drawable/AnimationDrawable;

.field private duration:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 15
    .line 16
    return-void
.end method

.method private addFrame(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 39
    .line 40
    iget v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    .line 41
    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget v3, Lcom/noober/background/R$styleable;->bl_anim_bl_duration:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget v3, Lcom/noober/background/R$styleable;->bl_anim_bl_oneshot:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 37
    .line 38
    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 49
    .line 50
    sget v2, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item0:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 59
    .line 60
    sget v2, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item0:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 69
    .line 70
    sget v3, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item0:I

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    .line 81
    .line 82
    sget v4, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item0:I

    .line 83
    .line 84
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 93
    .line 94
    iget v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item0:I

    .line 100
    .line 101
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item0:I

    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 104
    .line 105
    .line 106
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item1:I

    .line 107
    .line 108
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item1:I

    .line 109
    .line 110
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 111
    .line 112
    .line 113
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item2:I

    .line 114
    .line 115
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item2:I

    .line 116
    .line 117
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 118
    .line 119
    .line 120
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item3:I

    .line 121
    .line 122
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item3:I

    .line 123
    .line 124
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 125
    .line 126
    .line 127
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item4:I

    .line 128
    .line 129
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item4:I

    .line 130
    .line 131
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 132
    .line 133
    .line 134
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item5:I

    .line 135
    .line 136
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item5:I

    .line 137
    .line 138
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 139
    .line 140
    .line 141
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item6:I

    .line 142
    .line 143
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item6:I

    .line 144
    .line 145
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 146
    .line 147
    .line 148
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item7:I

    .line 149
    .line 150
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item7:I

    .line 151
    .line 152
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 153
    .line 154
    .line 155
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item8:I

    .line 156
    .line 157
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item8:I

    .line 158
    .line 159
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 160
    .line 161
    .line 162
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item9:I

    .line 163
    .line 164
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item9:I

    .line 165
    .line 166
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 167
    .line 168
    .line 169
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item10:I

    .line 170
    .line 171
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item10:I

    .line 172
    .line 173
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 174
    .line 175
    .line 176
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item11:I

    .line 177
    .line 178
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item11:I

    .line 179
    .line 180
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 181
    .line 182
    .line 183
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item12:I

    .line 184
    .line 185
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item12:I

    .line 186
    .line 187
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 188
    .line 189
    .line 190
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item13:I

    .line 191
    .line 192
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item13:I

    .line 193
    .line 194
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 195
    .line 196
    .line 197
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item14:I

    .line 198
    .line 199
    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item14:I

    .line 200
    .line 201
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 205
    .line 206
    return-object v0
.end method
