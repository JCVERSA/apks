.class public final Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J!\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0017\u001a\u0004\u0008\u0004\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "",
        "haveBatteryPermission",
        "isEnableMember",
        "<init>",
        "(ZZ)V",
        "()V",
        "",
        "initView",
        "t0",
        "r0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function0;",
        "callback",
        "s0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "c",
        "Z",
        "d",
        "()Z",
        "setEnableMember",
        "(Z)V",
        "Lbx/l;",
        "e",
        "Lbx/l;",
        "bind",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "batteryPermissionCallback",
        "Downloader_psRelease"
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
.field private c:Z

.field private d:Z

.field private e:Lbx/l;

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_download_task_control_manager_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 2
    iput-boolean p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->c:Z

    iput-boolean p2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->d:Z

    return-void
.end method

.method private final initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lbx/l;->c:Landroidx/constraintlayout/widget/Group;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->d:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, v0, Lbx/l;->b:Landroidx/constraintlayout/widget/Group;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->c:Z

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->x0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->w0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->v0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->u0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r0()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lwj/f;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lwj/f;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    invoke-interface {v1, v0, v4, v2, v3}, Lwj/f;->e(Ljava/lang/Integer;Ljava/lang/String;Lwj/g;Lcom/transsion/memberapi/MemberSceneType;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private final t0()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v2, v2, Lbx/l;->f:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/transsnet/downloader/dialog/z;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/dialog/z;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget-object v2, v2, Lbx/l;->i:Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    new-instance v4, Lcom/transsnet/downloader/dialog/a0;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Lcom/transsnet/downloader/dialog/a0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 37
    .line 38
    invoke-static {v4, v3, v1, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4}, Lcom/transsnet/downloader/manager/g;->i()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    sget v4, Lcom/transsnet/downloader/R$string;->download_pause_all:I

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget v4, Lcom/transsnet/downloader/R$string;->download_resume_all:I

    .line 56
    .line 57
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    iget-object v2, v2, Lbx/l;->g:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget v5, Lcom/transsnet/downloader/R$string;->download_xx_size_at_once:I

    .line 77
    .line 78
    new-array v6, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    const-class v7, Lim/b;

    .line 81
    .line 82
    invoke-static {v7, v6}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lim/b;

    .line 87
    .line 88
    if-eqz v6, :cond_3

    .line 89
    .line 90
    invoke-interface {v6}, Lim/b;->B()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v3, v1, v0

    .line 105
    .line 106
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "getString(...)"

    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/transsnet/downloader/dialog/b0;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/b0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v0, v0, Lbx/l;->e:Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    new-instance v1, Lcom/transsnet/downloader/dialog/c0;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/dialog/c0;-><init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void
.end method

.method private static final u0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcom/transsnet/downloader/manager/g;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-class v3, Lwj/d;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->n()V

    .line 23
    .line 24
    .line 25
    new-array p1, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v3, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lwj/d;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-interface {p1}, Lwj/d;->f()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, v0, v1, v0}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->v()V

    .line 44
    .line 45
    .line 46
    new-array p1, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v3, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lwj/d;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Lwj/d;->e()V

    .line 57
    .line 58
    .line 59
    :cond_1
    const-class p1, Lim/b;

    .line 60
    .line 61
    new-array v0, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lim/b;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Lim/b;->e()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :cond_2
    if-eqz v4, :cond_3

    .line 76
    .line 77
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 78
    .line 79
    sget v0, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start_mul:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 86
    .line 87
    sget v0, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start:I

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private static final w0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v0, Lwj/d;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lwj/d;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lwj/d;->g()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->r0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final x0(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    .line 21
    .line 22
    const-string v1, "download_manager_dialog"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->f:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsnet/downloader/util/d;->l(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x50

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 24
    .line 25
    .line 26
    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    sget v0, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 38
    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    const/4 v1, -0x2

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {p1}, Lbx/l;->a(Landroid/view/View;)Lbx/l;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->e:Lbx/l;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->initView()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->t0()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->f:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method
