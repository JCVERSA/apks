.class public final Lfp/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

.field public final b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

.field public final c:Lcom/google/android/material/appbar/AppBarLayout;

.field public final d:Lcom/tn/lib/view/RoomCacheAnimationView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final g:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

.field public final h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final i:Lcom/transsion/baseui/widget/GradientTextView;

.field public final j:Lcom/transsion/room/widget/CommunityRoomsView;

.field public final k:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/tn/lib/view/RoomCacheAnimationView;Landroidx/appcompat/widget/AppCompatImageView;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/transsion/baseui/widget/GradientTextView;Lcom/transsion/room/widget/CommunityRoomsView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfp/q;->a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lfp/q;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 7
    .line 8
    iput-object p3, p0, Lfp/q;->c:Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lfp/q;->d:Lcom/tn/lib/view/RoomCacheAnimationView;

    .line 11
    .line 12
    iput-object p5, p0, Lfp/q;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    iput-object p6, p0, Lfp/q;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 15
    .line 16
    iput-object p7, p0, Lfp/q;->g:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    .line 17
    .line 18
    iput-object p8, p0, Lfp/q;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 19
    .line 20
    iput-object p9, p0, Lfp/q;->i:Lcom/transsion/baseui/widget/GradientTextView;

    .line 21
    .line 22
    iput-object p10, p0, Lfp/q;->j:Lcom/transsion/room/widget/CommunityRoomsView;

    .line 23
    .line 24
    iput-object p11, p0, Lfp/q;->k:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    return-void
.end method

.method public static a(Landroid/view/View;)Lfp/q;
    .locals 14

    .line 1
    sget v0, Lcom/transsion/room/R$id;->activity_tip:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    check-cast v4, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/room/R$id;->appBar:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/room/R$id;->iv_cache:I

    .line 24
    .line 25
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    check-cast v6, Lcom/tn/lib/view/RoomCacheAnimationView;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    sget v0, Lcom/transsion/room/R$id;->iv_publish:I

    .line 35
    .line 36
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v7, v1

    .line 41
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    sget v0, Lcom/transsion/room/R$id;->magic_indicator:I

    .line 46
    .line 47
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    check-cast v8, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    move-object v9, p0

    .line 57
    check-cast v9, Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    .line 58
    .line 59
    sget v0, Lcom/transsion/room/R$id;->toolbar_layout:I

    .line 60
    .line 61
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v10, v1

    .line 66
    check-cast v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 67
    .line 68
    if-eqz v10, :cond_0

    .line 69
    .line 70
    sget v0, Lcom/transsion/room/R$id;->tv_post:I

    .line 71
    .line 72
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v11, v1

    .line 77
    check-cast v11, Lcom/transsion/baseui/widget/GradientTextView;

    .line 78
    .line 79
    if-eqz v11, :cond_0

    .line 80
    .line 81
    sget v0, Lcom/transsion/room/R$id;->v_recommend_rooms:I

    .line 82
    .line 83
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v12, v1

    .line 88
    check-cast v12, Lcom/transsion/room/widget/CommunityRoomsView;

    .line 89
    .line 90
    if-eqz v12, :cond_0

    .line 91
    .line 92
    sget v0, Lcom/transsion/room/R$id;->view_pager:I

    .line 93
    .line 94
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    move-object v13, v1

    .line 99
    check-cast v13, Landroidx/viewpager2/widget/ViewPager2;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    new-instance p0, Lfp/q;

    .line 104
    .line 105
    move-object v2, p0

    .line 106
    move-object v3, v9

    .line 107
    invoke-direct/range {v2 .. v13}, Lfp/q;-><init>(Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/tn/lib/view/RoomCacheAnimationView;Landroidx/appcompat/widget/AppCompatImageView;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/transsion/baseui/widget/GradientTextView;Lcom/transsion/room/widget/CommunityRoomsView;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    .line 120
    .line 121
    const-string v1, "Missing required view with ID: "

    .line 122
    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lfp/q;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lfp/q;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/q;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/q;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->fragment_room_home:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lfp/q;->a(Landroid/view/View;)Lfp/q;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lfp/q;->a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfp/q;->b()Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
