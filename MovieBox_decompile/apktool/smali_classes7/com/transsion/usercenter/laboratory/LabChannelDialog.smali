.class public final Lcom/transsion/usercenter/laboratory/LabChannelDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabChannelDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lxu/q;",
        "c",
        "Lxu/q;",
        "viewBinding",
        "",
        "d",
        "Ljava/lang/String;",
        "channelTag",
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
.field private c:Lxu/q;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_channel_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->q0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->s0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->r0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljg/b;->a:Ljg/b$a;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljg/b$a;->k(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "\u81ea\u5b9a\u4e49\u6210\u529f -- channel = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonGP:I

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 6
    .line 7
    const-string p2, "gp"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonPS:I

    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 20
    .line 21
    const-string p2, "ps"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->d:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    :goto_0
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
    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

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
    invoke-static {p1}, Lxu/q;->a(Landroid/view/View;)Lxu/q;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    sget-object p2, Ljg/b;->a:Ljg/b$a;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "ps"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p1, Lxu/q;->f:Landroid/widget/RadioGroup;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonPS:I

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p2, "gp"

    .line 50
    .line 51
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p1, Lxu/q;->f:Landroid/widget/RadioGroup;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonGP:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p1, Lxu/q;->f:Landroid/widget/RadioGroup;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p1, Lxu/q;->b:Landroid/widget/Button;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    new-instance p2, Lcom/transsion/usercenter/laboratory/a;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/a;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p1, p1, Lxu/q;->c:Landroid/widget/Button;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    new-instance p2, Lcom/transsion/usercenter/laboratory/b;

    .line 107
    .line 108
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/b;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->c:Lxu/q;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    iget-object p1, p1, Lxu/q;->f:Landroid/widget/RadioGroup;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    new-instance p2, Lcom/transsion/usercenter/laboratory/c;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/c;-><init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    return-void
.end method
