.class public final Llu/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/a$a;,
        Llu/a$b;
    }
.end annotation


# static fields
.field public static final e:Llu/a$a;


# instance fields
.field private final a:Llu/a$b;

.field private final b:Llu/i;

.field private final c:Llu/e;

.field private d:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llu/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Llu/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Llu/a;->e:Llu/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Llu/a$b;Llu/i;Llu/e;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reportDelegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "downloadDelegate"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Llu/a;->a:Llu/a$b;

    .line 20
    .line 21
    iput-object p2, p0, Llu/a;->b:Llu/i;

    .line 22
    .line 23
    iput-object p3, p0, Llu/a;->c:Llu/e;

    .line 24
    .line 25
    return-void
.end method

.method private final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 17
    .line 18
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v1, p0, Llu/a;->b:Llu/i;

    .line 31
    .line 32
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 33
    .line 34
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v9, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v3, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v3, v9

    .line 48
    :goto_0
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 49
    .line 50
    invoke-interface {v2}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v4, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v4, v9

    .line 67
    :goto_1
    const/16 v7, 0x18

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v2, "comment"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static/range {v1 .. v8}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;->h:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog$a;

    .line 78
    .line 79
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 80
    .line 81
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    :cond_2
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 98
    .line 99
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    const/4 v2, 0x0

    .line 135
    :goto_2
    invoke-virtual {v1, v9, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog$a;->a(Ljava/lang/String;I)Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "immComment"

    .line 140
    .line 141
    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method private final c()V
    .locals 13

    .line 1
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v4, v1

    .line 23
    :goto_1
    if-nez v4, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 27
    .line 28
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 42
    .line 43
    invoke-interface {v2}, Llu/a$b;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-object v1, p0, Llu/a;->c:Llu/e;

    .line 50
    .line 51
    iget-object v2, p0, Llu/a;->b:Llu/i;

    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Llu/e;->f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Llu/i;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v5, p0, Llu/a;->b:Llu/i;

    .line 58
    .line 59
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 60
    .line 61
    invoke-interface {v2}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_5
    move-object v8, v1

    .line 76
    const/16 v11, 0x18

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    const-string v6, "download"

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    move-object v7, v0

    .line 84
    invoke-static/range {v5 .. v12}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Llu/a;->c:Llu/e;

    .line 88
    .line 89
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 90
    .line 91
    invoke-interface {v1}, Llu/a$b;->d()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 96
    .line 97
    invoke-interface {v1}, Llu/a$b;->f()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 102
    .line 103
    invoke-interface {v1}, Llu/a$b;->e()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    move-object v5, v0

    .line 108
    invoke-virtual/range {v3 .. v8}, Llu/e;->l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_2
    return-void
.end method

.method private final d()V
    .locals 10

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Llu/a;->b:Llu/i;

    .line 18
    .line 19
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 20
    .line 21
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v4, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v4, v1

    .line 35
    :goto_0
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 36
    .line 37
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v5, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v5, v1

    .line 54
    :goto_1
    const/16 v8, 0x18

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const-string v3, "favorite"

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static/range {v2 .. v9}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 65
    .line 66
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_b

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x0

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v2, v3

    .line 106
    :goto_2
    xor-int/lit8 v4, v2, 0x1

    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_added_to_list:I

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_removed_from_list:I

    .line 114
    .line 115
    :goto_3
    invoke-static {v5}, Lcom/transsion/baseui/util/m;->c(I)V

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Llu/a;->a:Llu/a$b;

    .line 119
    .line 120
    invoke-interface {v5}, Llu/a$b;->a()Liu/r;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iget-object v5, v5, Liu/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eqz v5, :cond_7

    .line 140
    .line 141
    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    move v5, v3

    .line 153
    :goto_4
    if-nez v2, :cond_8

    .line 154
    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 159
    .line 160
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    :goto_5
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 165
    .line 166
    invoke-interface {v2}, Llu/a$b;->a()Liu/r;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v2, v2, Liu/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_9

    .line 184
    .line 185
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setHasFavorite(Ljava/lang/Boolean;)V

    .line 203
    .line 204
    .line 205
    :cond_a
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 206
    .line 207
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0, v1, v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->l0(Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_6
    return-void
.end method

.method private final e()V
    .locals 10

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Llu/a;->b:Llu/i;

    .line 18
    .line 19
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 20
    .line 21
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v4, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v4, v1

    .line 35
    :goto_0
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 36
    .line 37
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v5, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v5, v1

    .line 54
    :goto_1
    const/16 v8, 0x18

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const-string v3, "like"

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static/range {v2 .. v9}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 65
    .line 66
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_b

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x0

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v2, v3

    .line 106
    :goto_2
    xor-int/lit8 v4, v2, 0x1

    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_liked:I

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_like_removed:I

    .line 114
    .line 115
    :goto_3
    invoke-static {v5}, Lcom/transsion/baseui/util/m;->c(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_7

    .line 129
    .line 130
    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-eqz v5, :cond_7

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    move v5, v3

    .line 142
    :goto_4
    if-nez v2, :cond_8

    .line 143
    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 148
    .line 149
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    :goto_5
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 154
    .line 155
    invoke-interface {v2}, Llu/a$b;->a()Liu/r;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v2, v2, Liu/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 169
    .line 170
    invoke-interface {v2}, Llu/a$b;->a()Liu/r;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v2, v2, Liu/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_9

    .line 184
    .line 185
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setLikeNum(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setHasLike(Ljava/lang/Boolean;)V

    .line 203
    .line 204
    .line 205
    :cond_a
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 206
    .line 207
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0, v1, v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->m0(Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_6
    return-void
.end method

.method private final f()V
    .locals 10

    .line 1
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 17
    .line 18
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 33
    .line 34
    invoke-interface {v2}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v2, v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v3

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_2

    .line 52
    :goto_0
    iget-object v2, p0, Llu/a;->b:Llu/i;

    .line 53
    .line 54
    const-string v3, "play_list"

    .line 55
    .line 56
    iget-object v4, p0, Llu/a;->a:Llu/a$b;

    .line 57
    .line 58
    invoke-interface {v4}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v5, 0x0

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v4, v5

    .line 71
    :goto_1
    iget-object v6, p0, Llu/a;->a:Llu/a$b;

    .line 72
    .line 73
    invoke-interface {v6}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :cond_2
    const/16 v8, 0x18

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v2 .. v9}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog;->k:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog$a;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog$a;->a(Z)Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "immPlayList"

    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    goto :goto_3

    .line 113
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 114
    .line 115
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method private final g()V
    .locals 10

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Llu/a;->b:Llu/i;

    .line 18
    .line 19
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 20
    .line 21
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v4, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v4, v1

    .line 35
    :goto_0
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 36
    .line 37
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v5, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v5, v1

    .line 54
    :goto_1
    const/16 v8, 0x18

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const-string v3, "search"

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static/range {v2 .. v9}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 65
    .line 66
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSearchWord()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v0, v1

    .line 92
    :goto_2
    const-string v2, "/ugc_search/search_manager"

    .line 93
    .line 94
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "keyword"

    .line 99
    .line 100
    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 105
    .line 106
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move-object v2, v1

    .line 124
    :goto_3
    const-string v3, "form_ugc_video_id"

    .line 125
    .line 126
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "back_exit"

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 138
    .line 139
    invoke-interface {v2}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move-object v2, v1

    .line 151
    :goto_4
    const/4 v3, 0x2

    .line 152
    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private final h()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "share"

    .line 4
    .line 5
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 6
    .line 7
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 14
    .line 15
    sget v2, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lfh/b$a;->d(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v3, v1, Llu/a;->b:Llu/i;

    .line 22
    .line 23
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 24
    .line 25
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v11, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v5, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v5, v11

    .line 39
    :goto_0
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 40
    .line 41
    invoke-interface {v2}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v6, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v6, v11

    .line 58
    :goto_1
    const/16 v9, 0x18

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const-string v4, "share"

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-static/range {v3 .. v10}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v1, Llu/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    .line 69
    .line 70
    if-nez v2, :cond_8

    .line 71
    .line 72
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 73
    .line 74
    invoke-interface {v2}, Llu/a$b;->h()Lqx/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object v2, v11

    .line 86
    :goto_2
    sget-object v12, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 87
    .line 88
    sget-object v13, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    .line 89
    .line 90
    iget-object v3, v1, Llu/a;->a:Llu/a$b;

    .line 91
    .line 92
    invoke-interface {v3}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    move-object v14, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move-object v14, v11

    .line 111
    :goto_3
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v15, v2

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move-object v15, v11

    .line 120
    :goto_4
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v16

    .line 126
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 127
    .line 128
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object/from16 v17, v2

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    move-object/from16 v17, v11

    .line 148
    .line 149
    :goto_5
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 150
    .line 151
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    :cond_7
    move-object/from16 v23, v11

    .line 168
    .line 169
    const/16 v25, 0x800

    .line 170
    .line 171
    const/16 v26, 0x0

    .line 172
    .line 173
    const/16 v18, 0x0

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v20, 0x0

    .line 178
    .line 179
    const/16 v21, 0x0

    .line 180
    .line 181
    const-string v22, "UGCVideoDetail"

    .line 182
    .line 183
    const/16 v24, 0x0

    .line 184
    .line 185
    invoke-static/range {v12 .. v26}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iput-object v2, v1, Llu/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    .line 190
    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    new-instance v3, Llu/a$c;

    .line 194
    .line 195
    invoke-direct {v3}, Llu/a$c;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    :try_start_0
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 202
    .line 203
    invoke-interface {v2}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    const/4 v3, 0x1

    .line 214
    if-ne v2, v3, :cond_b

    .line 215
    .line 216
    iget-object v2, v1, Llu/a;->a:Llu/a$b;

    .line 217
    .line 218
    invoke-interface {v2}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 231
    .line 232
    .line 233
    iget-object v4, v1, Llu/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    .line 234
    .line 235
    if-eqz v4, :cond_9

    .line 236
    .line 237
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-ne v4, v3, :cond_9

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :catch_0
    move-exception v0

    .line 245
    goto :goto_7

    .line 246
    :cond_9
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    if-eqz v3, :cond_a

    .line 251
    .line 252
    :goto_6
    return-void

    .line 253
    :cond_a
    iget-object v3, v1, Llu/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    .line 254
    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_b
    :goto_8
    return-void
.end method

.method private final i()V
    .locals 11

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 18
    .line 19
    invoke-interface {v0}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v10, 0x1

    .line 57
    xor-int/2addr v0, v10

    .line 58
    iget-object v1, p0, Llu/a;->b:Llu/i;

    .line 59
    .line 60
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 61
    .line 62
    invoke-interface {v2}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_0
    move-object v4, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v2, 0x0

    .line 79
    goto :goto_0

    .line 80
    :goto_1
    const/16 v7, 0x18

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const-string v2, "subscribe"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static/range {v1 .. v8}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 91
    .line 92
    invoke-interface {v1, v10}, Llu/a$b;->i(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 96
    .line 97
    invoke-interface {v1}, Llu/a$b;->a()Liu/r;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v1, v1, Liu/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 102
    .line 103
    const-string v2, "ivUgcImmSubscribe"

    .line 104
    .line 105
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 112
    .line 113
    invoke-interface {v1}, Llu/a$b;->a()Liu/r;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v1, v1, Liu/r;->u:Landroid/widget/ProgressBar;

    .line 118
    .line 119
    const-string v2, "pbUgcImmSubscribeLoading"

    .line 120
    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Llu/a;->a:Llu/a$b;

    .line 128
    .line 129
    invoke-interface {v1}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v1, v9, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->n0(Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_2
    return-void
.end method

.method private final j()V
    .locals 11

    .line 1
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 17
    .line 18
    invoke-interface {v2}, Llu/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_1
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_5

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_2
    iget-object v3, p0, Llu/a;->b:Llu/i;

    .line 47
    .line 48
    iget-object v0, p0, Llu/a;->a:Llu/a$b;

    .line 49
    .line 50
    invoke-interface {v0}, Llu/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v6, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v6, v1

    .line 67
    :goto_1
    const/16 v9, 0x18

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const-string v4, "user"

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    move-object v5, v2

    .line 75
    invoke-static/range {v3 .. v10}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    const-string v2, "/profile/user_profile"

    .line 91
    .line 92
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "userId"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Llu/a;->a:Llu/a$b;

    .line 103
    .line 104
    invoke-interface {v2}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object v2, v1

    .line 116
    :goto_2
    const/4 v3, 0x2

    .line 117
    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-wide/16 v2, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "onclick, "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x0

    .line 41
    const-string v2, "UGCImmVideoAction"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    :goto_1
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmBack:I

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ne v1, v0, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Llu/a;->a:Llu/a$b;

    .line 71
    .line 72
    invoke-interface {p1}, Llu/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_18

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_18

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_d

    .line 88
    .line 89
    :cond_4
    :goto_2
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmLike:I

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v1, v0, :cond_6

    .line 99
    .line 100
    invoke-direct {p0}, Llu/a;->e()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_d

    .line 104
    .line 105
    :cond_6
    :goto_3
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmFavorite:I

    .line 106
    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ne v1, v0, :cond_8

    .line 115
    .line 116
    invoke-direct {p0}, Llu/a;->d()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_d

    .line 120
    .line 121
    :cond_8
    :goto_4
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmComment:I

    .line 122
    .line 123
    if-nez p1, :cond_9

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-ne v1, v0, :cond_a

    .line 131
    .line 132
    invoke-direct {p0}, Llu/a;->b()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_d

    .line 136
    .line 137
    :cond_a
    :goto_5
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmShare:I

    .line 138
    .line 139
    if-nez p1, :cond_b

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-ne v1, v0, :cond_c

    .line 147
    .line 148
    invoke-direct {p0}, Llu/a;->h()V

    .line 149
    .line 150
    .line 151
    goto :goto_d

    .line 152
    :cond_c
    :goto_6
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmDownload:I

    .line 153
    .line 154
    if-nez p1, :cond_d

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v1, v0, :cond_e

    .line 162
    .line 163
    invoke-direct {p0}, Llu/a;->c()V

    .line 164
    .line 165
    .line 166
    goto :goto_d

    .line 167
    :cond_e
    :goto_7
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmUserCover:I

    .line 168
    .line 169
    if-nez p1, :cond_f

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eq v1, v0, :cond_17

    .line 177
    .line 178
    :goto_8
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmUserName:I

    .line 179
    .line 180
    if-nez p1, :cond_10

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-ne v1, v0, :cond_11

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_11
    :goto_9
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmSubscribe:I

    .line 191
    .line 192
    if-nez p1, :cond_12

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ne v1, v0, :cond_13

    .line 200
    .line 201
    invoke-direct {p0}, Llu/a;->i()V

    .line 202
    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_13
    :goto_a
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->layoutUgcImmTvEpisode:I

    .line 206
    .line 207
    if-nez p1, :cond_14

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-ne v1, v0, :cond_15

    .line 215
    .line 216
    invoke-direct {p0}, Llu/a;->f()V

    .line 217
    .line 218
    .line 219
    goto :goto_d

    .line 220
    :cond_15
    :goto_b
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->layoutUgcImmTvSearch:I

    .line 221
    .line 222
    if-nez p1, :cond_16

    .line 223
    .line 224
    goto :goto_d

    .line 225
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-ne p1, v0, :cond_18

    .line 230
    .line 231
    invoke-direct {p0}, Llu/a;->g()V

    .line 232
    .line 233
    .line 234
    goto :goto_d

    .line 235
    :cond_17
    :goto_c
    invoke-direct {p0}, Llu/a;->j()V

    .line 236
    .line 237
    .line 238
    :cond_18
    :goto_d
    return-void
.end method
