.class public final Lcom/cloud/tmc/miniapp/widget/OooO0O0;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:Z

.field public OooO0Oo:Z

.field public OooO0o:Landroid/graphics/Paint;

.field public OooO0o0:I

.field public OooO0oO:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "#cccccc"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final OooO00o(II)Z
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final OooO00o(III)Z
    .locals 1

    .line 2
    div-int/2addr p1, p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    div-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 4

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez p4, :cond_2

    .line 26
    .line 27
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    .line 28
    .line 29
    if-nez p4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr v2, v0

    .line 47
    if-eq p4, v2, :cond_1

    .line 48
    .line 49
    :cond_0
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 50
    .line 51
    invoke-virtual {p1, v1, v1, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    .line 55
    .line 56
    if-eqz p4, :cond_9

    .line 57
    .line 58
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_9

    .line 63
    .line 64
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 65
    .line 66
    invoke-virtual {p1, v1, p2, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_2
    if-ne p4, v0, :cond_5

    .line 72
    .line 73
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    .line 74
    .line 75
    if-nez p4, :cond_3

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    sub-int/2addr v2, v0

    .line 93
    if-eq p4, v2, :cond_4

    .line 94
    .line 95
    :cond_3
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 96
    .line 97
    invoke-virtual {p1, v1, v1, p4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    .line 101
    .line 102
    if-eqz p4, :cond_9

    .line 103
    .line 104
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_9

    .line 109
    .line 110
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 111
    .line 112
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    const/4 v2, 0x2

    .line 117
    if-ne p4, v2, :cond_9

    .line 118
    .line 119
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 124
    .line 125
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {p0, v3, v2, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {p0, v3, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {p0, v3, v2, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 178
    .line 179
    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_7
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    add-int/2addr p2, v0

    .line 188
    rem-int/2addr p2, p4

    .line 189
    if-eqz p2, :cond_8

    .line 190
    .line 191
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 192
    .line 193
    invoke-virtual {p1, v1, v1, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_8
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 198
    .line 199
    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "c"

    .line 6
    .line 7
    move-object/from16 v9, p1

    .line 8
    .line 9
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "parent"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "state"

    .line 18
    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    .line 35
    .line 36
    const/4 v10, 0x2

    .line 37
    const/4 v11, 0x0

    .line 38
    if-eqz v2, :cond_8

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v2, v3, :cond_5

    .line 42
    .line 43
    if-eq v2, v10, :cond_1

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    :goto_1
    if-ge v11, v2, :cond_b

    .line 76
    .line 77
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 86
    .line 87
    div-int/2addr v4, v10

    .line 88
    add-int v15, v4, v3

    .line 89
    .line 90
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 95
    .line 96
    div-int/2addr v4, v10

    .line 97
    add-int v8, v4, v3

    .line 98
    .line 99
    invoke-virtual {v0, v11, v13, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    int-to-float v4, v3

    .line 110
    int-to-float v7, v8

    .line 111
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 116
    .line 117
    add-int/2addr v3, v5

    .line 118
    int-to-float v6, v3

    .line 119
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object/from16 v3, p1

    .line 125
    .line 126
    move-object/from16 v16, v5

    .line 127
    .line 128
    move v5, v7

    .line 129
    move v10, v8

    .line 130
    move-object/from16 v8, v16

    .line 131
    .line 132
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    move v10, v8

    .line 137
    :goto_2
    invoke-virtual {v0, v11, v13, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0, v11, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    int-to-float v6, v15

    .line 150
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    int-to-float v5, v3

    .line 155
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    int-to-float v7, v3

    .line 160
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 161
    .line 162
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v3, p1

    .line 166
    .line 167
    move v4, v6

    .line 168
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    invoke-virtual {v0, v11, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_4

    .line 177
    .line 178
    int-to-float v6, v15

    .line 179
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    int-to-float v5, v3

    .line 184
    int-to-float v7, v10

    .line 185
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    move-object/from16 v3, p1

    .line 191
    .line 192
    move v4, v6

    .line 193
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 197
    .line 198
    const/4 v10, 0x2

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    .line 205
    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 217
    .line 218
    const/4 v5, 0x2

    .line 219
    div-int/2addr v4, v5

    .line 220
    sub-int/2addr v3, v4

    .line 221
    int-to-float v6, v3

    .line 222
    int-to-float v5, v11

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    int-to-float v7, v3

    .line 228
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 229
    .line 230
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v3, p1

    .line 234
    .line 235
    move v4, v6

    .line 236
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    .line 238
    .line 239
    :cond_6
    move v10, v11

    .line 240
    :goto_4
    if-ge v10, v2, :cond_b

    .line 241
    .line 242
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    .line 243
    .line 244
    if-nez v3, :cond_7

    .line 245
    .line 246
    add-int/lit8 v3, v2, -0x1

    .line 247
    .line 248
    if-eq v10, v3, :cond_b

    .line 249
    .line 250
    :cond_7
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 259
    .line 260
    const/4 v5, 0x2

    .line 261
    div-int/2addr v4, v5

    .line 262
    add-int/2addr v4, v3

    .line 263
    int-to-float v6, v4

    .line 264
    int-to-float v5, v11

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    int-to-float v7, v3

    .line 270
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 271
    .line 272
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v3, p1

    .line 276
    .line 277
    move v4, v6

    .line 278
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v10, v10, 0x1

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    .line 289
    .line 290
    if-eqz v3, :cond_9

    .line 291
    .line 292
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 301
    .line 302
    const/4 v5, 0x2

    .line 303
    div-int/2addr v4, v5

    .line 304
    sub-int/2addr v3, v4

    .line 305
    int-to-float v4, v11

    .line 306
    int-to-float v7, v3

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    int-to-float v6, v3

    .line 312
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 313
    .line 314
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v3, p1

    .line 318
    .line 319
    move v5, v7

    .line 320
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    move v10, v11

    .line 324
    :goto_5
    if-ge v10, v2, :cond_b

    .line 325
    .line 326
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    .line 327
    .line 328
    if-nez v3, :cond_a

    .line 329
    .line 330
    add-int/lit8 v3, v2, -0x1

    .line 331
    .line 332
    if-eq v10, v3, :cond_b

    .line 333
    .line 334
    :cond_a
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    .line 343
    .line 344
    const/4 v12, 0x2

    .line 345
    div-int/2addr v4, v12

    .line 346
    add-int/2addr v4, v3

    .line 347
    int-to-float v5, v11

    .line 348
    int-to-float v7, v4

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    int-to-float v6, v3

    .line 354
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    .line 355
    .line 356
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v3, p1

    .line 360
    .line 361
    move v4, v5

    .line 362
    move v5, v7

    .line 363
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v10, v10, 0x1

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_b
    :goto_6
    return-void
.end method
