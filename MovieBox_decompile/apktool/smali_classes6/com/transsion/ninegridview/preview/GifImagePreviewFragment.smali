.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lum/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lum/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "d0",
        "(Landroid/view/LayoutInflater;)Lum/c;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "a",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "image",
        "",
        "b",
        "I",
        "index",
        "",
        "c",
        "Ljava/lang/Boolean;",
        "isBuiltIn",
        "d",
        "NineGridView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final d:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;


# instance fields
.field private a:Lcom/transsion/moviedetailapi/bean/Image;

.field private b:I

.field private c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->d:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->f0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->e0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)Lcom/transsion/moviedetailapi/bean/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final e0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final f0(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->finishActivityAnim()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public d0(Landroid/view/LayoutInflater;)Lum/c;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lum/c;->c(Landroid/view/LayoutInflater;)Lum/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->d0(Landroid/view/LayoutInflater;)Lum/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lum/c;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lum/c;->b:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/transsion/ninegridview/preview/d;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/transsion/ninegridview/preview/d;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    :goto_0
    int-to-float p1, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    :goto_2
    int-to-float p2, p2

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-float v0, v0

    .line 73
    div-float/2addr p2, p1

    .line 74
    mul-float/2addr p2, v0

    .line 75
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lum/c;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p1, Lum/c;->e:Lcom/transsion/photoview/PhotoView;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    new-instance v1, Lcom/transsion/ninegridview/preview/e;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/e;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/transsion/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lum/c;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget-object p1, p1, Lum/c;->e:Lcom/transsion/photoview/PhotoView;

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$b;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/transsion/photoview/PhotoView;->setSlideUpAndDownListener(Lcom/transsion/photoview/i;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lum/c;

    .line 120
    .line 121
    if-eqz p1, :cond_c

    .line 122
    .line 123
    iget-object p1, p1, Lum/c;->e:Lcom/transsion/photoview/PhotoView;

    .line 124
    .line 125
    if-nez p1, :cond_5

    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_5
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-lez v1, :cond_7

    .line 151
    .line 152
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getFirstFrameUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    move-object v1, v2

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 170
    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :goto_4
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    .line 178
    .line 179
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 188
    .line 189
    if-eqz p2, :cond_8

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    new-instance v6, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$initView$5;

    .line 204
    .line 205
    invoke-direct {v6, p0, p1, v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$initView$5;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;Lcom/transsion/photoview/PhotoView;Lkotlin/coroutines/Continuation;)V

    .line 206
    .line 207
    .line 208
    const/4 v7, 0x3

    .line 209
    const/4 v8, 0x0

    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    iget-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 217
    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    :cond_a
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 225
    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    const-string v4, "requireContext(...)"

    .line 231
    .line 232
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-nez v1, :cond_b

    .line 240
    .line 241
    const-string v1, ""

    .line 242
    .line 243
    :cond_b
    invoke-virtual {v2, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    sget v2, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    float-to-int v0, v0

    .line 254
    invoke-virtual {v1, v0}, Lni/f$b;->m(I)Lni/f$b;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    float-to-int p2, p2

    .line 259
    invoke-virtual {v0, p2}, Lni/f$b;->c(I)Lni/f$b;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p2, v0}, Lni/f$b;->j(I)Lni/f$b;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    const/4 v1, 0x1

    .line 269
    invoke-virtual {p2, v1}, Lni/f$b;->f(Z)Lni/f$b;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p2, v1}, Lni/f$b;->e(Z)Lni/f$b;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p2, v0}, Lni/f$b;->k(Z)Lni/f$b;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p2, v0}, Lni/f$b;->h(Z)Lni/f$b;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-virtual {p2, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 286
    .line 287
    .line 288
    :cond_c
    :goto_5
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string v0, "image_list"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->a:Lcom/transsion/moviedetailapi/bean/Image;

    .line 25
    .line 26
    const-string v0, "CURRENT_ITEM"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->b:I

    .line 33
    .line 34
    const-string v0, "IS_BUILTIN"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->c:Ljava/lang/Boolean;

    .line 46
    .line 47
    :cond_1
    return-void
.end method
