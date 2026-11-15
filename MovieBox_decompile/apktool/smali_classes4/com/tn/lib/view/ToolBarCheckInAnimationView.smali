.class public final Lcom/tn/lib/view/ToolBarCheckInAnimationView;
.super Lcom/tn/lib/view/CheckInAnimationView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000cR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/tn/lib/view/ToolBarCheckInAnimationView;",
        "Lcom/tn/lib/view/CheckInAnimationView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "",
        "a",
        "(I)V",
        "initView",
        "()V",
        "state",
        "upDateState",
        "Landroid/widget/TextView;",
        "e",
        "Landroid/widget/TextView;",
        "tvTitle",
        "Landroid/widget/ImageView;",
        "f",
        "Landroid/widget/ImageView;",
        "ivLoading",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "g",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rootView",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/CheckInAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 35
    .line 36
    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    .line 39
    .line 40
    .line 41
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/tn/lib/widget/R$layout;->tool_bar_view_check_in_layout:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/tn/lib/widget/R$id;->tvTitle:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v0, Lcom/tn/lib/widget/R$id;->ivLoading:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 33
    .line 34
    sget v0, Lcom/tn/lib/widget/R$id;->rootView:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v0, Lij/y;->a:Lij/y;

    .line 54
    .line 55
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    sget v0, Lcom/tn/lib/widget/R$mipmap;->loading_green_dark:I

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget v0, Lcom/tn/lib/widget/R$mipmap;->loading_green_light:I

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public upDateState(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/CheckInAnimationView;->setCurrentState(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_e

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_9

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_4:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_3_gray:I

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lcom/tn/lib/widget/R$string;->Joined:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget v1, Lcom/tn/lib/widget/R$color;->text_08:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 93
    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_8
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    if-eqz p1, :cond_13

    .line 102
    .line 103
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_4:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 110
    .line 111
    if-eqz p1, :cond_a

    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :cond_a
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 117
    .line 118
    if-eqz p1, :cond_b

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_b
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 124
    .line 125
    if-eqz p1, :cond_c

    .line 126
    .line 127
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_3:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    .line 131
    .line 132
    :cond_c
    sget-object p1, Lij/y;->a:Lij/y;

    .line 133
    .line 134
    invoke-virtual {p1}, Lij/y;->a()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_d

    .line 139
    .line 140
    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_green_dark:I

    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_d
    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_green_light:I

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_e
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 153
    .line 154
    if-eqz p1, :cond_f

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_f
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 160
    .line 161
    if-eqz p1, :cond_10

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sget v1, Lcom/tn/lib/widget/R$string;->Join:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    :cond_10
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    .line 177
    .line 178
    if-eqz p1, :cond_11

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget v1, Lcom/tn/lib/widget/R$color;->brand:I

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    :cond_11
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    .line 194
    .line 195
    if-eqz p1, :cond_12

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_12
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 201
    .line 202
    if-eqz p1, :cond_13

    .line 203
    .line 204
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_3:I

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    .line 208
    .line 209
    :cond_13
    :goto_0
    return-void
.end method
