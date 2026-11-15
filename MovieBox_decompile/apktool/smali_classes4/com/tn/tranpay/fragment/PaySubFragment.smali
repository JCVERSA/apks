.class public final Lcom/tn/tranpay/fragment/PaySubFragment;
.super Landroidx/fragment/app/Fragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/fragment/PaySubFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0001\u0016\u0018\u0000 n2\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J1\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0003J-\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008)\u0010*J!\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020(2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008,\u0010-R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00104\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\"\u0010>\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R(\u0010G\u001a\u0008\u0012\u0004\u0012\u00020@0?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010M\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00103\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\"\u0010Q\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u00103\u001a\u0004\u0008O\u0010J\"\u0004\u0008P\u0010LR$\u0010U\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u00103\u001a\u0004\u0008S\u0010J\"\u0004\u0008T\u0010LR$\u0010Y\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u00103\u001a\u0004\u0008W\u0010J\"\u0004\u0008X\u0010LR\u0016\u0010]\u001a\u00020Z8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u001b\u0010c\u001a\u00020^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010bR*\u0010k\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u0016\u0010m\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u00109\u00a8\u0006o"
    }
    d2 = {
        "Lcom/tn/tranpay/fragment/PaySubFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "",
        "t0",
        "",
        "inputType",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "inputView",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "errorView",
        "value",
        "j0",
        "(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)V",
        "s0",
        "n0",
        "q0",
        "k0",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "clearButton",
        "regex",
        "com/tn/tranpay/fragment/PaySubFragment$b",
        "g0",
        "(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;",
        "text",
        "",
        "x0",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "info",
        "l0",
        "(Lcom/tn/tranpay/bean/LoadConfigContent;)V",
        "w0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/tn/tranpay/BillingParams;",
        "a",
        "Lcom/tn/tranpay/BillingParams;",
        "paymentParams",
        "b",
        "Ljava/lang/String;",
        "mobileCode",
        "c",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "configBean",
        "d",
        "Z",
        "getNeedCnic",
        "()Z",
        "setNeedCnic",
        "(Z)V",
        "needCnic",
        "",
        "Lcom/tn/tranpay/bean/InputInfoBean;",
        "e",
        "Ljava/util/List;",
        "getInputs",
        "()Ljava/util/List;",
        "setInputs",
        "(Ljava/util/List;)V",
        "inputs",
        "f",
        "getPayMethod",
        "()Ljava/lang/String;",
        "setPayMethod",
        "(Ljava/lang/String;)V",
        "payMethod",
        "g",
        "h0",
        "setPayMethodCode",
        "payMethodCode",
        "h",
        "getPhone",
        "setPhone",
        "phone",
        "i",
        "getCnic",
        "setCnic",
        "cnic",
        "Lrg/b;",
        "j",
        "Lrg/b;",
        "viewBinding",
        "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "i0",
        "()Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "viewModel",
        "Lkotlin/Function0;",
        "l",
        "Lkotlin/jvm/functions/Function0;",
        "getOnFragmentPopped",
        "()Lkotlin/jvm/functions/Function0;",
        "m0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onFragmentPopped",
        "m",
        "isPayable",
        "n",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final n:Lcom/tn/tranpay/fragment/PaySubFragment$a;


# instance fields
.field private a:Lcom/tn/tranpay/BillingParams;

.field private b:Ljava/lang/String;

.field private c:Lcom/tn/tranpay/bean/LoadConfigContent;

.field private d:Z

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lrg/b;

.field private final k:Lkotlin/Lazy;

.field private l:Lkotlin/jvm/functions/Function0;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/tranpay/fragment/PaySubFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/tranpay/fragment/PaySubFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/tranpay/fragment/PaySubFragment;->n:Lcom/tn/tranpay/fragment/PaySubFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lcom/tn/lib/tranpay/R$layout;->tran_fragment_sub_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->e:Ljava/util/List;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->g:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/tn/tranpay/fragment/PaySubFragment$viewModel$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PaySubFragment$viewModel$2;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    .line 21
    .line 22
    .line 23
    const-class v1, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lcom/tn/tranpay/fragment/PaySubFragment$special$$inlined$viewModels$default$1;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/tn/tranpay/fragment/PaySubFragment$special$$inlined$viewModels$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lcom/tn/tranpay/fragment/PaySubFragment$special$$inlined$viewModels$default$2;

    .line 35
    .line 36
    invoke-direct {v3, v0, p0}, Lcom/tn/tranpay/fragment/PaySubFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->k:Lkotlin/Lazy;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->m:Z

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic V(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->u0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->v0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->r0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Lrg/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->p0(Lrg/b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lrg/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->o0(Lrg/b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lrg/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->i0()Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c0(Lcom/tn/tranpay/fragment/PaySubFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d0(Lcom/tn/tranpay/fragment/PaySubFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e0(Lcom/tn/tranpay/fragment/PaySubFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f0(Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final g0(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/fragment/PaySubFragment$b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0, p3, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$b;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final i0()Lcom/tn/tranpay/viewmodel/PaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->e:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tn/tranpay/bean/InputInfoBean;->getType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/tn/tranpay/bean/InputInfoBean;->getReg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1, p4}, Lcom/tn/tranpay/fragment/PaySubFragment;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    if-nez p4, :cond_2

    .line 49
    .line 50
    const-string p4, ""

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v1}, Lcom/tn/tranpay/bean/InputInfoBean;->getRealHint()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/tn/tranpay/bean/InputInfoBean;->getRealTips()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void
.end method

.method private final k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->g1()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final l0(Lcom/tn/tranpay/bean/LoadConfigContent;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "viewBinding"

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v2, v3

    .line 16
    :cond_0
    iget-object v4, v2, Lrg/b;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getCpName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v4, v2, Lrg/b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    sget v6, Lcom/tn/lib/tranpay/R$string;->pay_amount:I

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getSymbol()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    new-array v8, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v7, v8, v0

    .line 42
    .line 43
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v5, v3

    .line 49
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v2, Lrg/b;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    sget v6, Lcom/tn/lib/tranpay/R$string;->pay_desc:I

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getSymbol()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getCpName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/4 v9, 0x2

    .line 71
    new-array v9, v9, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v7, v9, v0

    .line 74
    .line 75
    aput-object v8, v9, v1

    .line 76
    .line 77
    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object v5, v3

    .line 83
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v2, Lrg/b;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    sget v3, Lcom/tn/lib/tranpay/R$string;->pay_order:I

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getOrderId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p1, v1, v0

    .line 103
    .line 104
    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method private final n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewBinding"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v1, v0, Lrg/b;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    .line 13
    new-instance v2, Lcom/tn/tranpay/fragment/f;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/tn/tranpay/fragment/f;-><init>(Lrg/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lrg/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    new-instance v2, Lcom/tn/tranpay/fragment/g;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/tn/tranpay/fragment/g;-><init>(Lrg/b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final o0(Lrg/b;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "$this_apply"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lrg/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final p0(Lrg/b;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "$this_apply"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lrg/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewBinding"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v0, v0, Lrg/b;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    new-instance v1, Lcom/tn/tranpay/fragment/e;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/tn/tranpay/fragment/e;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final r0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v3, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {v3, p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final s0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "viewBinding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v2, v0, Lrg/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 13
    .line 14
    iget-object v3, v0, Lrg/b;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    const-string v4, "clearPhoneButton"

    .line 17
    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, v0, Lrg/b;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const-string v5, "ivInputPhoneError"

    .line 24
    .line 25
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->e:Ljava/util/List;

    .line 29
    .line 30
    check-cast v5, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    move-object v7, v6

    .line 47
    check-cast v7, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/tn/tranpay/bean/InputInfoBean;->getType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v8, "Phone"

    .line 54
    .line 55
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v6, v1

    .line 63
    :goto_0
    check-cast v6, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/tn/tranpay/bean/InputInfoBean;->getReg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v5, v1

    .line 73
    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/tn/tranpay/fragment/PaySubFragment;->g0(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lrg/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 81
    .line 82
    iget-object v3, v0, Lrg/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    const-string v4, "clearCnicButton"

    .line 85
    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lrg/b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    const-string v4, "ivInputCnicError"

    .line 92
    .line 93
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->e:Ljava/util/List;

    .line 97
    .line 98
    check-cast v4, Ljava/lang/Iterable;

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v6, v5

    .line 115
    check-cast v6, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/tn/tranpay/bean/InputInfoBean;->getType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v7, "CNIC"

    .line 122
    .line 123
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v5, v1

    .line 131
    :goto_2
    check-cast v5, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 132
    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getReg()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :cond_6
    invoke-direct {p0, v3, v0, v1}, Lcom/tn/tranpay/fragment/PaySubFragment;->g0(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method private final t0()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const-string v2, "viewBinding"

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v2, v3

    .line 14
    :cond_0
    iget-object v4, v2, Lrg/b;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    new-instance v5, Lcom/tn/tranpay/fragment/c;

    .line 17
    .line 18
    invoke-direct {v5, p0}, Lcom/tn/tranpay/fragment/c;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v2, Lrg/b;->g:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    new-instance v5, Lcom/tn/tranpay/fragment/d;

    .line 27
    .line 28
    invoke-direct {v5, p0}, Lcom/tn/tranpay/fragment/d;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v2, Lrg/b;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    iget-boolean v5, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->d:Z

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    move v5, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v5, 0x8

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v2, Lrg/b;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    sget v6, Lcom/tn/lib/tranpay/R$string;->pay_phone_code:I

    .line 56
    .line 57
    iget-object v7, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->b:Ljava/lang/String;

    .line 58
    .line 59
    new-array v8, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v7, v8, v1

    .line 62
    .line 63
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v5, v3

    .line 69
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v2, Lrg/b;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    sget v3, Lcom/tn/lib/tranpay/R$string;->pay_method:I

    .line 81
    .line 82
    iget-object v6, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->f:Ljava/lang/String;

    .line 83
    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v6, v0, v1

    .line 87
    .line 88
    invoke-virtual {v5, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v2, Lrg/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 96
    .line 97
    const-string v1, "inputPhone"

    .line 98
    .line 99
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v2, Lrg/b;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    const-string v3, "ivInputPhoneError"

    .line 105
    .line 106
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->h:Ljava/lang/String;

    .line 110
    .line 111
    const-string v4, "Phone"

    .line 112
    .line 113
    invoke-direct {p0, v4, v0, v1, v3}, Lcom/tn/tranpay/fragment/PaySubFragment;->j0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v2, Lrg/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 117
    .line 118
    const-string v1, "inputCnic"

    .line 119
    .line 120
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v2, Lrg/b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    const-string v2, "ivInputCnicError"

    .line 126
    .line 127
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->i:Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "CNIC"

    .line 133
    .line 134
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/tn/tranpay/fragment/PaySubFragment;->j0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->w0()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private static final u0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of p1, p0, Lcom/tn/tranpay/fragment/PayFragment;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/tn/tranpay/fragment/PayFragment;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/PayFragment;->o0()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private static final v0(Lcom/tn/tranpay/fragment/PaySubFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->k0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final w0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "viewBinding"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v0, v0, Lrg/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_2
    iget-object v0, v0, Lrg/b;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    move v0, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move v0, v3

    .line 48
    :goto_1
    iget-boolean v5, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->d:Z

    .line 49
    .line 50
    if-eqz v5, :cond_7

    .line 51
    .line 52
    iget-object v5, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 53
    .line 54
    if-nez v5, :cond_4

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v5, v1

    .line 60
    :cond_4
    iget-object v5, v5, Lrg/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 61
    .line 62
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_8

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    iget-object v5, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 76
    .line 77
    if-nez v5, :cond_6

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v5, v1

    .line 83
    :cond_6
    iget-object v5, v5, Lrg/b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    :cond_7
    move v5, v4

    .line 92
    goto :goto_3

    .line 93
    :cond_8
    :goto_2
    move v5, v3

    .line 94
    :goto_3
    iget-object v6, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 95
    .line 96
    if-nez v6, :cond_9

    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_9
    move-object v1, v6

    .line 103
    :goto_4
    iget-object v1, v1, Lrg/b;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    if-eqz v5, :cond_a

    .line 108
    .line 109
    move v3, v4

    .line 110
    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private final x0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v1, Lkotlin/text/Regex;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final h0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->l:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/tn/lib/tranpay/R$layout;->tran_fragment_sub_layout:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
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
    invoke-static {p1}, Lrg/b;->a(Landroid/view/View;)Lrg/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "bind(view)"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->j:Lrg/b;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string v0, "paymentParams"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/tn/tranpay/BillingParams;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object p1, p2

    .line 37
    :goto_0
    if-nez p1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->a:Lcom/tn/tranpay/BillingParams;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-string v0, "configBean"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p1, p2

    .line 58
    :goto_1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->c:Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const-string v0, "needCnic"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    :goto_2
    iput-boolean p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->d:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    const-string v0, "inputs"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move-object p1, p2

    .line 90
    :goto_3
    if-nez p1, :cond_5

    .line 91
    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :cond_5
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->e:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    const-string v0, "payMethod"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    move-object p1, p2

    .line 112
    :goto_4
    const-string v0, ""

    .line 113
    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    move-object p1, v0

    .line 117
    :cond_7
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->f:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    const-string v1, "payMethodCode"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_5

    .line 132
    :cond_8
    move-object p1, p2

    .line 133
    :goto_5
    if-nez p1, :cond_9

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    move-object v0, p1

    .line 137
    :goto_6
    iput-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->g:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_a

    .line 144
    .line 145
    const-string v0, "phone"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    goto :goto_7

    .line 152
    :cond_a
    move-object p1, p2

    .line 153
    :goto_7
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->h:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    const-string p2, "cnic"

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_b
    iput-object p2, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->i:Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->i0()Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->b:Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->t0()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->s0()V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->n0()V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PaySubFragment;->q0()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_c

    .line 196
    .line 197
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment;->c:Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 198
    .line 199
    invoke-direct {p0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->l0(Lcom/tn/tranpay/bean/LoadConfigContent;)V

    .line 200
    .line 201
    .line 202
    :cond_c
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 203
    .line 204
    const-string p2, "sub_tab_page"

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/report/h;->l(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method
