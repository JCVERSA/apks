.class public final Lcom/transsion/usercenter/ProfileSettingAboutUsActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxu/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/usercenter/ProfileSettingAboutUsActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxu/i;",
        "<init>",
        "()V",
        "",
        "c0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "b0",
        "()Lxu/i;",
        "",
        "isTranslucent",
        "()Z",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/i;

    .line 6
    .line 7
    iget-object v0, v0, Lxu/i;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 18
    .line 19
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x6

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "Privacy Policy"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, v0

    .line 32
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-instance v2, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity$a;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity$a;-><init>()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v1, 0xe

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-virtual {v7, v2, v1, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    .line 46
    .line 47
    const-string v2, "User Agreement"

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    move-object v1, v0

    .line 51
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    new-instance v1, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity$b;

    .line 56
    .line 57
    invoke-direct {v1}, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity$b;-><init>()V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v0, 0xe

    .line 61
    .line 62
    invoke-virtual {v7, v1, v0, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lxu/i;

    .line 70
    .line 71
    iget-object v0, v0, Lxu/i;->d:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lxu/i;

    .line 85
    .line 86
    iget-object v0, v0, Lxu/i;->d:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lxu/i;

    .line 96
    .line 97
    iget-object v0, v0, Lxu/i;->d:Landroid/widget/TextView;

    .line 98
    .line 99
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 100
    .line 101
    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public b0()Lxu/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxu/i;->c(Landroid/view/LayoutInflater;)Lxu/i;

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
    invoke-virtual {p0}, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity;->b0()Lxu/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lxu/i;

    .line 9
    .line 10
    invoke-virtual {p1}, Lxu/i;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lxu/i;

    .line 27
    .line 28
    iget-object p1, p1, Lxu/i;->c:Lcom/tn/lib/view/TitleLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/tn/lib/view/TitleLayout;->goneRightViewLayout()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/usercenter/ProfileSettingAboutUsActivity;->c0()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lxu/i;

    .line 41
    .line 42
    iget-object p1, p1, Lxu/i;->f:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v0, "V 1.0  todo \u8fd9\u91cc\u901a\u8fc7\u5de5\u5177\u7c7b\u83b7\u53d6"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lxu/i;

    .line 54
    .line 55
    iget-object p1, p1, Lxu/i;->e:Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v0, "Oneroom   todo \u8fd9\u91cc\u901a\u8fc7\u5de5\u5177\u7c7b\u83b7\u53d6"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
