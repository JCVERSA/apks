.class public final Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u000f2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "t0",
        "(Landroid/view/View;)V",
        "initAdapter",
        "r0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lxu/b0;",
        "c",
        "Lxu/b0;",
        "viewBinding",
        "Lcom/transsion/usercenter/setting/adapter/b;",
        "d",
        "Lcom/transsion/usercenter/setting/adapter/b;",
        "adapter",
        "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;",
        "e",
        "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;",
        "viewModel",
        "f",
        "a",
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


# static fields
.field public static final f:Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$a;


# instance fields
.field private c:Lxu/b0;

.field private d:Lcom/transsion/usercenter/setting/adapter/b;

.field private e:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->f:Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_locale_language:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final initAdapter()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/adapter/b;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/setting/adapter/b;-><init>(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkv/c;

    .line 12
    .line 13
    invoke-direct {v1, v0, p0}, Lkv/c;-><init>(Lcom/transsion/usercenter/setting/adapter/b;Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->d:Lcom/transsion/usercenter/setting/adapter/b;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->c:Lxu/b0;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lxu/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->d:Lcom/transsion/usercenter/setting/adapter/b;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->u0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->s0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/setting/adapter/b;Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->q0(Lcom/transsion/usercenter/setting/adapter/b;Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/setting/adapter/b;Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    instance-of p3, p2, Ljv/a;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    sget-object p3, Lcom/transsion/baselib/locale/LocaleChangedHelper;->a:Lcom/transsion/baselib/locale/LocaleChangedHelper;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p2, Ljv/a;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljv/a;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p3, p0, p2}, Lcom/transsion/baselib/locale/LocaleChangedHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final r0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroidx/lifecycle/v0;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 18
    .line 19
    .line 20
    const-class v2, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;->e()Landroidx/lifecycle/b0;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lkv/a;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lkv/a;-><init>(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$b;

    .line 38
    .line 39
    invoke-direct {v4, v3}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;->d()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->e:Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->d:Lcom/transsion/usercenter/setting/adapter/b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final t0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lxu/b0;->a(Landroid/view/View;)Lxu/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->c:Lxu/b0;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lxu/b0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lkv/b;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lkv/b;-><init>(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final u0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

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
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

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
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget v1, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x50

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 33
    .line 34
    .line 35
    const/high16 v1, 0x3f000000    # 0.5f

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :cond_1
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
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->t0(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->initAdapter()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->r0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
