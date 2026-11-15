.class public final Lcom/transsion/member/dialog/ClaimMemberDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\r\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/member/dialog/ClaimMemberDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "t0",
        "(Landroid/view/View;)V",
        "x0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroy",
        "onStart",
        "r0",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "c",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "s0",
        "()Lcom/transsion/memberapi/MemberTaskItem;",
        "y0",
        "(Lcom/transsion/memberapi/MemberTaskItem;)V",
        "info",
        "",
        "d",
        "I",
        "getMBottomMargin",
        "()I",
        "z0",
        "(I)V",
        "mBottomMargin",
        "",
        "e",
        "J",
        "showTime",
        "Lkotlinx/coroutines/t1;",
        "f",
        "Lkotlinx/coroutines/t1;",
        "dismissJob",
        "g",
        "infoJob",
        "Member_psRelease"
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
.field private c:Lcom/transsion/memberapi/MemberTaskItem;

.field private d:I

.field private final e:J

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/member/R$layout;->dialog_member_claim_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x42480000    # 50.0f

    .line 7
    .line 8
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->d:I

    .line 13
    .line 14
    const-wide/16 v0, 0xdac

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->e:J

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->v0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->u0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->w0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/member/dialog/ClaimMemberDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final t0(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lgm/g;->a(Landroid/view/View;)Lgm/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "bind(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lgm/g;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/member/dialog/b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/member/dialog/b;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lgm/g;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v1, Lcom/transsion/member/dialog/c;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/transsion/member/dialog/c;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v1, p1, Lgm/g;->g:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, ""

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v2, v3

    .line 46
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lgm/g;->f:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getSubTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    move-object v3, v2

    .line 58
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p1, Lgm/g;->b:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getButtonName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sget v2, Lcom/transsion/member/R$string;->member_claim_now:I

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "getString(...)"

    .line 77
    .line 78
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getIcon()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget v1, Lcom/transsion/member/R$mipmap;->ic_premium_mask:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 107
    .line 108
    sget v1, Lcom/transsion/member/R$mipmap;->ic_premium_mask:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 115
    .line 116
    iget-object p1, p1, Lgm/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method private static final u0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v0(Lcom/transsion/member/dialog/ClaimMemberDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v0, Lim/b;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lim/b;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/transsion/member/dialog/d;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/transsion/member/dialog/d;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1, v0, p0, v1}, Lim/b$a;->b(Lim/b;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final w0(Lcom/transsion/member/dialog/ClaimMemberDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->r0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final x0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 25
    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    const/4 v2, -0x2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x30

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getAttributes(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    .line 48
    or-int/lit8 v2, v2, 0x20

    .line 49
    .line 50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    :cond_1
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
    sget v0, Lcom/tn/lib/widget/R$style;->center_DialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v2, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v2, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    return-void
.end method

.method public onStart()V
    .locals 13

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$1;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-direct {v3, p0, v6}, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$1;-><init>(Lcom/transsion/member/dialog/ClaimMemberDialog;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    const-class v1, Lim/b;

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lim/b;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Lim/b;->a()Lkotlinx/coroutines/flow/h1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move-object v0, v6

    .line 50
    :goto_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    new-instance v10, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$2;

    .line 59
    .line 60
    invoke-direct {v10, v0, p0, v6}, Lcom/transsion/member/dialog/ClaimMemberDialog$onStart$2;-><init>(Lkotlinx/coroutines/flow/h1;Lcom/transsion/member/dialog/ClaimMemberDialog;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    const/4 v11, 0x2

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    .line 71
    .line 72
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
    invoke-direct {p0}, Lcom/transsion/member/dialog/ClaimMemberDialog;->x0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/member/dialog/ClaimMemberDialog;->t0(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final r0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "ClaimMemberDialog lifecycle:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->f:Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->g:Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public final s0()Lcom/transsion/memberapi/MemberTaskItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y0(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->c:Lcom/transsion/memberapi/MemberTaskItem;

    .line 2
    .line 3
    return-void
.end method

.method public final z0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/member/dialog/ClaimMemberDialog;->d:I

    .line 2
    .line 3
    return-void
.end method
