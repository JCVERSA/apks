.class public final Lgf/o0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lgf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/o0$a;
    }
.end annotation


# static fields
.field public static final s:Lgf/o0$a;


# instance fields
.field public a:Landroidx/fragment/app/FragmentActivity;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:I

.field public d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/Set;

.field public g:Z

.field public h:Z

.field public i:Ljava/util/Set;

.field public j:Ljava/util/Set;

.field public k:Ljava/util/Set;

.field public l:Ljava/util/Set;

.field public m:Ljava/util/Set;

.field public n:Ljava/util/Set;

.field public o:Ljava/util/Set;

.field public p:Ldf/c;

.field public q:Ldf/b;

.field public r:Ldf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/o0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgf/o0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgf/o0;->s:Lgf/o0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 1
    const-string v0, "normalPermissions"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "specialPermissions"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lgf/o0;->c:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lgf/o0;->i:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lgf/o0;->j:Ljava/util/Set;

    .line 30
    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lgf/o0;->k:Ljava/util/Set;

    .line 37
    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lgf/o0;->l:Ljava/util/Set;

    .line 44
    .line 45
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lgf/o0;->m:Ljava/util/Set;

    .line 51
    .line 52
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lgf/o0;->n:Ljava/util/Set;

    .line 58
    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lgf/o0;->o:Ljava/util/Set;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lgf/o0;->D(Landroidx/fragment/app/FragmentActivity;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    if-nez p1, :cond_1

    .line 72
    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lgf/o0;->D(Landroidx/fragment/app/FragmentActivity;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iput-object p2, p0, Lgf/o0;->b:Landroidx/fragment/app/Fragment;

    .line 83
    .line 84
    iput-object p3, p0, Lgf/o0;->e:Ljava/util/Set;

    .line 85
    .line 86
    iput-object p4, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 87
    .line 88
    return-void
.end method

.method private final C()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lgf/o0;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static final P(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    new-instance v6, Lgf/m0;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lgf/m0;-><init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final Q(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p5, p0, Lgf/o0;->r:Ldf/a;

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->POSITIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    .line 12
    .line 13
    invoke-interface {p5, p1, v0, v1}, Ldf/a;->a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-interface {p3, p4}, Lgf/e;->a(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p4}, Lgf/o0;->l(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private static final R(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance v0, Lgf/n0;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lgf/n0;-><init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final S(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgf/o0;->r:Ldf/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object p4, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->NEGATIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p4}, Ldf/a;->a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Lgf/e;->finish()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final T(Lgf/o0;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lff/c;->a:Lff/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lff/c;->c(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lgf/o0;->d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 12
    .line 13
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgf/o0;->q()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgf/r0;

    .line 5
    .line 6
    invoke-direct {v0}, Lgf/r0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lgf/o0;->F()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lgf/p0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lgf/p0;-><init>(Lgf/o0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lgf/o0;->J()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lgf/v0;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lgf/v0;-><init>(Lgf/o0;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lgf/o0;->K()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Lgf/w0;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lgf/w0;-><init>(Lgf/o0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lgf/o0;->L()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    new-instance v1, Lgf/x0;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lgf/x0;-><init>(Lgf/o0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lgf/o0;->M()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    new-instance v1, Lgf/y0;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lgf/y0;-><init>(Lgf/o0;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0}, Lgf/o0;->H()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    new-instance v1, Lgf/s0;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lgf/s0;-><init>(Lgf/o0;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p0}, Lgf/o0;->I()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    new-instance v1, Lgf/t0;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lgf/t0;-><init>(Lgf/o0;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {p0}, Lgf/o0;->G()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    new-instance v1, Lgf/q0;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lgf/q0;-><init>(Lgf/o0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    new-instance v1, Lgf/u0;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Lgf/u0;-><init>(Lgf/o0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lgf/r0;->a(Lgf/d;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    invoke-virtual {v0}, Lgf/r0;->b()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static synthetic e(Lgf/o0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lgf/o0;->T(Lgf/o0;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lgf/o0;->R(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lgf/o0;->S(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lgf/o0;->P(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lgf/o0;->Q(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->b:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getSupportFragmentManager(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object v0
.end method

.method private final o()Lcom/permissionx/guolindev/request/InvisibleFragment;
    .locals 3

    .line 1
    invoke-direct {p0}, Lgf/o0;->n()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "InvisibleFragment"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lgf/o0;->n()Landroidx/fragment/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/w;->l()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method private final q()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lgf/o0;->c:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x7

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-direct {p0}, Lgf/o0;->n()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "InvisibleFragment"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lgf/o0;->n()Landroidx/fragment/app/FragmentManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/w;->l()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method


# virtual methods
.method public A(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->o1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public B(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->r1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final D(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lgf/o0;->a:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    return-void
.end method

.method public final E(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->s1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final J()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final K()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.PICTURE_IN_PICTURE"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/o0;->f:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final N(Lgf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .locals 7

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dialog"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lgf/o0;->h:Z

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->n0()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lgf/e;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-object p3, p0, Lgf/o0;->d:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 29
    .line 30
    new-instance v0, Lgf/j0;

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p3

    .line 35
    move v4, p2

    .line 36
    move-object v5, p1

    .line 37
    invoke-direct/range {v1 .. v6}, Lgf/j0;-><init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->p0(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lgf/k0;

    .line 44
    .line 45
    invoke-direct {v0, p0, p3, p2, p1}, Lgf/k0;-><init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->o0(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lgf/l0;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lgf/l0;-><init>(Lgf/o0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->j0(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lff/c;->a:Lff/c;

    .line 60
    .line 61
    const-string p2, "permission_rationale_dialog"

    .line 62
    .line 63
    invoke-virtual {p1, p3, p2}, Lff/c;->b(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p3, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final O(Lgf/e;ZLjava/util/List;Lff/a;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permissions"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dialogInfo"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3, p4}, Lcom/permissionx/guolindev/dialog/DefaultRationaleDialog;->r0(Ljava/util/List;Lff/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lgf/o0;->N(Lgf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public bridge synthetic a(Ldf/b;)Lgf/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgf/o0;->r(Ldf/b;)Lgf/o0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b()Lgf/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgf/o0;->k()Lgf/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Ldf/a;)Lgf/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lgf/o0;->r:Ldf/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ldf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgf/o0;->p:Ldf/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lgf/o0;->U()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgf/o0;->s()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lgf/o0;->C()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public k()Lgf/o0;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lgf/o0;->g:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final l(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgf/o0;->o:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lgf/o0;->o:Ljava/util/Set;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->x0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final m()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/o0;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 10
    .line 11
    return v0
.end method

.method public r(Ldf/b;)Lgf/o0;
    .locals 0

    .line 1
    iput-object p1, p0, Lgf/o0;->q:Ldf/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->R0(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public u(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->W0(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public v(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->Z0(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public w(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->c1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public x(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->h1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final y(Ljava/util/Set;Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chainTask"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1, p2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->i1(Lgf/o0;Ljava/util/Set;Lgf/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public z(Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "chainTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgf/o0;->o()Lcom/permissionx/guolindev/request/InvisibleFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->l1(Lgf/o0;Lgf/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
