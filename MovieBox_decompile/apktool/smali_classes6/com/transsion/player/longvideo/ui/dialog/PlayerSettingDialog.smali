.class public final Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "isChecked",
        "",
        "p0",
        "(Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;->o0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o0(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "k_pip_enable"

    .line 8
    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2}, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;->p0(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final p0(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcw/e;->a:Lcw/e$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcw/e$a;->b()Lcw/e;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lcw/e;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x1f

    .line 24
    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcw/e$a;->b()Lcw/e;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    move-object v5, v0

    .line 32
    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    move v7, p1

    .line 40
    invoke-static/range {v4 .. v10}, Lcw/e$b;->c(Lcw/e;Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;ILjava/lang/Object;)Landroid/app/PictureInPictureParams;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsnet/downloader/R$style;->DownloadBottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/transsion/postdetail/R$layout;->dialog_player_setting_layout:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-static {}, Luf/c;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/tn/lib/widget/R$style;->ActionSheetDialogLeft:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lcom/tn/lib/widget/R$style;->ActionSheetDialogRight:I

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Luf/c;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const v0, 0x800003

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const v0, 0x800005

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/high16 v0, 0x43820000    # 260.0f

    .line 60
    .line 61
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, -0x1

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    sget-object v0, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 79
    .line 80
    .line 81
    :cond_2
    sget p2, Lcom/transsion/postdetail/R$id;->switchBtn:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/tn/lib/view/SwitchButton;

    .line 88
    .line 89
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "k_pip_enable"

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Lcom/transsion/player/longvideo/ui/dialog/t;

    .line 106
    .line 107
    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/ui/dialog/t;-><init>(Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
