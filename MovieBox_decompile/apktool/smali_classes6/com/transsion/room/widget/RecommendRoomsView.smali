.class public final Lcom/transsion/room/widget/RecommendRoomsView;
.super Lcom/transsion/room/widget/RoomsBaseView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/room/widget/RoomsBaseView<",
        "Lfp/g0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/room/widget/RecommendRoomsView;",
        "Lcom/transsion/room/widget/RoomsBaseView;",
        "Lfp/g0;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "dataSize",
        "",
        "F",
        "(I)V",
        "initRecyclerView",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getTitleView",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "dataList",
        "setList",
        "(Ljava/util/List;)V",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/RecommendRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/RecommendRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p2, Lcom/transsion/room/R$layout;->view_recommend_rooms:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Lfp/g0;->a(Landroid/view/View;)Lfp/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->setMViewBinding(Lf4/a;)V

    const/16 p1, 0xc

    .line 7
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p2

    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    invoke-virtual {p0}, Lcom/transsion/room/widget/RecommendRoomsView;->initRecyclerView()V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    move-result-object p1

    sget-object p2, Lcom/transsion/room/api/RoomsViewType;->TYPE_ROOM_HOME:Lcom/transsion/room/api/RoomsViewType;

    invoke-virtual {p1, p2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->G1(Lcom/transsion/room/api/RoomsViewType;)V

    .line 10
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    move-result-object p1

    check-cast p1, Lfp/g0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfp/g0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/room/widget/c;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/c;-><init>(Lcom/transsion/room/widget/RecommendRoomsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/RecommendRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/room/widget/RecommendRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/widget/RecommendRoomsView;->E(Lcom/transsion/room/widget/RecommendRoomsView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E(Lcom/transsion/room/widget/RecommendRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/g0;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, v0, Lfp/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 28
    .line 29
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    if-lt p1, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->H1(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x2

    .line 58
    invoke-direct {p1, v4, v5, v2, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ltf/a;

    .line 65
    .line 66
    invoke-static {v3}, Llj/a;->b(I)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v3}, Llj/a;->b(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v4, 0xc

    .line 75
    .line 76
    invoke-static {v4}, Llj/a;->b(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v4}, Llj/a;->b(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-direct {p1, v2, v3, v5, v4}, Ltf/a;-><init>(IIII)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v4, 0x3

    .line 92
    if-le p1, v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->H1(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {p1, v3, v2, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Ltf/f;

    .line 120
    .line 121
    const/4 v8, 0x2

    .line 122
    const/4 v9, 0x0

    .line 123
    const/high16 v5, 0x41000000    # 8.0f

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    const/high16 v7, 0x41400000    # 12.0f

    .line 127
    .line 128
    move-object v4, p1

    .line 129
    invoke-direct/range {v4 .. v9}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/4 v5, 0x1

    .line 141
    invoke-virtual {p1, v5}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->H1(Z)V

    .line 142
    .line 143
    .line 144
    invoke-static {v3}, Llj/a;->b(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Llj/a;->b(I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {p1, v5, v4}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Ltf/a;

    .line 171
    .line 172
    invoke-static {v3}, Llj/a;->b(I)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-static {v3}, Llj/a;->b(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-direct {p1, v4, v3, v2, v2}, Ltf/a;-><init>(IIII)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/g0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lfp/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RecommendRoomsView;->getTitleView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    move-result-object v0

    check-cast v0, Lfp/g0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfp/g0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initRecyclerView()V
    .locals 0

    .line 1
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/room/widget/RecommendRoomsView;->F(I)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->setList(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
