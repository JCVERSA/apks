.class public final Ltf/a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltf/a;->a:I

    .line 5
    .line 6
    iput p2, p0, Ltf/a;->b:I

    .line 7
    .line 8
    iput p3, p0, Ltf/a;->c:I

    .line 9
    .line 10
    iput p4, p0, Ltf/a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 5

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
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v0

    .line 45
    :goto_0
    instance-of v2, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 46
    .line 47
    if-eqz v2, :cond_8

    .line 48
    .line 49
    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 50
    .line 51
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-ne v3, v4, :cond_5

    .line 61
    .line 62
    iget p4, p0, Ltf/a;->a:I

    .line 63
    .line 64
    div-int/lit8 v3, p4, 0x2

    .line 65
    .line 66
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    div-int/lit8 p4, p4, 0x2

    .line 69
    .line 70
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    instance-of p4, p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 73
    .line 74
    if-eqz p4, :cond_2

    .line 75
    .line 76
    check-cast p3, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s0()Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    if-nez p2, :cond_1

    .line 85
    .line 86
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    iget p2, p0, Ltf/a;->b:I

    .line 93
    .line 94
    div-int/lit8 p2, p2, 0x2

    .line 95
    .line 96
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 100
    .line 101
    :cond_2
    add-int/2addr v1, v2

    .line 102
    sub-int/2addr v1, v4

    .line 103
    div-int/2addr v1, v2

    .line 104
    div-int/2addr p2, v2

    .line 105
    if-nez p2, :cond_3

    .line 106
    .line 107
    iget p2, p0, Ltf/a;->c:I

    .line 108
    .line 109
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    iget p2, p0, Ltf/a;->b:I

    .line 112
    .line 113
    div-int/lit8 p2, p2, 0x2

    .line 114
    .line 115
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    sub-int/2addr v1, v4

    .line 119
    if-ne p2, v1, :cond_4

    .line 120
    .line 121
    iget p2, p0, Ltf/a;->b:I

    .line 122
    .line 123
    div-int/lit8 p2, p2, 0x2

    .line 124
    .line 125
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iget p2, p0, Ltf/a;->d:I

    .line 128
    .line 129
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    iget p2, p0, Ltf/a;->b:I

    .line 133
    .line 134
    div-int/lit8 p3, p2, 0x2

    .line 135
    .line 136
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    div-int/lit8 p2, p2, 0x2

    .line 139
    .line 140
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-nez p3, :cond_8

    .line 148
    .line 149
    iget p3, p0, Ltf/a;->b:I

    .line 150
    .line 151
    div-int/lit8 p4, p3, 0x2

    .line 152
    .line 153
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    div-int/lit8 p3, p3, 0x2

    .line 156
    .line 157
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    add-int/2addr v1, v2

    .line 160
    sub-int/2addr v1, v4

    .line 161
    div-int/2addr v1, v2

    .line 162
    div-int/2addr p2, v2

    .line 163
    if-nez p2, :cond_6

    .line 164
    .line 165
    iget p2, p0, Ltf/a;->c:I

    .line 166
    .line 167
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 168
    .line 169
    iget p2, p0, Ltf/a;->a:I

    .line 170
    .line 171
    div-int/lit8 p2, p2, 0x2

    .line 172
    .line 173
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    sub-int/2addr v1, v4

    .line 177
    if-ne p2, v1, :cond_7

    .line 178
    .line 179
    iget p2, p0, Ltf/a;->a:I

    .line 180
    .line 181
    div-int/lit8 p2, p2, 0x2

    .line 182
    .line 183
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 184
    .line 185
    iget p2, p0, Ltf/a;->d:I

    .line 186
    .line 187
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    iget p2, p0, Ltf/a;->a:I

    .line 191
    .line 192
    div-int/lit8 p3, p2, 0x2

    .line 193
    .line 194
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 195
    .line 196
    div-int/lit8 p2, p2, 0x2

    .line 197
    .line 198
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 199
    .line 200
    :cond_8
    :goto_1
    return-void
.end method
