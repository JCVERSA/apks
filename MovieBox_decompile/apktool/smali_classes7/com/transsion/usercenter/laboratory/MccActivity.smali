.class public final Lcom/transsion/usercenter/laboratory/MccActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J)\u0010\u0010\u001a\u00020\u00042\u0010\u0010\r\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/MccActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "X",
        "",
        "iso",
        "c0",
        "(Ljava/lang/String;)V",
        "b0",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "",
        "position",
        "d0",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V",
        "Lcom/transsion/usercenter/laboratory/g1;",
        "newEntity",
        "e0",
        "(Lcom/transsion/usercenter/laboratory/g1;)V",
        "Lcom/transsion/ad/db/mcc/LocalMcc;",
        "localMcc",
        "f0",
        "(Lcom/transsion/ad/db/mcc/LocalMcc;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lcom/transsion/usercenter/laboratory/f1;",
        "a",
        "Lcom/transsion/usercenter/laboratory/f1;",
        "nationalInformationAdapter",
        "Lxu/g;",
        "b",
        "Lxu/g;",
        "binding",
        "c",
        "I",
        "checkedPosition",
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


# instance fields
.field private a:Lcom/transsion/usercenter/laboratory/f1;

.field private b:Lxu/g;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic O(Lcom/transsion/usercenter/laboratory/MccActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/laboratory/MccActivity;->a0(Lcom/transsion/usercenter/laboratory/MccActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/laboratory/MccActivity;->Z(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Q(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/MccActivity;->Y(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lcom/transsion/usercenter/laboratory/MccActivity;)Lxu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/usercenter/laboratory/MccActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic U(Lcom/transsion/usercenter/laboratory/MccActivity;)Lcom/transsion/usercenter/laboratory/f1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic V(Lcom/transsion/usercenter/laboratory/MccActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic W(Lcom/transsion/usercenter/laboratory/MccActivity;Lcom/transsion/ad/db/mcc/LocalMcc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/laboratory/MccActivity;->f0(Lcom/transsion/ad/db/mcc/LocalMcc;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lxu/g;->c:Landroid/widget/Button;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/usercenter/laboratory/d1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/laboratory/d1;-><init>(Lcom/transsion/usercenter/laboratory/MccActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lxu/g;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/usercenter/laboratory/e1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/laboratory/e1;-><init>(Lcom/transsion/usercenter/laboratory/MccActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private static final Y(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    const-string v0, "\u91cd\u7f6e\u81ea\u5b9a\u4e49\u6570\u636e"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/laboratory/MccActivity;->e0(Lcom/transsion/usercenter/laboratory/g1;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/MccActivity;->b0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final Z(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    if-ne p2, p3, :cond_2

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p3, p2

    .line 13
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-direct {p0, p3}, Lcom/transsion/usercenter/laboratory/MccActivity;->c0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p3, "input_method"

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 27
    .line 28
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p2, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method private static final a0(Lcom/transsion/usercenter/laboratory/MccActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p3}, Lcom/transsion/usercenter/laboratory/MccActivity;->d0(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final b0()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/usercenter/laboratory/MccActivity$loadData$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/usercenter/laboratory/MccActivity$loadData$1;-><init>(Lcom/transsion/usercenter/laboratory/MccActivity;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/transsion/usercenter/laboratory/g1;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, -0x1

    .line 48
    :goto_1
    if-ltz v2, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :cond_2
    if-ge v2, v1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p1, Lxu/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method private final d0(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    instance-of v2, v1, Lcom/transsion/usercenter/laboratory/g1;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v1, Lcom/transsion/usercenter/laboratory/g1;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v1, v0

    .line 24
    :goto_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/laboratory/g1;->c(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v2, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    move-object v2, v0

    .line 45
    :goto_2
    invoke-direct {p0, v2}, Lcom/transsion/usercenter/laboratory/MccActivity;->f0(Lcom/transsion/ad/db/mcc/LocalMcc;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v1}, Lcom/transsion/usercenter/laboratory/MccActivity;->e0(Lcom/transsion/usercenter/laboratory/g1;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 52
    .line 53
    if-ltz v1, :cond_8

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget v1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 64
    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move-object p1, v0

    .line 71
    :goto_3
    instance-of v1, p1, Lcom/transsion/usercenter/laboratory/g1;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/transsion/usercenter/laboratory/g1;

    .line 77
    .line 78
    :cond_6
    if-eqz v0, :cond_7

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/laboratory/g1;->c(Z)V

    .line 82
    .line 83
    .line 84
    :cond_7
    iget-object p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 85
    .line 86
    if-eqz p1, :cond_8

    .line 87
    .line 88
    iget v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 91
    .line 92
    .line 93
    :cond_8
    iput p2, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->c:I

    .line 94
    .line 95
    return-void
.end method

.method private final e0(Lcom/transsion/usercenter/laboratory/g1;)V
    .locals 5

    .line 1
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    :cond_0
    move-object v3, v2

    .line 26
    :cond_1
    const-string v4, "sp_code"

    .line 27
    .line 28
    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_4

    .line 50
    .line 51
    :cond_3
    move-object v3, v2

    .line 52
    :cond_4
    const-string v4, "custom_local_iso"

    .line 53
    .line 54
    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountry()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_7

    .line 76
    .line 77
    :cond_6
    move-object v3, v2

    .line 78
    :cond_7
    const-string v4, "custom_local_country"

    .line 79
    .line 80
    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    :cond_8
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_b

    .line 88
    .line 89
    if-eqz p1, :cond_a

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/usercenter/laboratory/g1;->a()Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_a

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountryCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-nez p1, :cond_9

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_9
    move-object v2, p1

    .line 105
    :cond_a
    :goto_0
    const-string p1, "custom_country_code"

    .line 106
    .line 107
    invoke-virtual {v0, p1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    :cond_b
    return-void
.end method

.method private final f0(Lcom/transsion/ad/db/mcc/LocalMcc;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountry()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v2, v0

    .line 18
    :goto_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object v3, v0

    .line 26
    :goto_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountryCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "Country : + "

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " -- Mcc : "

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " -- Iso : "

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " -- CountryCode : "

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v0, v0, Lxu/g;->b:Landroid/widget/Button;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method private final initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lxu/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/transsion/usercenter/laboratory/f1;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/transsion/usercenter/laboratory/f1;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/transsion/usercenter/laboratory/c1;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/laboratory/c1;-><init>(Lcom/transsion/usercenter/laboratory/MccActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->a:Lcom/transsion/usercenter/laboratory/f1;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/transsion/usercenter/laboratory/MccActivity$a;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/transsion/usercenter/laboratory/MccActivity$a;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lxu/g;->c(Landroid/view/LayoutInflater;)Lxu/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/MccActivity;->b:Lxu/g;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lxu/g;->b()Landroid/widget/LinearLayout;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/MccActivity;->initView()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/MccActivity;->X()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/MccActivity;->b0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
