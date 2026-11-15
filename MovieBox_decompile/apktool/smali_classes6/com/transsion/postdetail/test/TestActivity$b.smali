.class public final Lcom/transsion/postdetail/test/TestActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/test/TestActivity;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/transsion/postdetail/test/TestActivity;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/test/TestActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz p2, :cond_6

    .line 13
    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lcom/transsion/postdetail/test/TestActivity$b;->a:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/transsion/postdetail/test/TestActivity$b;->b:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/transsion/postdetail/test/TestActivity;->P(Lcom/transsion/postdetail/test/TestActivity;)Lwm/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lwm/a;->b()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v2

    .line 51
    :goto_0
    const/4 v3, 0x1

    .line 52
    if-lt v1, p2, :cond_2

    .line 53
    .line 54
    if-le v1, v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move p2, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    move p2, v3

    .line 60
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_5

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/transsion/postdetail/test/TestActivity;->O(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    check-cast v0, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    xor-int/2addr v0, v3

    .line 87
    if-ne v0, v3, :cond_5

    .line 88
    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    if-ltz p3, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    add-int/lit8 v2, p2, -0x1

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-object p3, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    .line 111
    .line 112
    invoke-static {p3}, Lcom/transsion/postdetail/test/TestActivity;->O(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    if-eqz p3, :cond_4

    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    if-eqz p3, :cond_4

    .line 123
    .line 124
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/4 p3, 0x0

    .line 132
    :goto_4
    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity$b;->c:Lcom/transsion/postdetail/test/TestActivity;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/transsion/postdetail/test/TestActivity;->P(Lcom/transsion/postdetail/test/TestActivity;)Lwm/a;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    invoke-virtual {v0, p3, p2, p1}, Lwm/a;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void

    .line 144
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 145
    .line 146
    const-string p2, "Unsupported layoutManager."

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1
.end method
