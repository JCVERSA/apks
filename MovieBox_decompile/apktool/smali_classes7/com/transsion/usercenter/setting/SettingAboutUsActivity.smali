.class public final Lcom/transsion/usercenter/setting/SettingAboutUsActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxu/v0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/SettingAboutUsActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxu/v0;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "f0",
        "()Lxu/v0;",
        "onDestroy",
        "",
        "a",
        "I",
        "CLICK_COUNT",
        "b",
        "CLICK_TIME",
        "",
        "c",
        "J",
        "lastClickTime",
        "d",
        "clickCount",
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
.field private final a:I

.field private final b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    .line 6
    .line 7
    const/16 v0, 0x1f4

    .line 8
    .line 9
    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->g0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->i0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->h0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->j0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    .line 10
    .line 11
    int-to-long v4, p2

    .line 12
    cmp-long p2, v2, v4

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    .line 16
    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    iput p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 25
    .line 26
    :goto_0
    iput-wide v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    .line 27
    .line 28
    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 29
    .line 30
    iget v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    .line 31
    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    new-instance p1, Landroid/content/Intent;

    .line 37
    .line 38
    const-class p2, Lcom/transsion/usercenter/laboratory/LaboratoryActivity;

    .line 39
    .line 40
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lcom/transsion/usercenter/setting/c;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/setting/c;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;->r0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "labPwd"

    .line 62
    .line 63
    invoke-virtual {p1, p0, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method private static final h0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/usercenter/laboratory/LaboratoryActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final i0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    .line 10
    .line 11
    int-to-long v4, p1

    .line 12
    cmp-long p1, v2, v4

    .line 13
    .line 14
    if-gez p1, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 25
    .line 26
    :goto_0
    iput-wide v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    .line 27
    .line 28
    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 29
    .line 30
    iget v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/transsion/usercenter/setting/d;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/d;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;->r0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "AdDeveloperDialog"

    .line 49
    .line 50
    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private final initView()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/v0;

    .line 6
    .line 7
    iget-object v0, v0, Lxu/v0;->c:Lcom/tn/lib/view/TitleLayout;

    .line 8
    .line 9
    sget v1, Lcom/transsion/usercenter/R$string;->user_setting_About_us:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getString(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 21
    .line 22
    .line 23
    sget v0, Lcom/transsion/usercenter/R$string;->login_sign_up_privacy:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/transsion/usercenter/R$string;->login_privacy:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v3, Lcom/transsion/usercenter/R$string;->login_user_agreement:I

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/text/SpannableString;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    new-instance v10, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$a;

    .line 56
    .line 57
    invoke-direct {v10, p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$a;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    .line 58
    .line 59
    .line 60
    new-instance v11, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$b;

    .line 61
    .line 62
    invoke-direct {v11, p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$b;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    .line 63
    .line 64
    .line 65
    const/4 v7, 0x6

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v3, v0

    .line 70
    move-object v4, v1

    .line 71
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, -0x1

    .line 77
    if-eq v3, v13, :cond_0

    .line 78
    .line 79
    move v14, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move v14, v12

    .line 82
    :goto_0
    const/4 v7, 0x6

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v3, v0

    .line 87
    move-object v4, v9

    .line 88
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eq v0, v13, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v0, v12

    .line 96
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, v14

    .line 101
    const/16 v3, 0x21

    .line 102
    .line 103
    invoke-virtual {v2, v10, v14, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-int/2addr v1, v0

    .line 111
    invoke-virtual {v2, v11, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lxu/v0;

    .line 119
    .line 120
    iget-object v0, v0, Lxu/v0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lxu/v0;

    .line 137
    .line 138
    iget-object v0, v0, Lxu/v0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "lab_enter_password_time"

    .line 154
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    sub-long/2addr v2, v0

    .line 166
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 167
    .line 168
    const-wide/16 v4, 0x1

    .line 169
    .line 170
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    cmp-long v0, v2, v0

    .line 175
    .line 176
    if-gez v0, :cond_2

    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lxu/v0;

    .line 184
    .line 185
    iget-object v0, v0, Lxu/v0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    new-instance v1, Lcom/transsion/usercenter/setting/a;

    .line 188
    .line 189
    invoke-direct {v1, p0, v12}, Lcom/transsion/usercenter/setting/a;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lxu/v0;

    .line 200
    .line 201
    iget-object v0, v0, Lxu/v0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 202
    .line 203
    new-instance v1, Lcom/transsion/usercenter/setting/b;

    .line 204
    .line 205
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/b;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private static final j0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/usercenter/laboratory/MccActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public f0()Lxu/v0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxu/v0;->c(Landroid/view/LayoutInflater;)Lxu/v0;

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
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->f0()Lxu/v0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->initView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    .line 6
    .line 7
    return-void
.end method
