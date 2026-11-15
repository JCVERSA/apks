.class public final Lcom/transsion/transfer/impl/TransferSentFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/TransferSentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lxt/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0016\u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/TransferSentFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lxt/i;",
        "<init>",
        "()V",
        "",
        "r0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "k0",
        "(Landroid/view/LayoutInflater;)Lxt/i;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "p0",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/transsion/transfer/impl/entity/FileData;",
        "a",
        "Lkotlin/Lazy;",
        "h0",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "data",
        "Lcom/transsion/transfer/impl/adapter/b;",
        "b",
        "i0",
        "()Lcom/transsion/transfer/impl/adapter/b;",
        "mAdapter",
        "Lcom/transsion/transfer/impl/k;",
        "c",
        "j0",
        "()Lcom/transsion/transfer/impl/k;",
        "serverViewModel",
        "d",
        "Transfer_psRelease"
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
.field public static final d:Lcom/transsion/transfer/impl/TransferSentFragment$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/impl/t;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/impl/t;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/transfer/impl/u;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/u;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/transfer/impl/v;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/v;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->c:Lkotlin/Lazy;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->o0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->m0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->q0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->n0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/TransferSentFragment;->g0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->l0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final h0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i0()Lcom/transsion/transfer/impl/adapter/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/adapter/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j0()Lcom/transsion/transfer/impl/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/k;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/k;->t()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p1, p0}, Lcu/b;->q(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final m0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Leu/b;->a:Leu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/b;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 25
    .line 26
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/impl/adapter/b;->I1(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method

.method private static final n0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/adapter/b;->H1()V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final o0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/adapter/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getViewLifecycleOwner(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/transfer/impl/adapter/b;-><init>(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final q0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 13
    .line 14
    .line 15
    const-class p0, Lcom/transsion/transfer/impl/k;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/transsion/transfer/impl/k;

    .line 22
    .line 23
    return-object p0
.end method

.method private final r0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lxt/i;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lxt/i;->c:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lxt/i;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lxt/i;->c:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->k0(Landroid/view/LayoutInflater;)Lxt/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lxt/i;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lxt/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->u()Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Lcom/transsion/transfer/impl/w;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/w;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    .line 57
    .line 58
    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->v()Landroidx/lifecycle/LiveData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lcom/transsion/transfer/impl/x;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/x;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    .line 78
    .line 79
    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->o()Landroidx/lifecycle/LiveData;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Lcom/transsion/transfer/impl/y;

    .line 94
    .line 95
    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/y;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    .line 99
    .line 100
    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public k0(Landroid/view/LayoutInflater;)Lxt/i;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lxt/i;->c(Landroid/view/LayoutInflater;)Lxt/i;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public lazyLoadData()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Leu/b;->a:Leu/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Leu/b;->d()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final p0()V
    .locals 7

    .line 1
    sget-object v0, Leu/b;->a:Leu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/b;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Iterable;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lkotlin/collections/MapsKt;->e(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x10

    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v6, v3

    .line 62
    check-cast v6, Lcom/transsion/transfer/impl/entity/FileData;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Lkotlin/collections/MapsKt;->e(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v3, v1

    .line 106
    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-static {v5, v2}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v0, Ljava/util/Collection;

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/util/Collection;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 157
    .line 158
    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    .line 160
    .line 161
    .line 162
    return-void
.end method
