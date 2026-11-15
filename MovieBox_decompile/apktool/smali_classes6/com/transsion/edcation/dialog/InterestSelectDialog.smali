.class public final Lcom/transsion/edcation/dialog/InterestSelectDialog;
.super Lcom/transsion/baseui/dialog/BaseDialogFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseDialogFragment<",
        "Lek/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\'\u001a\u00020!8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/edcation/dialog/InterestSelectDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialogFragment;",
        "Lek/a;",
        "<init>",
        "()V",
        "",
        "v0",
        "",
        "Lcom/transsion/edcation/bean/InterestBean;",
        "options",
        "s0",
        "(Ljava/util/List;)V",
        "initView",
        "c0",
        "Landroid/view/Window;",
        "window",
        "d0",
        "(Landroid/view/Window;)V",
        "",
        "Z",
        "()Z",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "u0",
        "(Landroid/content/Context;)Landroid/view/View;",
        "Lcom/transsion/edcation/c;",
        "e",
        "Lkotlin/Lazy;",
        "w0",
        "()Lcom/transsion/edcation/c;",
        "mApi",
        "",
        "",
        "f",
        "Ljava/util/List;",
        "selectIds",
        "g",
        "Ljava/lang/String;",
        "TAG",
        "Education_psRelease"
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
.field private final e:Lkotlin/Lazy;

.field private final f:Ljava/util/List;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/edcation/dialog/InterestSelectDialog$1;->INSTANCE:Lcom/transsion/edcation/dialog/InterestSelectDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/edcation/dialog/a;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/edcation/dialog/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->e:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    .line 23
    .line 24
    const-string v0, "InterestSelectDialog"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->g:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method private static final A0()Lcom/transsion/edcation/c;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/edcation/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/edcation/c;

    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic i0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->y0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->z0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->x0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0()Lcom/transsion/edcation/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->A0()Lcom/transsion/edcation/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->t0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->s0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lcom/transsion/edcation/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->w0()Lcom/transsion/edcation/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lek/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lek/a;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final s0(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->a0()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lek/a;

    .line 16
    .line 17
    iget-object v1, v1, Lek/a;->b:Lcom/tn/lib/view/FlowLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/transsion/edcation/bean/InterestBean;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->u0(Landroid/content/Context;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget v3, Lcom/transsion/edcation/R$id;->tvContent:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/edcation/bean/InterestBean;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const/high16 v3, 0x42200000    # 40.0f

    .line 60
    .line 61
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/transsion/edcation/dialog/e;

    .line 69
    .line 70
    invoke-direct {v3, v2, p0, v1}, Lcom/transsion/edcation/dialog/e;-><init>(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lek/a;

    .line 81
    .line 82
    iget-object v1, v1, Lek/a;->b:Lcom/tn/lib/view/FlowLayout;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lcom/transsion/edcation/CourseManager;->s(Z)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v1, "edu_interest_dialog"

    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private static final t0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    xor-int/lit8 p3, p3, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p1, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/transsion/edcation/bean/InterestBean;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p1, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/edcation/bean/InterestBean;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private final v0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->w0()Lcom/transsion/edcation/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lcom/transsion/edcation/c$a;->a(Lcom/transsion/edcation/c;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;->a:Lcom/transsion/edcation/dialog/InterestSelectDialog$a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 26
    .line 27
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final w0()Lcom/transsion/edcation/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/edcation/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final x0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/transsion/edcation/dialog/d;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/transsion/edcation/dialog/d;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-static {v1, v2, p1, p0, v0}, Lcom/transsion/baseui/util/d;->b(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final y0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 29
    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v1, Lcom/transsion/edcation/R$string;->course_interest_select_tips:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v3, Lcom/transsion/edcation/dialog/InterestSelectDialog$initView$1$1$1;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {v3, p0, v2}, Lcom/transsion/edcation/dialog/InterestSelectDialog$initView$1$1$1;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method private static final z0(Lcom/transsion/edcation/dialog/InterestSelectDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected Z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected d0(Landroid/view/Window;)V
    .locals 3

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->d0(Landroid/view/Window;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, -0x2

    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 15
    .line 16
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x28

    .line 21
    .line 22
    invoke-static {v2}, Llj/a;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lek/a;

    .line 6
    .line 7
    iget-object v0, v0, Lek/a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/edcation/dialog/b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/b;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lek/a;

    .line 22
    .line 23
    iget-object v0, v0, Lek/a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/edcation/dialog/c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/edcation/dialog/c;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->v0()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final u0(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v0, Lcom/transsion/edcation/R$layout;->item_select_interest:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "inflate(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
