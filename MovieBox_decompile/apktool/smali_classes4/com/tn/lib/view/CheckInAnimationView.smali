.class public Lcom/tn/lib/view/CheckInAnimationView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/CheckInAnimationView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 !2\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/tn/lib/view/CheckInAnimationView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "initView",
        "()V",
        "",
        "state",
        "upDateState",
        "(I)V",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "tvTitle",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "ivLoading",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "c",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rootView",
        "d",
        "I",
        "getCurrentState",
        "()I",
        "setCurrentState",
        "currentState",
        "Companion",
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


# static fields
.field public static final BUTTON_STATE_EXIT_ING:I = 0x4

.field public static final BUTTON_STATE_JOINED:I = 0x3

.field public static final BUTTON_STATE_JOIN_ING:I = 0x2

.field public static final BUTTON_STATE_NOT_TO_JOIN:I = 0x1

.field public static final Companion:Lcom/tn/lib/view/CheckInAnimationView$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/lib/view/CheckInAnimationView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/lib/view/CheckInAnimationView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/lib/view/CheckInAnimationView;->Companion:Lcom/tn/lib/view/CheckInAnimationView$a;

    .line 8
    .line 9
    return-void
.end method

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
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/tn/lib/view/CheckInAnimationView;->initView()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public initView()V
    .locals 3

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
    sget v1, Lcom/tn/lib/widget/R$layout;->view_check_in_layout:I

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
    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget v2, Lcom/tn/lib/widget/R$mipmap;->loading_1_whit:I

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 89
    .line 90
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    .line 91
    .line 92
    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    .line 93
    .line 94
    .line 95
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method

.method public final setCurrentState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public upDateState(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eq p1, v0, :cond_b

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_8

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    if-eqz p1, :cond_10

    .line 37
    .line 38
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_2:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget v1, Lcom/tn/lib/widget/R$string;->Joined:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_7
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    if-eqz p1, :cond_10

    .line 96
    .line 97
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_2:I

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 104
    .line 105
    if-eqz p1, :cond_9

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_9
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_a
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    if-eqz p1, :cond_10

    .line 120
    .line 121
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_1:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_b
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 128
    .line 129
    if-eqz p1, :cond_c

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :cond_c
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz p1, :cond_d

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget v1, Lcom/tn/lib/widget/R$string;->Join:I

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_d
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz p1, :cond_e

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .line 167
    .line 168
    :cond_e
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    .line 169
    .line 170
    if-eqz p1, :cond_f

    .line 171
    .line 172
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    :cond_f
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    .line 177
    if-eqz p1, :cond_10

    .line 178
    .line 179
    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_1:I

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    .line 183
    .line 184
    :cond_10
    :goto_0
    return-void
.end method
