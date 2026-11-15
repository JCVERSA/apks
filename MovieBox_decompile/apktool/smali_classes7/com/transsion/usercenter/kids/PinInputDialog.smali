.class public final Lcom/transsion/usercenter/kids/PinInputDialog;
.super Lcom/tn/lib/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/kids/PinInputDialog$a;,
        Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;,
        Lcom/transsion/usercenter/kids/PinInputDialog$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\n\u0018\u0000 R2\u00020\u0001:\u0002S)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010\'\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u00082\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00101\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010*R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u0016\u0010:\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010<\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010*R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010?R\u0018\u0010E\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u001c\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001c\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010LR\u001c\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010L\u00a8\u0006T"
    }
    d2 = {
        "Lcom/transsion/usercenter/kids/PinInputDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "q0",
        "A0",
        "o0",
        "",
        "filledCount",
        "z0",
        "(I)V",
        "",
        "pin",
        "n0",
        "(Ljava/lang/String;)V",
        "k0",
        "m0",
        "r0",
        "y0",
        "l0",
        "x0",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "a",
        "Ljava/lang/String;",
        "pageName",
        "Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;",
        "b",
        "Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;",
        "mode",
        "c",
        "kidsId",
        "",
        "d",
        "Z",
        "showForgetPin",
        "e",
        "isReset",
        "f",
        "I",
        "setStep",
        "g",
        "firstPin",
        "Lcom/tn/lib/widget/TnTextView;",
        "h",
        "Lcom/tn/lib/widget/TnTextView;",
        "tvTitle",
        "i",
        "tvDesc",
        "j",
        "Landroid/view/View;",
        "tvForgetPin",
        "Landroid/widget/EditText;",
        "k",
        "Landroid/widget/EditText;",
        "etHiddenPin",
        "",
        "l",
        "[Landroid/view/View;",
        "pinBoxes",
        "m",
        "pinDots",
        "n",
        "pinCursors",
        "o",
        "PinMode",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

.field private static p:Lkotlin/jvm/functions/Function1;

.field private static q:Lkotlin/jvm/functions/Function0;

.field private static r:Lkotlin/jvm/functions/Function0;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/tn/lib/widget/TnTextView;

.field private i:Lcom/tn/lib/widget/TnTextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/EditText;

.field private final l:[Landroid/view/View;

.field private final m:[Landroid/view/View;

.field private final n:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/kids/PinInputDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/kids/PinInputDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_pin_input:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->a:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;->SET:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->c:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->f:I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->g:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    new-array v1, v0, [Landroid/view/View;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 25
    .line 26
    new-array v1, v0, [Landroid/view/View;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 29
    .line 30
    new-array v0, v0, [Landroid/view/View;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 33
    .line 34
    return-void
.end method

.method private final A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;->VERIFY:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->h:Lcom/tn/lib/widget/TnTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_verify_title:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->d:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 21
    .line 22
    if-eqz v0, :cond_9

    .line 23
    .line 24
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_delete_verify_desc:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 31
    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->f:I

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->e:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->h:Lcom/tn/lib/widget/TnTextView;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_reset_title:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 59
    .line 60
    if-eqz v0, :cond_9

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    if-ne v0, v1, :cond_6

    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->h:Lcom/tn/lib/widget/TnTextView;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_set_title:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    :cond_5
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_set_desc:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->h:Lcom/tn/lib/widget/TnTextView;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_confirm_title:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    :cond_7
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_8
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    sget v1, Lcom/transsion/usercenter/R$string;->kids_pin_confirm_desc:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .line 113
    .line 114
    :cond_9
    :goto_0
    return-void
.end method

.method public static synthetic Z(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->t0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/usercenter/kids/PinInputDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->w0(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->v0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->s0(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/kids/PinInputDialog;->p0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->u0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f0(Lcom/transsion/usercenter/kids/PinInputDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->n0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/usercenter/kids/PinInputDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/usercenter/kids/PinInputDialog;->p:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/usercenter/kids/PinInputDialog;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j0(Lcom/transsion/usercenter/kids/PinInputDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->z0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final m0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "keyguard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/app/KeyguardManager;

    .line 17
    .line 18
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "start handleForgetPin, is device secure "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v2, "PinInputDialog"

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    sget v1, Lcom/transsion/usercenter/R$string;->kids_parent_verify_title:I

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget v2, Lcom/transsion/usercenter/R$string;->kids_parent_verify_desc:I

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v1, 0x2329

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "requireActivity(...)"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->l0()V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/transsion/usercenter/kids/ParentVerificationDialog;->g:Lcom/transsion/usercenter/kids/ParentVerificationDialog$a;

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/transsion/usercenter/kids/ParentVerificationDialog$a;->a(Ljava/lang/String;)Lcom/transsion/usercenter/kids/ParentVerificationDialog;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "ParentVerificationDialog"

    .line 98
    .line 99
    invoke-virtual {v1, v0, v2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method private final n0(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/usercenter/kids/PinInputDialog$b;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "getString(...)"

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-ne v0, v4, :cond_3

    .line 19
    .line 20
    iget v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->f:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->g:Ljava/lang/String;

    .line 25
    .line 26
    iput v4, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->f:I

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->k0()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->A0()V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    const/4 v8, 0x4

    .line 47
    const/4 v9, 0x0

    .line 48
    const-string v5, "PinInputDialog"

    .line 49
    .line 50
    const-string v6, "PIN set success."

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/transsion/usercenter/R$string;->kids_pin_saved:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput-object v2, Lcom/transsion/usercenter/kids/PinInputDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->l0()V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/transsion/usercenter/kids/PinInputDialog;->p:Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    sput-object v2, Lcom/transsion/usercenter/kids/PinInputDialog;->p:Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/transsion/baseui/util/m;->b(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 84
    .line 85
    const/4 v8, 0x4

    .line 86
    const/4 v9, 0x0

    .line 87
    const-string v5, "PinInputDialog"

    .line 88
    .line 89
    const-string v6, "PIN set not match."

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget p1, Lcom/transsion/usercenter/R$string;->kids_pin_no_match:I

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lcom/transsion/baseui/util/m;->b(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->k0()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 112
    .line 113
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_4
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->q(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 126
    .line 127
    const/4 v8, 0x4

    .line 128
    const/4 v9, 0x0

    .line 129
    const-string v5, "PinInputDialog"

    .line 130
    .line 131
    const-string v6, "PIN verify success."

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->l0()V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lcom/transsion/usercenter/kids/PinInputDialog;->q:Lkotlin/jvm/functions/Function0;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :cond_5
    sput-object v2, Lcom/transsion/usercenter/kids/PinInputDialog;->q:Lkotlin/jvm/functions/Function0;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 151
    .line 152
    const/4 v8, 0x4

    .line 153
    const/4 v9, 0x0

    .line 154
    const-string v5, "PinInputDialog"

    .line 155
    .line 156
    const-string v6, "PIN verify failed."

    .line 157
    .line 158
    const/4 v7, 0x0

    .line 159
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    sget p1, Lcom/transsion/usercenter/R$string;->kids_pin_incorrect:I

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lcom/transsion/baseui/util/m;->b(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->k0()V

    .line 175
    .line 176
    .line 177
    :goto_0
    return-void
.end method

.method private final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/usercenter/kids/PinInputDialog$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/kids/PinInputDialog$c;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Ldv/g0;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Ldv/g0;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/transsion/usercenter/kids/PinInputDialog;->z0(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final p0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->z0(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final q0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, -0x1

    .line 18
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 19
    .line 20
    const/4 v2, -0x2

    .line 21
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x50

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x14

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private final r0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireActivity(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->l0()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    .line 14
    .line 15
    new-instance v4, Ldv/f0;

    .line 16
    .line 17
    invoke-direct {v4}, Ldv/f0;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "PinInputDialog"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final s0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "pin"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->p(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final t0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final u0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PinInputDialog"

    .line 6
    .line 7
    const-string v2, "close click."

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/transsion/usercenter/kids/PinInputDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->l0()V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private static final v0(Lcom/transsion/usercenter/kids/PinInputDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w0(Lcom/transsion/usercenter/kids/PinInputDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x0()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dialog_name"

    .line 7
    .line 8
    const-string v2, "pin_set"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "dialog_show"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method private final z0(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v3, v4

    .line 33
    :goto_1
    const-string v5, ""

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    move-object v3, v5

    .line 38
    :cond_2
    iget-object v6, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 39
    .line 40
    array-length v7, v6

    .line 41
    move v8, v2

    .line 42
    move v9, v8

    .line 43
    :goto_2
    if-ge v8, v7, :cond_e

    .line 44
    .line 45
    aget-object v10, v6, v8

    .line 46
    .line 47
    add-int/lit8 v11, v9, 0x1

    .line 48
    .line 49
    instance-of v12, v10, Lcom/tn/lib/widget/TnTextView;

    .line 50
    .line 51
    if-eqz v12, :cond_3

    .line 52
    .line 53
    check-cast v10, Lcom/tn/lib/widget/TnTextView;

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object v10, v4

    .line 57
    :goto_3
    const/16 v12, 0x8

    .line 58
    .line 59
    if-ge v9, p1, :cond_7

    .line 60
    .line 61
    if-eqz v10, :cond_4

    .line 62
    .line 63
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    if-eqz v10, :cond_9

    .line 67
    .line 68
    invoke-static {v3, v9}, Lkotlin/text/StringsKt;->w1(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    if-eqz v13, :cond_5

    .line 73
    .line 74
    invoke-virtual {v13}, Ljava/lang/Character;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object v13, v4

    .line 80
    :goto_4
    if-nez v13, :cond_6

    .line 81
    .line 82
    move-object v13, v5

    .line 83
    :cond_6
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    if-eqz v10, :cond_8

    .line 88
    .line 89
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_8
    if-eqz v10, :cond_9

    .line 93
    .line 94
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_9
    :goto_5
    if-ne v9, p1, :cond_a

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    move v10, v1

    .line 102
    goto :goto_6

    .line 103
    :cond_a
    move v10, v2

    .line 104
    :goto_6
    iget-object v13, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 105
    .line 106
    aget-object v13, v13, v9

    .line 107
    .line 108
    if-eqz v13, :cond_b

    .line 109
    .line 110
    invoke-virtual {v13, v10}, Landroid/view/View;->setSelected(Z)V

    .line 111
    .line 112
    .line 113
    :cond_b
    iget-object v13, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 114
    .line 115
    aget-object v9, v13, v9

    .line 116
    .line 117
    if-eqz v10, :cond_c

    .line 118
    .line 119
    if-eqz v9, :cond_d

    .line 120
    .line 121
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_c
    if-eqz v9, :cond_d

    .line 126
    .line 127
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 131
    .line 132
    move v9, v11

    .line 133
    goto :goto_2

    .line 134
    :cond_e
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x2329

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v1, "PinInputDialog"

    .line 16
    .line 17
    const-string v2, "device secure verified success."

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->r0()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getSimpleName(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->a:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, "arg_mode"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string p1, "SET"

    .line 24
    .line 25
    :cond_1
    invoke-static {p1}, Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;->valueOf(Ljava/lang/String;)Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-string v1, "arg_kids_id"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    :cond_2
    const-string p1, ""

    .line 46
    .line 47
    :cond_3
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    const-string v1, "arg_show_forget_pin"

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    move p1, v0

    .line 63
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->d:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    const-string v1, "arg_is_reset"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :cond_5
    iput-boolean v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->e:Z

    .line 78
    .line 79
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "dialog show, mode "

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const/4 v5, 0x4

    .line 101
    const/4 v6, 0x0

    .line 102
    const-string v2, "PinInputDialog"

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->x0()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const v1, 0x106000d

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

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
    sget p2, Lcom/transsion/usercenter/R$id;->tvTitle:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/tn/lib/widget/TnTextView;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->h:Lcom/tn/lib/widget/TnTextView;

    .line 18
    .line 19
    sget p2, Lcom/transsion/usercenter/R$id;->tvDesc:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/tn/lib/widget/TnTextView;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->i:Lcom/tn/lib/widget/TnTextView;

    .line 28
    .line 29
    sget p2, Lcom/transsion/usercenter/R$id;->tvForgetPin:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->j:Landroid/view/View;

    .line 36
    .line 37
    sget p2, Lcom/transsion/usercenter/R$id;->etHiddenPin:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/widget/EditText;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 48
    .line 49
    sget v0, Lcom/transsion/usercenter/R$id;->pinBox0:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    aput-object v0, p2, v1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 59
    .line 60
    sget v0, Lcom/transsion/usercenter/R$id;->pinBox1:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, 0x1

    .line 67
    aput-object v0, p2, v2

    .line 68
    .line 69
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 70
    .line 71
    sget v0, Lcom/transsion/usercenter/R$id;->pinBox2:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v3, 0x2

    .line 78
    aput-object v0, p2, v3

    .line 79
    .line 80
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->l:[Landroid/view/View;

    .line 81
    .line 82
    sget v0, Lcom/transsion/usercenter/R$id;->pinBox3:I

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v4, 0x3

    .line 89
    aput-object v0, p2, v4

    .line 90
    .line 91
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 92
    .line 93
    sget v0, Lcom/transsion/usercenter/R$id;->pinCursor0:I

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    aput-object v0, p2, v1

    .line 100
    .line 101
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 102
    .line 103
    sget v0, Lcom/transsion/usercenter/R$id;->pinCursor1:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    aput-object v0, p2, v2

    .line 110
    .line 111
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 112
    .line 113
    sget v0, Lcom/transsion/usercenter/R$id;->pinCursor2:I

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    aput-object v0, p2, v3

    .line 120
    .line 121
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->n:[Landroid/view/View;

    .line 122
    .line 123
    sget v0, Lcom/transsion/usercenter/R$id;->pinCursor3:I

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    aput-object v0, p2, v4

    .line 130
    .line 131
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 132
    .line 133
    sget v0, Lcom/transsion/usercenter/R$id;->pinDot0:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    aput-object v0, p2, v1

    .line 140
    .line 141
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 142
    .line 143
    sget v0, Lcom/transsion/usercenter/R$id;->pinDot1:I

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    aput-object v0, p2, v2

    .line 150
    .line 151
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 152
    .line 153
    sget v0, Lcom/transsion/usercenter/R$id;->pinDot2:I

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    aput-object v0, p2, v3

    .line 160
    .line 161
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->m:[Landroid/view/View;

    .line 162
    .line 163
    sget v0, Lcom/transsion/usercenter/R$id;->pinDot3:I

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    aput-object v0, p2, v4

    .line 170
    .line 171
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->q0()V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->A0()V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog;->o0()V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->b:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 181
    .line 182
    sget-object v0, Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;->VERIFY:Lcom/transsion/usercenter/kids/PinInputDialog$PinMode;

    .line 183
    .line 184
    if-ne p2, v0, :cond_1

    .line 185
    .line 186
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->j:Landroid/view/View;

    .line 187
    .line 188
    if-eqz p2, :cond_0

    .line 189
    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    :cond_0
    iget-object p2, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->j:Landroid/view/View;

    .line 194
    .line 195
    if-eqz p2, :cond_1

    .line 196
    .line 197
    new-instance v0, Ldv/b0;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Ldv/b0;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    sget p2, Lcom/transsion/usercenter/R$id;->ivClose:I

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    check-cast p2, Landroid/widget/ImageView;

    .line 212
    .line 213
    if-eqz p2, :cond_2

    .line 214
    .line 215
    new-instance v0, Ldv/c0;

    .line 216
    .line 217
    invoke-direct {v0, p0}, Ldv/c0;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    :cond_2
    sget p2, Lcom/transsion/usercenter/R$id;->layoutPinBoxes:I

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_3

    .line 230
    .line 231
    new-instance p2, Ldv/d0;

    .line 232
    .line 233
    invoke-direct {p2, p0}, Ldv/d0;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog;->k:Landroid/widget/EditText;

    .line 240
    .line 241
    if-eqz p1, :cond_4

    .line 242
    .line 243
    new-instance p2, Ldv/e0;

    .line 244
    .line 245
    invoke-direct {p2, p0}, Ldv/e0;-><init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V

    .line 246
    .line 247
    .line 248
    const-wide/16 v0, 0xc8

    .line 249
    .line 250
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    .line 252
    .line 253
    :cond_4
    return-void
.end method
