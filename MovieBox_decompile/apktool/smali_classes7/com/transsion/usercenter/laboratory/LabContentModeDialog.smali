.class public final Lcom/transsion/usercenter/laboratory/LabContentModeDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabContentModeDialog;",
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
        "Lxu/r;",
        "c",
        "Lxu/r;",
        "viewBinding",
        "",
        "d",
        "Z",
        "isUGCMode",
        "e",
        "isResetMode",
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
.field private c:Lxu/r;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_content_mode:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->q0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->r0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->s0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 2
    .line 3
    const-string v0, "key_or_content_mode_local"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 8
    .line 9
    const-string v1, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u5df2\u4f7f\u7528\u7ebf\u4e0a\u914d\u7f6e"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v1, "UGCVideo"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "Subject"

    .line 34
    .line 35
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "\u5f53\u524d\u5a92\u4f53\u64ad\u653e\u6a21\u5f0f\u662f playMode = "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lij/g;->a:Lij/g;

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lij/g;->e(Z)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonSubject:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonUGCVideo:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p2, p1, :cond_1

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget p1, Lcom/transsion/usercenter/R$id;->radioButtonReset:I

    .line 22
    .line 23
    if-ne p2, p1, :cond_2

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 28
    .line 29
    :cond_2
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
    invoke-static {p1}, Lxu/r;->a(Landroid/view/View;)Lxu/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 14
    .line 15
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "key_or_content_mode_local"

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lxu/r;->g:Landroid/widget/RadioGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    sget v0, Lcom/transsion/usercenter/R$id;->radioButtonReset:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-boolean p2, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p1, Lij/g;->a:Lij/g;

    .line 51
    .line 52
    invoke-virtual {p1}, Lij/g;->b()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p1, Lxu/r;->g:Landroid/widget/RadioGroup;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    sget v0, Lcom/transsion/usercenter/R$id;->radioButtonUGCVideo:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iput-boolean p2, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p1, Lxu/r;->g:Landroid/widget/RadioGroup;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    sget p2, Lcom/transsion/usercenter/R$id;->radioButtonSubject:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->d:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->e:Z

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    iget-object p1, p1, Lxu/r;->b:Landroid/widget/Button;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    new-instance p2, Lcom/transsion/usercenter/laboratory/d;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/d;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object p1, p1, Lxu/r;->c:Landroid/widget/Button;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    new-instance p2, Lcom/transsion/usercenter/laboratory/e;

    .line 118
    .line 119
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/e;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/LabContentModeDialog;->c:Lxu/r;

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    .line 129
    iget-object p1, p1, Lxu/r;->g:Landroid/widget/RadioGroup;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    new-instance p2, Lcom/transsion/usercenter/laboratory/f;

    .line 134
    .line 135
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/laboratory/f;-><init>(Lcom/transsion/usercenter/laboratory/LabContentModeDialog;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    return-void
.end method
