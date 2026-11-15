.class public final Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;",
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
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;",
        "c",
        "Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;",
        "getCallback",
        "()Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;",
        "r0",
        "(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;)V",
        "callback",
        "a",
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


# instance fields
.field private c:Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->dialog_post_confirm:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->q0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->p0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final p0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->c:Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final q0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
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
    sget v0, Lcom/transsion/postdetail/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/material/bottomsheet/c;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget v2, Lcom/transsion/baseui/R$style;->bottom_dialog_animations:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x50

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    const/high16 v2, 0x3f000000    # 0.5f

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object v3, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Lcom/transsion/baseui/util/a;->b(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    .line 65
    const/4 p1, -0x2

    .line 66
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v1, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v0
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
    invoke-static {p1}, Lwn/g;->a(Landroid/view/View;)Lwn/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "bind(...)"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p1, Lwn/g;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    new-instance v0, Lcom/transsion/postdetail/ui/dialog/h;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/dialog/h;-><init>(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lwn/g;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    new-instance p2, Lcom/transsion/postdetail/ui/dialog/i;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/dialog/i;-><init>(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final r0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->c:Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;

    .line 2
    .line 3
    return-void
.end method
