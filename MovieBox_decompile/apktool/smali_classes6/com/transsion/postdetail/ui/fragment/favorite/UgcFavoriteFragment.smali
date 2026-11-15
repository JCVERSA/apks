.class public final Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/postdetail/ui/adapter/favorite/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lwn/i;",
        ">;",
        "Lcom/transsion/postdetail/ui/adapter/favorite/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000f\u0018\u0000 I2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u001d\u0010\u0010\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00106\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010@\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010)R\u0018\u0010B\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u00102R\u0016\u0010D\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010=R\u0014\u0010F\u001a\u00020\u00168\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008E\u0010)R\u0016\u0010H\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010)\u00a8\u0006J"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lwn/i;",
        "Lcom/transsion/postdetail/ui/adapter/favorite/a;",
        "<init>",
        "()V",
        "",
        "t0",
        "Lcom/transsion/postdetail/ui/adapter/favorite/b;",
        "w0",
        "()Lcom/transsion/postdetail/ui/adapter/favorite/b;",
        "C0",
        "u0",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "feedItems",
        "E0",
        "(Ljava/util/List;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "s0",
        "(Landroid/view/LayoutInflater;)Lwn/i;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "loadDefaultData",
        "item",
        "a",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "onDestroy",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;",
        "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;",
        "viewModel",
        "b",
        "Ljava/lang/String;",
        "pageNext",
        "c",
        "userId",
        "",
        "d",
        "Z",
        "isLoadingFavoriteFeed",
        "e",
        "Ljava/lang/Boolean;",
        "hasMoreFeedFavorite",
        "f",
        "Lcom/transsion/postdetail/ui/adapter/favorite/b;",
        "sFeedAdapter",
        "Lbj/b;",
        "g",
        "Lbj/b;",
        "mExposureHelper",
        "",
        "h",
        "J",
        "firstLoadStartTimeMillis",
        "i",
        "durationLoad",
        "j",
        "isFirstFeedDataRequest",
        "k",
        "loadStartTime",
        "l",
        "PAGE_NAME",
        "m",
        "pageFrom",
        "n",
        "PostDetail_psRelease"
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
.field public static final n:Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$a;


# instance fields
.field private a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

.field private g:Lbj/b;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Boolean;

.field private k:J

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->n:Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->c:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->e:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v2, "0"

    .line 17
    .line 18
    iput-object v2, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->i:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->j:Ljava/lang/Boolean;

    .line 21
    .line 22
    const-wide/16 v1, -0x1

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->k:J

    .line 25
    .line 26
    const-string v1, "/ugc/favorite"

    .line 27
    .line 28
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->l:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->m:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method private static final A0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final B0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Lcom/transsion/postdetail/bean/favorite/FeedFavorData;)Lkotlin/Unit;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 23
    .line 24
    const/4 v8, 0x4

    .line 25
    const/4 v9, 0x0

    .line 26
    const-string v5, "UgcFavoriteListFragment"

    .line 27
    .line 28
    const-string v6, "feedFavoriteData is null,has no more data "

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-static {p0, v2, v1, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getPager()Lcom/transsion/postdetail/bean/favorite/Pager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/favorite/Pager;->getHasMore()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v0, v3

    .line 68
    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->e:Ljava/lang/Boolean;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getPager()Lcom/transsion/postdetail/bean/favorite/Pager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/favorite/Pager;->getNextPage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v0, v3

    .line 84
    :goto_1
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->b:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 113
    .line 114
    .line 115
    :cond_4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->e:Ljava/lang/Boolean;

    .line 118
    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v6, "favorite hasMore:"

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const/4 v8, 0x4

    .line 137
    const/4 v9, 0x0

    .line 138
    const-string v5, "UgcFavoriteListFragment"

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    move-object v4, v0

    .line 142
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->b:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v6, "favorite pageNext:"

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v5, "UgcFavoriteListFragment"

    .line 165
    .line 166
    move-object v4, v0

    .line 167
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    if-eqz p1, :cond_5

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getItems()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    move-object v4, v3

    .line 178
    :goto_2
    if-eqz v4, :cond_12

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getItems()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_6

    .line 185
    .line 186
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    move-object v10, v4

    .line 195
    goto :goto_3

    .line 196
    :cond_6
    move-object v10, v3

    .line 197
    :goto_3
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getPager()Lcom/transsion/postdetail/bean/favorite/Pager;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Lcom/transsion/postdetail/bean/favorite/Pager;->getHasMore()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v7, "ugcFavoriteBean: received "

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v7, " items, currentListSize="

    .line 221
    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v4, "?.data?.size}, hasMore="

    .line 229
    .line 230
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const/4 v8, 0x4

    .line 241
    const/4 v9, 0x0

    .line 242
    const-string v5, "UgcFavoriteListFragment"

    .line 243
    .line 244
    const/4 v7, 0x0

    .line 245
    move-object v4, v0

    .line 246
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->e:Ljava/lang/Boolean;

    .line 250
    .line 251
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 252
    .line 253
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_7

    .line 258
    .line 259
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->e:Ljava/lang/Boolean;

    .line 260
    .line 261
    if-nez v4, :cond_a

    .line 262
    .line 263
    :cond_7
    const/4 v8, 0x4

    .line 264
    const/4 v9, 0x0

    .line 265
    const-string v5, "UgcFavoriteListFragment"

    .line 266
    .line 267
    const-string v6, "ugcVideoFavoriteBean: no more data, load more end"

    .line 268
    .line 269
    const/4 v7, 0x0

    .line 270
    move-object v4, v0

    .line 271
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 275
    .line 276
    if-eqz v4, :cond_8

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_8

    .line 283
    .line 284
    invoke-static {v4, v2, v1, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_8
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 288
    .line 289
    if-eqz v4, :cond_9

    .line 290
    .line 291
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    if-eqz v4, :cond_9

    .line 296
    .line 297
    invoke-virtual {v4, v2}, Lt6/f;->z(Z)V

    .line 298
    .line 299
    .line 300
    :cond_9
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 301
    .line 302
    if-eqz v4, :cond_a

    .line 303
    .line 304
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    if-eqz v4, :cond_a

    .line 309
    .line 310
    invoke-virtual {v4, v2}, Lt6/f;->y(Z)V

    .line 311
    .line 312
    .line 313
    :cond_a
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 314
    .line 315
    if-eqz v4, :cond_c

    .line 316
    .line 317
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v4, :cond_c

    .line 322
    .line 323
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-ne v4, v1, :cond_c

    .line 328
    .line 329
    if-nez v10, :cond_b

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_b
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-nez v4, :cond_c

    .line 337
    .line 338
    const/4 v8, 0x4

    .line 339
    const/4 v9, 0x0

    .line 340
    const-string v5, "UgcFavoriteListFragment"

    .line 341
    .line 342
    const-string v6, "ugcFavoriteLikeBean: empty data"

    .line 343
    .line 344
    const/4 v7, 0x0

    .line 345
    move-object v4, v0

    .line 346
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 350
    .line 351
    if-eqz p1, :cond_12

    .line 352
    .line 353
    invoke-virtual {p0, v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_7

    .line 361
    .line 362
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 363
    .line 364
    if-eqz v0, :cond_d

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->g()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    :cond_d
    if-nez v10, :cond_e

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_f

    .line 382
    .line 383
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_f

    .line 388
    .line 389
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 390
    .line 391
    if-eqz v0, :cond_f

    .line 392
    .line 393
    invoke-virtual {p0, v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->j:Ljava/lang/Boolean;

    .line 401
    .line 402
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_11

    .line 407
    .line 408
    iget-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->k:J

    .line 409
    .line 410
    const-wide/16 v4, 0x0

    .line 411
    .line 412
    cmp-long v0, v2, v4

    .line 413
    .line 414
    if-lez v0, :cond_10

    .line 415
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 417
    .line 418
    .line 419
    move-result-wide v2

    .line 420
    iget-wide v4, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->k:J

    .line 421
    .line 422
    sub-long/2addr v2, v4

    .line 423
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    goto :goto_6

    .line 428
    :cond_10
    const-string v0, "0"

    .line 429
    .line 430
    :goto_6
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->i:Ljava/lang/String;

    .line 431
    .line 432
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 433
    .line 434
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->j:Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-eqz v0, :cond_11

    .line 441
    .line 442
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_11

    .line 447
    .line 448
    const-string v2, "load_duration"

    .line 449
    .line 450
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->i:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Ljava/lang/String;

    .line 457
    .line 458
    :cond_11
    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;->getItems()Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->E0(Ljava/util/List;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    if-eqz p0, :cond_12

    .line 473
    .line 474
    invoke-virtual {p0, v1}, Lqi/b;->k(Z)V

    .line 475
    .line 476
    .line 477
    :cond_12
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 478
    .line 479
    return-object p0
.end method

.method private final C0()V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UgcFavoriteListFragment"

    .line 6
    .line 7
    const-string v2, "favorite loadFavoriteFeedsData"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->d:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->d:Z

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "UgcFavoriteListFragment"

    .line 25
    .line 26
    const-string v2, "favorite loadFavoriteFeedsData 11"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, v6

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lwn/i;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lwn/i;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v1, Lgo/c;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lgo/c;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v2, 0x7d0

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method private static final D0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lwn/i;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lwn/i;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final E0(Ljava/util/List;)V
    .locals 10

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UgcFavoriteListFragment"

    .line 6
    .line 7
    const-string v2, "favorite updateData"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    move v7, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v7, v1

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->g()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    move-object v8, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v2, " -> "

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    if-nez v7, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    move-object v3, p1

    .line 66
    check-cast v3, Ljava/util/Collection;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "updateData: load more, add "

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " items, list size: "

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const/4 v4, 0x4

    .line 121
    const/4 v5, 0x0

    .line 122
    const-string v1, "UgcFavoriteListFragment"

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    move-object v0, v6

    .line 126
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    move-object v1, p1

    .line 135
    check-cast v1, Ljava/util/Collection;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v3, "updateData: refresh or first load, replace data. size: "

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const/4 v4, 0x4

    .line 168
    const/4 v5, 0x0

    .line 169
    const-string v1, "UgcFavoriteListFragment"

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    move-object v0, v6

    .line 173
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_4
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_7

    .line 181
    .line 182
    if-nez v7, :cond_8

    .line 183
    .line 184
    :cond_7
    move-object v0, p1

    .line 185
    check-cast v0, Ljava/util/Collection;

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_8

    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 198
    .line 199
    :cond_8
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Lcom/transsion/postdetail/bean/favorite/FeedFavorData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->B0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Lcom/transsion/postdetail/bean/favorite/FeedFavorData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->v0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->x0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->A0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->D0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->y0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)Lcom/transsion/postdetail/ui/adapter/favorite/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private final t0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->g:Lbj/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lbj/b;

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$b;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$b;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const v2, 0x3f19999a    # 0.6f

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lwn/i;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v1, Lwn/i;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->g:Lbj/b;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private final u0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UgcFavoriteListFragment"

    .line 6
    .line 7
    const-string v2, "favorite initFavoriteFeedRecyclerView"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lwn/i;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lwn/i;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lgo/d;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lgo/d;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->t0()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->g:Lbj/b;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lbj/b;->f()V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lwn/i;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v1, Lwn/i;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->w0()Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/transsion/postdetail/ui/adapter/favorite/b;->Q1(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lwn/i;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object v0, v0, Lwn/i;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method private static final v0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UgcFavoriteListFragment"

    .line 6
    .line 7
    const-string v2, "initRecyclerView: user pull to refresh"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->i()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lwn/i;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lwn/i;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private final w0()Lcom/transsion/postdetail/ui/adapter/favorite/b;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UgcFavoriteListFragment"

    .line 6
    .line 7
    const-string v2, "favorite initFeedAdapter"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->g:Lbj/b;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/postdetail/ui/adapter/favorite/b;-><init>(Ljava/util/List;Lbj/b;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lgo/e;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lgo/e;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lgo/f;

    .line 60
    .line 61
    invoke-direct {v1}, Lgo/f;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method private static final x0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 7

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "UgcFavoriteListFragment"

    .line 14
    .line 15
    const-string v3, "initUgcFavoriteListAdapter: trigger load more"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->h(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v2, "UgcFavoriteListFragment"

    .line 36
    .line 37
    const-string v3, "initUgcFavoriteListAdapter: no network, load more failed"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lwn/i;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Lwn/i;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v1, Lgo/g;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lgo/g;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v2, 0x12c

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method private static final y0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->f:Lcom/transsion/postdetail/ui/adapter/favorite/b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 7

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "UgcFavoriteListFragment"

    .line 11
    .line 12
    const-string v3, "favorite onClickVideoDetailItem"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p1, v0, v1, v0}, Lhu/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->s0(Landroid/view/LayoutInflater;)Lwn/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initViewData()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->h:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->u0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lwn/i;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lwn/i;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v1, Lgo/b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lgo/b;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->m:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 39
    .line 40
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->m:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string v1, "page_from"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->m:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->e()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lgo/a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lgo/a;-><init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$c;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public loadDefaultData()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->j:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->k:J

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->C0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->l:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s0(Landroid/view/LayoutInflater;)Lwn/i;
    .locals 6

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/v0;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 15
    .line 16
    .line 17
    const-class p1, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->a:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v1, "UgcFavoriteListFragment"

    .line 32
    .line 33
    const-string v2, "favorite getViewBinding"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lwn/i;->c(Landroid/view/LayoutInflater;)Lwn/i;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "inflate(...)"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method
