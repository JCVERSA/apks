.class public final Lcom/transsion/usercenter/laboratory/LabStreamingDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabStreamingDialog;",
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
        "Lxu/z;",
        "c",
        "Lxu/z;",
        "viewBinding",
        "Lcom/transsion/baselib/utils/PlayMode;",
        "d",
        "Lcom/transsion/baselib/utils/PlayMode;",
        "playMode",
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
.field private c:Lxu/z;

.field private d:Lcom/transsion/baselib/utils/PlayMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_streaming_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->s0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->q0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->r0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u662f playMode = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object v0, Lij/t;->a:Lij/t;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lij/t;->c(Lcom/transsion/baselib/utils/PlayMode;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonDownload:I

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 6
    .line 7
    const-string p2, "PlayMode.DOWNLOAD"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->DOWNLOAD:Lcom/transsion/baselib/utils/PlayMode;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonStream:I

    .line 18
    .line 19
    if-ne p2, p1, :cond_1

    .line 20
    .line 21
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 22
    .line 23
    const-string p2, "PlayMode.STREAM"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 31
    .line 32
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
    invoke-static {p1}, Lxu/z;->a(Landroid/view/View;)Lxu/z;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    sget-object p1, Lij/t;->a:Lij/t;

    .line 22
    .line 23
    invoke-virtual {p1}, Lij/t;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p1, Lxu/z;->f:Landroid/widget/RadioGroup;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonStream:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p1, Lxu/z;->f:Landroid/widget/RadioGroup;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonDownload:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    sget-object p1, Lcom/transsion/baselib/utils/PlayMode;->DOWNLOAD:Lcom/transsion/baselib/utils/PlayMode;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->d:Lcom/transsion/baselib/utils/PlayMode;

    .line 63
    .line 64
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p1, Lxu/z;->b:Landroid/widget/Button;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    new-instance p2, Lcom/transsion/usercenter/laboratory/g0;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/g0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p1, Lxu/z;->c:Landroid/widget/Button;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    new-instance p2, Lcom/transsion/usercenter/laboratory/h0;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/h0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->c:Lxu/z;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    iget-object p1, p1, Lxu/z;->f:Landroid/widget/RadioGroup;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    new-instance p2, Lcom/transsion/usercenter/laboratory/i0;

    .line 105
    .line 106
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/i0;-><init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    return-void
.end method
