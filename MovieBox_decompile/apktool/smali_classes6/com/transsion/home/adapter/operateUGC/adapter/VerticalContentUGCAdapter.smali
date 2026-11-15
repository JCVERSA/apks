.class public final Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B#\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001eR\u0014\u0010!\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "",
        "tabId",
        "layoutResId",
        "<init>",
        "(Lcom/transsion/home/bean/OperateItem;II)V",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "item",
        "pos",
        "",
        "G1",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V",
        "F1",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;",
        "E1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;",
        "holder",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "I",
        "H",
        "imageWidth",
        "imageHeight",
        "VerticalContentItemVH",
        "Home_psRelease"
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
.field public static final J:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:I

.field private final H:I

.field private final I:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/home/bean/OperateItem;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p3, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 5
    iput p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->G:I

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/16 p2, 0x28

    invoke-static {p2}, Llj/a;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->H:I

    mul-int/lit16 p1, p1, 0x96

    .line 7
    div-int/lit8 p1, p1, 0x6b

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->I:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget p3, Lcom/transsion/home/R$layout;->item_ugc_vertical_content:I

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;-><init>(Lcom/transsion/home/bean/OperateItem;II)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->D1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;ILandroid/view/View;)V
    .locals 1

    .line 1
    iget p3, p1, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->G:I

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {p0, p3, v0}, Lgu/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->F1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final F1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 8

    .line 1
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 10
    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move v2, p2

    .line 16
    move-object v4, p1

    .line 17
    invoke-static/range {v0 .. v7}, Lrk/d$a;->g(Lrk/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final G1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 8

    .line 1
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 10
    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move v2, p2

    .line 16
    move-object v4, p1

    .line 17
    invoke-static/range {v0 .. v7}, Lrk/d$a;->e(Lrk/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V
    .locals 11

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, p2}, Lij/k;->e(Ljava/util/List;Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;->f()Lqk/f0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lqk/f0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBuiltIn()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-instance v8, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$convert$1$1;

    .line 58
    .line 59
    invoke-direct {v8, p2, v2, v4}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$convert$1$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v9, 0x3

    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, "getContext(...)"

    .line 77
    .line 78
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, ""

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    move-object v5, v4

    .line 111
    :goto_0
    if-nez v5, :cond_4

    .line 112
    .line 113
    move-object v5, v6

    .line 114
    :cond_4
    invoke-virtual {v3, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCoverVertical()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_6

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-nez v5, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move-object v6, v5

    .line 132
    :cond_6
    :goto_1
    invoke-virtual {v3, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget v5, Lcom/transsion/wrapperad/R$color;->module_01:I

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Lni/f$b;->i(I)Lni/f$b;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget v5, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->H:I

    .line 143
    .line 144
    invoke-virtual {v3, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-virtual {v0}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;->f()Lqk/f0;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v2, v2, Lqk/f0;->d:Lcom/noober/background/view/BLTextView;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p2, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;->f()Lqk/f0;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v2, v2, Lqk/f0;->c:Landroid/widget/ImageView;

    .line 176
    .line 177
    const-string v3, "ivTypeIcon"

    .line 178
    .line 179
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v3, 0x4

    .line 183
    invoke-static {v2, p2, v4, v3, v4}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;->f()Lqk/f0;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v0, v0, Lqk/f0;->e:Lcom/tn/lib/widget/TnTextView;

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->G1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 203
    .line 204
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/adapter/h;

    .line 205
    .line 206
    invoke-direct {v0, p2, p0, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/h;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public E1(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lqk/f0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqk/f0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p1, Lqk/f0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 25
    .line 26
    const-string v0, "ivCover"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->I:I

    .line 38
    .line 39
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;-><init>(Lqk/f0;)V

    .line 47
    .line 48
    .line 49
    return-object p2

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 51
    .line 52
    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->E1(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter;->E1(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/VerticalContentUGCAdapter$VerticalContentItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
