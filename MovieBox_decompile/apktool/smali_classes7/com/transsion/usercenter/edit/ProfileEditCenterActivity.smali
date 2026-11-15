.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxu/j;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ)\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxu/j;",
        "<init>",
        "()V",
        "",
        "initView",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "onBackPressed",
        "d0",
        "()Lxu/j;",
        "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;",
        "a",
        "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;",
        "profileEditFragment",
        "b",
        "UserCenter_psRelease"
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
.field public static final b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;


# instance fields
.field private a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->e0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->f0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "profileEditFragment"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkBack()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final f0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "profileEditFragment"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->confirmSubmit()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final initData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "user"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    instance-of v2, v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "kidsProfile"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/transsion/baselib/kids/KidsProfile;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "getSupportFragmentManager(...)"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "beginTransaction(...)"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->Companion:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;

    .line 53
    .line 54
    invoke-virtual {v4, v0, v2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;->a(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/baselib/kids/KidsProfile;)Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 59
    .line 60
    const-string v2, "profileEditFragment"

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->fl_content:I

    .line 68
    .line 69
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 70
    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v1, v4

    .line 78
    :goto_1
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroidx/fragment/app/w;->j()I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lxu/j;

    .line 89
    .line 90
    iget-object v0, v0, Lxu/j;->d:Lcom/tn/lib/view/TitleLayout;

    .line 91
    .line 92
    new-instance v1, Lcom/transsion/usercenter/edit/c;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/c;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 98
    .line 99
    .line 100
    sget v1, Lcom/transsion/publish/R$string;->profile_empty_done:I

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "getString(...)"

    .line 107
    .line 108
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget v4, Lcom/tn/lib/widget/R$color;->main:I

    .line 116
    .line 117
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    new-instance v4, Lcom/transsion/usercenter/edit/d;

    .line 122
    .line 123
    invoke-direct {v4, p0}, Lcom/transsion/usercenter/edit/d;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, v3, v4}, Lcom/tn/lib/view/TitleLayout;->setRightView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 127
    .line 128
    .line 129
    sget v1, Lcom/transsion/usercenter/R$string;->profile_edit_profile:I

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lxu/j;

    .line 146
    .line 147
    iget-object v0, v0, Lxu/j;->c:Landroid/widget/ProgressBar;

    .line 148
    .line 149
    const-string v1, "loadView"

    .line 150
    .line 151
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private final initView()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public d0()Lxu/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxu/j;->c(Landroid/view/LayoutInflater;)Lxu/j;

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

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->d0()Lxu/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "profileEditFragment"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkEditSubmit(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->initData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
