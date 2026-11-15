.class public final Lcom/transsion/room/adapter/RoomListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;,
        Lcom/transsion/room/adapter/RoomListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00010B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010!\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010#\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008#\u0010\u000fJ-\u0010\'\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00022\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0014\u00a2\u0006\u0004\u0008\'\u0010(R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010/\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/room/adapter/RoomListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
        "Lt6/i;",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "roomListFrom",
        "",
        "isSelectRoom",
        "<init>",
        "(Lcom/transsion/room/adapter/RoomListFrom;Z)V",
        "holder",
        "item",
        "",
        "J1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "F1",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "latestPosts",
        "H1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "I1",
        "hasJoin",
        "E1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V",
        "",
        "newCount",
        "G1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
        "B1",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V",
        "F",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "G",
        "Z",
        "H",
        "I",
        "coverSize",
        "RoomListItemVH",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final F:Lcom/transsion/room/adapter/RoomListFrom;

.field private final G:Z

.field private final H:I


# direct methods
.method public constructor <init>(Lcom/transsion/room/adapter/RoomListFrom;Z)V
    .locals 3

    .line 1
    const-string v0, "roomListFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/room/R$layout;->item_room_list:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/room/adapter/RoomListAdapter;->F:Lcom/transsion/room/adapter/RoomListFrom;

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/transsion/room/adapter/RoomListAdapter;->G:Z

    .line 16
    .line 17
    const/high16 p1, 0x42500000    # 52.0f

    .line 18
    .line 19
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 24
    .line 25
    return-void
.end method

.method private final E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lfp/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOINED:Lcom/tn/lib/view/RoomJoinStatus;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final F1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getLatestPosts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p2, v0

    .line 16
    :goto_0
    const-string v1, "groupNewPost"

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lfp/y;->c:Landroidx/constraintlayout/widget/Group;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Lfp/y;->c:Landroidx/constraintlayout/widget/Group;

    .line 39
    .line 40
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v2, v2, Lfp/y;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget v3, Lcom/transsion/room/R$string;->New_post:I

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_6
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->I1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->H1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object p2, p2, Lfp/y;->f:Lfp/c0;

    .line 142
    .line 143
    invoke-virtual {p2}, Lfp/c0;->b()Landroid/widget/FrameLayout;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    const-string v0, "getRoot(...)"

    .line 148
    .line 149
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object p1, p1, Lfp/y;->e:Lfp/b0;

    .line 160
    .line 161
    invoke-virtual {p1}, Lfp/b0;->b()Landroid/widget/FrameLayout;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    return-void
.end method

.method private final G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v1, v1, Lfp/y;->h:Lcom/noober/background/view/BLTextView;

    .line 7
    .line 8
    const-string v2, "tvNewCount"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, p2, v2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    move v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    move v2, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v2, 0x8

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x63

    .line 33
    .line 34
    cmp-long v1, p2, v1

    .line 35
    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    const-string p2, "99+"

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lfp/y;->h:Lcom/noober/background/view/BLTextView;

    .line 50
    .line 51
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    sget v1, Lcom/transsion/room/R$string;->x_new:I

    .line 56
    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p2, v0, v3

    .line 60
    .line 61
    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final H1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    if-le v0, v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_2
    :goto_1
    move-object p2, v2

    .line 52
    check-cast p2, Ljava/util/Collection;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move p2, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    :goto_2
    move p2, v0

    .line 67
    :goto_3
    const-string v3, "getRoot(...)"

    .line 68
    .line 69
    if-eqz p2, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Lfp/y;->e:Lfp/b0;

    .line 76
    .line 77
    invoke-virtual {p1}, Lfp/b0;->b()Landroid/widget/FrameLayout;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p2, p2, Lfp/y;->e:Lfp/b0;

    .line 94
    .line 95
    invoke-virtual {p2}, Lfp/b0;->b()Landroid/widget/FrameLayout;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget-object p2, p2, Lfp/y;->e:Lfp/b0;

    .line 110
    .line 111
    iget-object p2, p2, Lfp/b0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 112
    .line 113
    const-string v3, "ivPostCover2"

    .line 114
    .line 115
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-le v3, v0, :cond_6

    .line 123
    .line 124
    move v3, v0

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    move v3, v1

    .line 127
    :goto_4
    const/16 v4, 0x8

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    move v3, v1

    .line 132
    goto :goto_5

    .line 133
    :cond_7
    move v3, v4

    .line 134
    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object p2, p2, Lfp/y;->e:Lfp/b0;

    .line 142
    .line 143
    iget-object p2, p2, Lfp/b0;->d:Lcom/noober/background/view/BLView;

    .line 144
    .line 145
    const-string v3, "vPostBg"

    .line 146
    .line 147
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-le v3, v0, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move v0, v1

    .line 158
    :goto_6
    if-eqz v0, :cond_9

    .line 159
    .line 160
    move v4, v1

    .line 161
    :cond_9
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    check-cast v2, Ljava/lang/Iterable;

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_d

    .line 175
    .line 176
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    add-int/lit8 v2, v1, 0x1

    .line 181
    .line 182
    if-gez v1, :cond_a

    .line 183
    .line 184
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 185
    .line 186
    .line 187
    :cond_a
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    .line 188
    .line 189
    if-nez v1, :cond_b

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v1, v1, Lfp/y;->e:Lfp/b0;

    .line 196
    .line 197
    iget-object v1, v1, Lfp/b0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_b
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v1, v1, Lfp/y;->e:Lfp/b0;

    .line 205
    .line 206
    iget-object v1, v1, Lfp/b0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 207
    .line 208
    :goto_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 238
    .line 239
    invoke-virtual {v0, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    move v1, v2

    .line 247
    goto :goto_7

    .line 248
    :cond_d
    :goto_9
    return-void
.end method

.method private final I1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :cond_2
    :goto_0
    const-string p2, "getRoot(...)"

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Lfp/y;->f:Lfp/c0;

    .line 53
    .line 54
    invoke-virtual {v1}, Lfp/c0;->b()Landroid/widget/FrameLayout;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p2, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iget v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lni/f$b;->m(I)Lni/f$b;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lni/f$b;->c(I)Lni/f$b;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lfp/y;->f:Lfp/c0;

    .line 95
    .line 96
    iget-object p1, p1, Lfp/c0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 97
    .line 98
    const-string v0, "ivPostCover"

    .line 99
    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, Lfp/y;->f:Lfp/c0;

    .line 112
    .line 113
    invoke-virtual {p1}, Lfp/c0;->b()Landroid/widget/FrameLayout;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private final J1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lfp/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 19
    .line 20
    const-string p2, "vJoin"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "holder"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v3, v3, Lfp/y;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 50
    .line 51
    const-string v4, "ivCover"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/room/adapter/RoomListAdapter;->G:Z

    .line 60
    .line 61
    const-string v3, "groupNewPost"

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lfp/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lfp/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    const-string v1, "tvMember"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lfp/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    const-string v1, "tvTag"

    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v0, v0, Lfp/y;->c:Landroidx/constraintlayout/widget/Group;

    .line 108
    .line 109
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p1, p1, Lfp/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-wide/16 v5, 0x0

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move-wide v7, v5

    .line 144
    :goto_0
    invoke-direct {p0, p1, v7, v8}, Lcom/transsion/room/adapter/RoomListAdapter;->G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v2, v2, Lfp/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide v7

    .line 177
    invoke-static {v7, v8}, Lij/k;->d(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    goto :goto_1

    .line 182
    :cond_3
    const-string v2, "0"

    .line 183
    .line 184
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    iget-object v7, v7, Lfp/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    if-eqz v8, :cond_4

    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v5

    .line 200
    :cond_4
    const-wide/16 v8, 0x1

    .line 201
    .line 202
    cmp-long v5, v5, v8

    .line 203
    .line 204
    if-nez v5, :cond_5

    .line 205
    .line 206
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    sget v5, Lcom/transsion/room/R$string;->one_members:I

    .line 211
    .line 212
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    goto :goto_2

    .line 217
    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    sget v6, Lcom/transsion/room/R$string;->x_members:I

    .line 222
    .line 223
    new-array v8, v1, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object v2, v8, v0

    .line 226
    .line 227
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lah/c;->e()Lah/c$a;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    if-eqz v5, :cond_6

    .line 243
    .line 244
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    goto :goto_3

    .line 249
    :cond_6
    move v5, v0

    .line 250
    :goto_3
    const/4 v6, 0x3

    .line 251
    if-le v5, v6, :cond_8

    .line 252
    .line 253
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    if-eqz v5, :cond_7

    .line 258
    .line 259
    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto :goto_4

    .line 264
    :cond_7
    const/4 v5, 0x0

    .line 265
    goto :goto_4

    .line 266
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    :goto_4
    if-eqz v5, :cond_a

    .line 271
    .line 272
    check-cast v5, Ljava/lang/Iterable;

    .line 273
    .line 274
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    move v6, v1

    .line 279
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_a

    .line 284
    .line 285
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    check-cast v7, Ljava/lang/String;

    .line 290
    .line 291
    if-nez v6, :cond_9

    .line 292
    .line 293
    const-string v6, "\u4e28"

    .line 294
    .line 295
    invoke-virtual {v2, v6}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    sget v9, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 304
    .line 305
    invoke-static {v8, v9}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    invoke-virtual {v6, v8}, Lah/c$a;->c(I)Lah/c$a;

    .line 310
    .line 311
    .line 312
    :cond_9
    invoke-virtual {v2, v7}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    sget v8, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 321
    .line 322
    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    invoke-virtual {v6, v7}, Lah/c$a;->c(I)Lah/c$a;

    .line 327
    .line 328
    .line 329
    move v6, v0

    .line 330
    goto :goto_5

    .line 331
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iget-object v0, v0, Lfp/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 336
    .line 337
    invoke-virtual {v2}, Lah/c$a;->b()Lah/c;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->F:Lcom/transsion/room/adapter/RoomListFrom;

    .line 345
    .line 346
    sget-object v2, Lcom/transsion/room/adapter/RoomListAdapter$a;->a:[I

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    aget v0, v2, v0

    .line 353
    .line 354
    if-eq v0, v1, :cond_c

    .line 355
    .line 356
    if-ne v0, v4, :cond_b

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v0, v0, Lfp/y;->c:Landroidx/constraintlayout/widget/Group;

    .line 363
    .line 364
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->J1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 371
    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 375
    .line 376
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 377
    .line 378
    .line 379
    throw p1

    .line 380
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lfp/y;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iget-object v0, v0, Lfp/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 385
    .line 386
    const-string v1, "vJoin"

    .line 387
    .line 388
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->F1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 395
    .line 396
    .line 397
    :goto_6
    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    instance-of p3, p2, Ljava/lang/Long;

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/adapter/RoomListAdapter;->G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;
    .locals 1

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
    invoke-static {p2, p1, v0}, Lfp/y;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/y;

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
    new-instance p2, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;-><init>(Lfp/y;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->B1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/RoomListAdapter;->C1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
