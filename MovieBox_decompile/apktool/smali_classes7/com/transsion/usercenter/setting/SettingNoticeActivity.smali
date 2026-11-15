.class public final Lcom/transsion/usercenter/setting/SettingNoticeActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxu/y0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/SettingNoticeActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxu/y0;",
        "<init>",
        "()V",
        "",
        "d0",
        "c0",
        "()Lxu/y0;",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "a",
        "Z",
        "showNotice",
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


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/setting/SettingNoticeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->e0(Lcom/transsion/usercenter/setting/SettingNoticeActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "k_is_show_ongoing_tool_notice"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lxu/y0;

    .line 21
    .line 22
    iget-object v0, v0, Lxu/y0;->b:Lcom/tn/lib/view/SwitchButton;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lxu/y0;

    .line 34
    .line 35
    iget-object v0, v0, Lxu/y0;->b:Lcom/tn/lib/view/SwitchButton;

    .line 36
    .line 37
    new-instance v1, Lcom/transsion/usercenter/setting/v;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/v;-><init>(Lcom/transsion/usercenter/setting/SettingNoticeActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final e0(Lcom/transsion/usercenter/setting/SettingNoticeActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "k_is_show_ongoing_tool_notice"

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->y()V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->G()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 39
    .line 40
    xor-int/2addr p1, v0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lxu/y0;

    .line 48
    .line 49
    iget-object p1, p1, Lxu/y0;->b:Lcom/tn/lib/view/SwitchButton;

    .line 50
    .line 51
    iget-boolean p0, p0, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->a:Z

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public c0()Lxu/y0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxu/y0;->c(Landroid/view/LayoutInflater;)Lxu/y0;

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
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->c0()Lxu/y0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lxu/y0;

    .line 9
    .line 10
    iget-object p1, p1, Lxu/y0;->c:Lcom/tn/lib/view/TitleLayout;

    .line 11
    .line 12
    const-string v0, "toolBar"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lxu/y0;

    .line 25
    .line 26
    iget-object p1, p1, Lxu/y0;->c:Lcom/tn/lib/view/TitleLayout;

    .line 27
    .line 28
    sget v0, Lcom/transsion/usercenter/R$string;->user_setting:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(I)Lcom/tn/lib/view/TitleLayout;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/SettingNoticeActivity;->d0()V

    .line 34
    .line 35
    .line 36
    return-void
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
