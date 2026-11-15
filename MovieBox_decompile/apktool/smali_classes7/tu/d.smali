.class public abstract Ltu/d;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroid/view/Window;Landroid/content/Context;)V
    .locals 10

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v2, 0x106000d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 29
    .line 30
    const/high16 v3, 0x41800000    # 16.0f

    .line 31
    .line 32
    mul-float/2addr v2, v3

    .line 33
    const/high16 v4, 0x3f000000    # 0.5f

    .line 34
    .line 35
    add-float/2addr v2, v4

    .line 36
    float-to-int v2, v2

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v5, "null cannot be cast to non-null type android.view.WindowManager"

    .line 42
    .line 43
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/view/WindowManager;

    .line 47
    .line 48
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 53
    .line 54
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    .line 59
    .line 60
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    mul-int/2addr v2, v5

    .line 64
    sub-int/2addr v0, v2

    .line 65
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    .line 71
    const/4 v0, -0x2

    .line 72
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    .line 74
    const/16 v0, 0x51

    .line 75
    .line 76
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    .line 78
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .line 91
    const/high16 v6, 0x41e00000    # 28.0f

    .line 92
    .line 93
    mul-float/2addr v0, v6

    .line 94
    add-float/2addr v0, v4

    .line 95
    float-to-int v0, v0

    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v7, "navigation_bar_height"

    .line 104
    .line 105
    const-string v8, "dimen"

    .line 106
    .line 107
    const-string v9, "android"

    .line 108
    .line 109
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-lez v7, :cond_0

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const/4 v6, 0x0

    .line 121
    :goto_0
    if-lez v6, :cond_1

    .line 122
    .line 123
    sub-int v6, v0, v6

    .line 124
    .line 125
    if-lez v6, :cond_1

    .line 126
    .line 127
    move v0, v6

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 141
    .line 142
    mul-float/2addr v6, v3

    .line 143
    add-float/2addr v6, v4

    .line 144
    float-to-int v3, v6

    .line 145
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v6, "config_navBarInteractionMode"

    .line 153
    .line 154
    const-string v7, "integer"

    .line 155
    .line 156
    invoke-virtual {v4, v6, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-lez v6, :cond_2

    .line 161
    .line 162
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 163
    .line 164
    .line 165
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    if-ne v4, v5, :cond_2

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_0
    :cond_2
    move v0, v3

    .line 170
    :goto_1
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 171
    .line 172
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 184
    .line 185
    and-int/lit8 p1, p1, 0x30

    .line 186
    .line 187
    const/16 v0, 0x20

    .line 188
    .line 189
    if-ne p1, v0, :cond_3

    .line 190
    .line 191
    const p1, 0x3f266666    # 0.65f

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_3
    const p1, 0x3e4ccccd    # 0.2f

    .line 196
    .line 197
    .line 198
    :goto_2
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 199
    .line 200
    invoke-virtual {p0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
