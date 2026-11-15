.class final Lcom/transsion/moviedetail/staff/s$d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/staff/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/s$d;->e:Ljava/lang/Integer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string v0, "helper"

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
    instance-of v0, p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 12
    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    sget v0, Lcom/transsion/moviedetail/R$id;->iv_cover:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 22
    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/s$d;->e:Ljava/lang/Integer;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x6

    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v1, v3

    .line 50
    :goto_0
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const-string v2, "h,160:90"

    .line 53
    .line 54
    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 55
    .line 56
    move-object v3, v1

    .line 57
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "getContext(...)"

    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v2, p2

    .line 76
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, ""

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    :cond_4
    move-object v3, v4

    .line 93
    :cond_5
    invoke-virtual {v1, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    move-object v4, v2

    .line 111
    :cond_7
    :goto_2
    invoke-virtual {v1, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_title:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_9
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_staff_item_subject:I

    .line 2
    .line 3
    return v0
.end method
