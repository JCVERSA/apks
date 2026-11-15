.class public abstract Ls6/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls6/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p2, 0x8

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V
    .locals 2

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "loadMoreStatus"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p2, Ls6/a$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    aget p2, p2, p3

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eq p2, p3, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq p2, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq p2, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq p2, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Ls6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ls6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ls6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ls6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1, p3}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Ls6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ls6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ls6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p0, p2, p3}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ls6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0, p1}, Ls6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p0, p2, p3}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ls6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ls6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ls6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Ls6/a;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ls6/a;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p0, p2, p3}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ls6/a;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-direct {p0, p2, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ls6/a;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1, v0}, Ls6/a;->a(Landroid/view/View;Z)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method

.method public abstract getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method
