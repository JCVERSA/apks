.class public final Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ0\u0010\u0015\u001a\u00020\u00062!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00060\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R3\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010 R\u0018\u0010\'\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "p0",
        "(Landroid/view/View;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "ok",
        "call",
        "s0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "callback",
        "Lbx/f;",
        "d",
        "Lbx/f;",
        "viewBinding",
        "",
        "e",
        "Ljava/lang/String;",
        "noText",
        "f",
        "yesText",
        "g",
        "title",
        "h",
        "tips",
        "i",
        "a",
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


# static fields
.field public static final i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;


# instance fields
.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Lbx/f;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->dialog_download_confirm:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->r0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->q0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lbx/f;->a(Landroid/view/View;)Lbx/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lbx/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lbx/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Lbx/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    new-instance v0, Lcom/transsnet/downloader/dialog/e;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/e;-><init>(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p1, Lbx/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    new-instance v0, Lcom/transsnet/downloader/dialog/f;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/dialog/f;-><init>(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p1, Lbx/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 86
    .line 87
    if-eqz p1, :cond_7

    .line 88
    .line 89
    iget-object p1, p1, Lbx/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object p1, p1, Lbx/f;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 122
    .line 123
    if-eqz p1, :cond_9

    .line 124
    .line 125
    iget-object p1, p1, Lbx/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 133
    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p1, Lbx/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->d:Lbx/f;

    .line 147
    .line 148
    if-eqz p1, :cond_b

    .line 149
    .line 150
    iget-object p1, p1, Lbx/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-eqz p1, :cond_b

    .line 153
    .line 154
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    :goto_3
    return-void
.end method

.method private static final q0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final r0(Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
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
    sget v0, Lcom/transsnet/downloader/R$style;->BaseDialogStyle:I

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget v0, Lcom/transsnet/downloader/R$string;->cancel:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "no_text"

    .line 22
    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->e:Ljava/lang/String;

    .line 28
    .line 29
    sget v0, Lcom/transsnet/downloader/R$string;->confirm:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "yes_text"

    .line 36
    .line 37
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->f:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "title"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->g:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "tips"

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->h:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->p0(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
