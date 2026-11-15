.class public final Lcom/transsion/videodetail/StreamDetailActivity;
.super Lcom/transsion/videodetail/BaseDetailActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/videofloat/manager/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videodetail/StreamDetailActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/videodetail/BaseDetailActivity<",
        "Llm/a;",
        ">;",
        "Lcom/transsion/videofloat/manager/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/videodetail/StreamDetailActivity;",
        "Lcom/transsion/videodetail/BaseDetailActivity;",
        "Llm/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "p0",
        "retryLoadData",
        "G0",
        "()Llm/a;",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "onResume",
        "onPause",
        "h",
        "",
        "isChangeStatusBar",
        "()Z",
        "u",
        "a",
        "VideoDetail_psRelease"
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


# static fields
.field public static final u:Lcom/transsion/videodetail/StreamDetailActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/videodetail/StreamDetailActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/videodetail/StreamDetailActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/videodetail/StreamDetailActivity;->u:Lcom/transsion/videodetail/StreamDetailActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/BaseDetailActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G0()Llm/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llm/a;->c(Landroid/view/LayoutInflater;)Llm/a;

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

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "subjectdetail"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videodetail/StreamDetailActivity;->G0()Llm/a;

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
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/transsion/videodetail/StreamDetailFragment;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/transsion/videodetail/StreamDetailFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->Y1()V

    .line 16
    .line 17
    .line 18
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/videodetail/BaseDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/transsion/videodetail/StreamDetailFragment;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/transsion/videodetail/StreamDetailFragment;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->Y1()V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p0}, Lcw/e;->j(Landroidx/fragment/app/FragmentActivity;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "VideoDetailFragment"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/transsion/videodetail/BaseDetailActivity;->E0(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "getSupportFragmentManager(...)"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "beginTransaction()"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lcom/transsion/videodetail/StreamDetailFragment;->K:Lcom/transsion/videodetail/StreamDetailFragment$a;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/transsion/videodetail/StreamDetailFragment$a;->a()Lcom/transsion/videodetail/StreamDetailFragment;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "id"

    .line 56
    .line 57
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v4, "ops"

    .line 63
    .line 64
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->j:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v4, "auto_download"

    .line 70
    .line 71
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->k:Z

    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string v4, "auto_play"

    .line 77
    .line 78
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->l:Z

    .line 79
    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v4, "auto_play_resource_id"

    .line 84
    .line 85
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->m:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v4, "module_name"

    .line 91
    .line 92
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->n:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v4, "yy_preload_id"

    .line 98
    .line 99
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->o:I

    .line 100
    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    const-string v4, "season"

    .line 105
    .line 106
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->p:I

    .line 107
    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string v4, "episode"

    .line 112
    .line 113
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->q:I

    .line 114
    .line 115
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    .line 122
    .line 123
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v2}, Lcom/transsion/videodetail/BaseDetailActivity;->E0(Landroidx/fragment/app/Fragment;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 130
    .line 131
    .line 132
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
    invoke-virtual {p0}, Lcom/transsion/videodetail/StreamDetailActivity;->p0()V

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
