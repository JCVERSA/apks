.class public final Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001aJ\u000f\u0010 \u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001aJ\u000f\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0005J\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0005J\u000f\u0010\'\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0005R\u0018\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010)R\u0018\u00102\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010)R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00109\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Liu/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "category",
        "D0",
        "(Ljava/lang/String;)V",
        "C0",
        "()Liu/a;",
        "q0",
        "retryLoadData",
        "getPageName",
        "()Ljava/lang/String;",
        "onPause",
        "onDestroy",
        "h",
        "",
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
        "l0",
        "m0",
        "k0",
        "p0",
        "i",
        "Ljava/lang/String;",
        "videoId",
        "j",
        "resourceId",
        "k",
        "type",
        "l",
        "previousPageVideoId",
        "m",
        "previousPageTrackId",
        "Landroidx/fragment/app/Fragment;",
        "n",
        "Landroidx/fragment/app/Fragment;",
        "mFragment",
        "o",
        "Z",
        "hasHandledActivityLimit",
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

.field private n:Landroidx/fragment/app/Fragment;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C0()Liu/a;
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

.method public final D0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->o:Z

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
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->o:Z

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

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/ugc_video/local_detail"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->C0()Liu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    .line 18
    .line 19
    .line 20
    :cond_1
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
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->h()V

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
    .locals 2

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
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    return-void
.end method

.method public q0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "getSupportFragmentManager(...)"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "beginTransaction()"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->u:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$a;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "id"

    .line 44
    .line 45
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->i:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "resource_id"

    .line 52
    .line 53
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->j:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "ugcCategory"

    .line 60
    .line 61
    iget-object v6, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->k:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "parent_video_id"

    .line 68
    .line 69
    iget-object v7, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->l:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v7, "parent_track_id"

    .line 76
    .line 77
    iget-object v8, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->m:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x5

    .line 84
    new-array v8, v8, [Lkotlin/Pair;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    aput-object v3, v8, v9

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    aput-object v4, v8, v3

    .line 91
    .line 92
    const/4 v3, 0x2

    .line 93
    aput-object v5, v8, v3

    .line 94
    .line 95
    const/4 v3, 0x3

    .line 96
    aput-object v6, v8, v3

    .line 97
    .line 98
    const/4 v3, 0x4

    .line 99
    aput-object v7, v8, v3

    .line 100
    .line 101
    invoke-static {v8}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    sget v3, Lcom/transsion/ugcvideodetail/R$id;->container:I

    .line 109
    .line 110
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void
.end method

.method public retryLoadData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->w0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->u0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->p0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->y0()V

    .line 20
    .line 21
    .line 22
    :goto_0
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
