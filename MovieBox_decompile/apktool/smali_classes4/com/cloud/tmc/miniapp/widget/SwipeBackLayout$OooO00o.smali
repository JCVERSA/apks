.class public Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;
.super Landroidx/customview/widget/ViewDragHelper$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 2
    .line 3
    iget p3, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 4
    .line 5
    and-int/lit8 v0, p3, 0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    neg-int p1, p1

    .line 32
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_1
    :goto_0
    return v1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    instance-of v0, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    return v1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    return v1

    .line 71
    :cond_1
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public onEdgeTouched(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$b;->onEdgeTouched(II)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 5
    .line 6
    iget v0, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0O:I

    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/customview/widget/ViewDragHelper$b;->onViewDragStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$b;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 5
    .line 6
    iget p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 7
    .line 8
    and-int/lit8 p5, p4, 0x1

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    int-to-float p4, p2

    .line 13
    iget-object p5, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p5

    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v0, p5

    .line 28
    int-to-float p5, v0

    .line 29
    div-float/2addr p4, p5

    .line 30
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    iput p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    int-to-float p4, p2

    .line 42
    iget-object p5, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, p5

    .line 57
    int-to-float p5, v0

    .line 58
    div-float/2addr p4, p5

    .line 59
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    iput p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 64
    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 66
    .line 67
    iput p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo0:I

    .line 68
    .line 69
    iput p3, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo:I

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 80
    .line 81
    iget p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 82
    .line 83
    const/high16 p3, 0x3f800000    # 1.0f

    .line 84
    .line 85
    cmpl-float p4, p2, p3

    .line 86
    .line 87
    if-lez p4, :cond_3

    .line 88
    .line 89
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOO:Z

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 113
    .line 114
    instance-of p2, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 123
    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    const-string p1, "[SwipeBackLayout]\uff1aMiniAppActivity.onKeyDown()"

    .line 127
    .line 128
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 140
    .line 141
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 142
    .line 143
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->swipeBack(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_3
    const/4 p4, 0x0

    .line 151
    cmpg-float p4, p2, p4

    .line 152
    .line 153
    const-string p5, "SwipeBackLayout"

    .line 154
    .line 155
    if-gtz p4, :cond_5

    .line 156
    .line 157
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    const-string p1, "page is hidden, mScrollPercent: "

    .line 172
    .line 173
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 178
    .line 179
    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o()V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    .line 200
    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_6

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_6

    .line 214
    .line 215
    const/16 p2, 0x8

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string p2, "preView set gone, mScrollPercent: "

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 231
    .line 232
    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_5
    cmpg-float p2, p2, p3

    .line 246
    .line 247
    if-gez p2, :cond_6

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o()V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 253
    .line 254
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    .line 255
    .line 256
    if-eqz p1, :cond_6

    .line 257
    .line 258
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-eqz p1, :cond_6

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_6

    .line 269
    .line 270
    const/4 p2, 0x0

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string p2, "preView set visible, mScrollPercent:"

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 285
    .line 286
    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_6
    :goto_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 6
    .line 7
    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 8
    .line 9
    and-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    cmpl-float p2, p2, v2

    .line 16
    .line 17
    if-gtz p2, :cond_0

    .line 18
    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    iget p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 22
    .line 23
    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    .line 24
    .line 25
    cmpl-float p2, p2, v0

    .line 26
    .line 27
    if-lez p2, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    add-int/2addr p2, p1

    .line 36
    add-int/lit8 p2, p2, 0xa

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    and-int/lit8 v0, v0, 0x2

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    cmpg-float v0, p2, v2

    .line 44
    .line 45
    if-ltz v0, :cond_3

    .line 46
    .line 47
    cmpl-float p2, p2, v2

    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    iget p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    .line 52
    .line 53
    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    .line 54
    .line 55
    cmpl-float p2, p2, v0

    .line 56
    .line 57
    if-lez p2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p2, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    iget-object p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    add-int/2addr p2, p1

    .line 69
    add-int/lit8 p2, p2, 0xa

    .line 70
    .line 71
    neg-int p2, p2

    .line 72
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    .line 75
    .line 76
    invoke-virtual {p1, p2, v3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    .line 4
    .line 5
    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0O:I

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 25
    .line 26
    iput v1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 41
    .line 42
    iput v1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :cond_2
    return p1
.end method
