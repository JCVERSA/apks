.class public final Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/videofloat/manager/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Liu/a;",
        ">;",
        "Lcom/transsion/videofloat/manager/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u000f\u0010!\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010\"\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008%\u0010$J\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\u001fJ\u000f\u0010\'\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\'\u0010$J\u000f\u0010(\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008(\u0010$J\u000f\u0010)\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010$J\u000f\u0010*\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008*\u0010$J\u000f\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00081\u0010\u0005J\u000f\u00102\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00082\u0010\u0005J\u000f\u00103\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00083\u0010\u0005J\u000f\u00104\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00084\u0010\u0005R\u0018\u00107\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u00109\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0018\u0010;\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00106R\u0018\u0010=\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00106R\u0018\u0010?\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00106R\u0018\u0010A\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00106R\u0018\u0010C\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00106R\u0018\u0010E\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u00106R\u0018\u0010G\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00106R\u0016\u0010J\u001a\u00020+8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010M\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u00106R\u0018\u0010R\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010T\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010LR\u001b\u0010Z\u001a\u00020U8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\u00a8\u0006["
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Liu/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "tag",
        "",
        "G0",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V",
        "K0",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "video",
        "",
        "M0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "category",
        "L0",
        "(Ljava/lang/String;)V",
        "J0",
        "()Liu/a;",
        "q0",
        "retryLoadData",
        "getPageName",
        "()Ljava/lang/String;",
        "onPause",
        "onDestroy",
        "h",
        "isMusicFloatingAttach",
        "()Z",
        "isChangeStatusBar",
        "f0",
        "o0",
        "n0",
        "isTranslucent",
        "isStatusDark",
        "",
        "statusColor",
        "()I",
        "Landroid/view/View;",
        "g0",
        "()Landroid/view/View;",
        "l0",
        "m0",
        "k0",
        "p0",
        "i",
        "Ljava/lang/String;",
        "videoId",
        "j",
        "collectionId",
        "k",
        "subjectId",
        "l",
        "type",
        "m",
        "ops",
        "n",
        "fromOptId",
        "o",
        "pageStyle",
        "p",
        "previousPageVideoId",
        "q",
        "previousPageTrackId",
        "r",
        "I",
        "bottomFragmentSelected",
        "s",
        "Z",
        "withoutHistory",
        "t",
        "homeTabId",
        "u",
        "Landroidx/fragment/app/Fragment;",
        "mFragment",
        "v",
        "hasHandledActivityLimit",
        "Lju/a;",
        "w",
        "Lkotlin/Lazy;",
        "I0",
        "()Lju/a;",
        "detailApi",
        "UGCVideoDetail_psRelease"
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
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Z

.field public t:Ljava/lang/String;

.field private u:Landroidx/fragment/app/Fragment;

.field private v:Z

.field private final w:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ugcvideodetail/activity/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/activity/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->w:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic C0()Lju/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->H0()Lju/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic D0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lju/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->I0()Lju/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->M0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final G0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "getSupportFragmentManager(...)"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "beginTransaction()"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v6, "createFragment: homeTabId:"

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const-string v5, "UGCVideoDetailActivity"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v3, "id"

    .line 53
    .line 54
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "ugcCategory"

    .line 61
    .line 62
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "subject_id"

    .line 69
    .line 70
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, "collection_id"

    .line 77
    .line 78
    iget-object v7, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "ops"

    .line 85
    .line 86
    iget-object v8, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->m:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v8, "from_opt_id"

    .line 93
    .line 94
    iget-object v9, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->n:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v9, "parent_video_id"

    .line 101
    .line 102
    iget-object v10, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->p:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v10, "parent_track_id"

    .line 109
    .line 110
    iget-object v11, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->q:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    iget v11, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->r:I

    .line 117
    .line 118
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    const-string v12, "ugc_bottom_fragment_selected"

    .line 123
    .line 124
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    iget-boolean v12, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->s:Z

    .line 129
    .line 130
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    const-string v13, "ugc_without_history"

    .line 135
    .line 136
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    const-string v13, "tab_id"

    .line 141
    .line 142
    iget-object v14, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    const/16 v14, 0xb

    .line 149
    .line 150
    new-array v14, v14, [Lkotlin/Pair;

    .line 151
    .line 152
    const/4 v15, 0x0

    .line 153
    aput-object v3, v14, v15

    .line 154
    .line 155
    const/4 v3, 0x1

    .line 156
    aput-object v4, v14, v3

    .line 157
    .line 158
    const/4 v3, 0x2

    .line 159
    aput-object v5, v14, v3

    .line 160
    .line 161
    const/4 v3, 0x3

    .line 162
    aput-object v6, v14, v3

    .line 163
    .line 164
    const/4 v3, 0x4

    .line 165
    aput-object v7, v14, v3

    .line 166
    .line 167
    const/4 v3, 0x5

    .line 168
    aput-object v8, v14, v3

    .line 169
    .line 170
    const/4 v3, 0x6

    .line 171
    aput-object v9, v14, v3

    .line 172
    .line 173
    const/4 v3, 0x7

    .line 174
    aput-object v10, v14, v3

    .line 175
    .line 176
    const/16 v3, 0x8

    .line 177
    .line 178
    aput-object v11, v14, v3

    .line 179
    .line 180
    const/16 v3, 0x9

    .line 181
    .line 182
    aput-object v12, v14, v3

    .line 183
    .line 184
    const/16 v3, 0xa

    .line 185
    .line 186
    aput-object v13, v14, v3

    .line 187
    .line 188
    invoke-static {v14}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    .line 196
    .line 197
    move-object/from16 v4, p2

    .line 198
    .line 199
    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroidx/fragment/app/w;->j()I

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method private static final H0()Lju/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lju/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lju/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final I0()Lju/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->w:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lju/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/a;

    .line 6
    .line 7
    iget-object v0, v0, Liu/a;->c:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const-string v1, "ugcPbLoading"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v5, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v5, p0, v0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;-><init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final M0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method


# virtual methods
.method public J0()Liu/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Liu/a;->c(Landroid/view/LayoutInflater;)Liu/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final L0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    move p1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x3

    .line 22
    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p0}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->v:Z

    .line 28
    .line 29
    return-void
.end method

.method public f0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public g0()Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->g0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcr/b;->a(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/ugc_video/detail"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->J0()Liu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 14
    .line 15
    :cond_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 31
    .line 32
    :cond_2
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->Y0()V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isMusicFloatingAttach()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k0()V
    .locals 0

    .line 1
    return-void
.end method

.method public l0()V
    .locals 0

    .line 1
    return-void
.end method

.method public m0()V
    .locals 0

    .line 1
    return-void
.end method

.method public n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->h()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Lcw/e;->j(Landroidx/fragment/app/FragmentActivity;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->h()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    return-void
.end method

.method public q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "VideoDetailFragment"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_HORIZONTAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "UGCVideoDetailFragment"

    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1, p0}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->I:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "UGCImmVideoDetailFragment"

    .line 70
    .line 71
    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->K0()V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public statusColor()I
    .locals 1

    .line 1
    sget v0, Lcom/tn/lib/widget/R$color;->black:I

    .line 2
    .line 3
    return v0
.end method
