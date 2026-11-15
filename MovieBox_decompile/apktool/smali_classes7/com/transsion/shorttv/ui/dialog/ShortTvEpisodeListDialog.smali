.class public final Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;
.super Lcom/transsion/shorttv/base/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001D\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u001d\u0010\u0010\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0015\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u0019\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001b\u0010\'\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010$\u001a\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010?\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010F\u00a8\u0006H"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;",
        "Lcom/transsion/shorttv/base/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "Lnr/e;",
        "list",
        "",
        "P0",
        "(Ljava/util/List;)V",
        "",
        "E0",
        "()I",
        "F0",
        "C0",
        "N0",
        "O0",
        "item",
        "M0",
        "(Lnr/e;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Lqr/s;",
        "b",
        "Lqr/s;",
        "dramaDialogEpisodeListBinding",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "c",
        "Lkotlin/Lazy;",
        "D0",
        "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/shorttv/bean/Subject;",
        "d",
        "Lcom/transsion/shorttv/bean/Subject;",
        "shortTvInfo",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "e",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Lcom/transsion/shorttv/ui/adapter/r;",
        "f",
        "B0",
        "()Lcom/transsion/shorttv/ui/adapter/r;",
        "adapter",
        "",
        "g",
        "Z",
        "hasTrailer",
        "",
        "h",
        "J",
        "lastClickTime",
        "i",
        "I",
        "itemHeight",
        "Lr6/d;",
        "j",
        "Lr6/d;",
        "listener",
        "com/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a",
        "k",
        "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;",
        "onTabSelectedListener",
        "shortTvLib_release"
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
.field private b:Lqr/s;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/shorttv/bean/Subject;

.field private e:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final f:Lkotlin/Lazy;

.field private g:Z

.field private h:J

.field private final i:I

.field private final j:Lr6/d;

.field private final k:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_dialog_episode_list:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->c:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/e;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/e;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->f:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/high16 v1, 0x41c00000    # 24.0f

    .line 44
    .line 45
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sub-int/2addr v0, v1

    .line 50
    div-int/lit8 v0, v0, 0x5

    .line 51
    .line 52
    iput v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->i:I

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/f;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/dialog/f;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->j:Lr6/d;

    .line 60
    .line 61
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->k:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 67
    .line 68
    return-void
.end method

.method private static final A0()Lcom/transsion/shorttv/ui/adapter/r;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/adapter/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/adapter/r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final B0()Lcom/transsion/shorttv/ui/adapter/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/ui/adapter/r;

    .line 8
    .line 9
    return-object v0
.end method

.method private final C0()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->g:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method private final D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final E0()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_2
    :goto_0
    return v1
.end method

.method private final F0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private static final G0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-wide p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->h:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iget-wide v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->h:J

    .line 22
    .line 23
    sub-long/2addr p1, v0

    .line 24
    const-wide/16 v0, 0x3e8

    .line 25
    .line 26
    cmp-long p1, p1, v0

    .line 27
    .line 28
    if-lez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->h:J

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-ge p3, p2, :cond_1

    .line 49
    .line 50
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lnr/e;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->M0(Lnr/e;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method private static final H0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final I0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/Subject;)Lkotlin/Unit;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/ui/adapter/r;->F1(Lcom/transsion/shorttv/bean/Subject;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lqr/s;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final J0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Lnr/e;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->P0(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final K0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/adapter/r;->D1(I)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final L0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final N0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->E0()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, 0x18

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x19

    .line 14
    .line 15
    iget-object v3, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v3, ""

    .line 26
    .line 27
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Integer;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v4, v5

    .line 50
    :goto_0
    const/4 v6, 0x0

    .line 51
    move v7, v6

    .line 52
    :goto_1
    const/4 v8, 0x0

    .line 53
    if-ge v7, v2, :cond_4

    .line 54
    .line 55
    mul-int/lit8 v9, v7, 0x19

    .line 56
    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->C0()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    add-int/2addr v9, v10

    .line 62
    add-int/lit8 v10, v9, 0x18

    .line 63
    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->F0()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v9, "-"

    .line 81
    .line 82
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget-object v10, v1, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 93
    .line 94
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    sget v12, Lcom/transsion/shorttv/R$color;->short_tv_main:I

    .line 103
    .line 104
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    const/4 v12, -0x1

    .line 109
    invoke-virtual {v10, v12, v11}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 110
    .line 111
    .line 112
    iget-object v10, v1, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 113
    .line 114
    invoke-virtual {v10}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v11, v9}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iget-object v11, v9, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 123
    .line 124
    invoke-virtual {v11, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 125
    .line 126
    .line 127
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    const/16 v12, 0x1a

    .line 130
    .line 131
    if-lt v11, v12, :cond_3

    .line 132
    .line 133
    iget-object v11, v9, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 134
    .line 135
    invoke-static {v11, v8}, Lcom/transsion/shorttv/ui/dialog/d;->a(Lcom/google/android/material/tabs/TabLayout$TabView;Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {v10, v9}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    if-gt v2, v5, :cond_5

    .line 145
    .line 146
    iget-object v2, v1, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 147
    .line 148
    const/16 v7, 0x8

    .line 149
    .line 150
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v2, v1, Lqr/s;->g:Landroid/view/View;

    .line 154
    .line 155
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    iget-object v2, v1, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 160
    .line 161
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object v2, v1, Lqr/s;->g:Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object v2, v1, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    .line 171
    const-string v7, "rv"

    .line 172
    .line 173
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    if-eqz v7, :cond_6

    .line 181
    .line 182
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 183
    .line 184
    iget v9, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->i:I

    .line 185
    .line 186
    const/4 v10, 0x5

    .line 187
    mul-int/2addr v9, v10

    .line 188
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 189
    .line 190
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    iget-object v2, v1, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 194
    .line 195
    iget-object v7, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->k:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 196
    .line 197
    invoke-virtual {v2, v7}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v1, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    new-instance v7, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;

    .line 203
    .line 204
    invoke-direct {v7, v0, v1, v3}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lqr/s;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 208
    .line 209
    .line 210
    const/high16 v2, 0x41400000    # 12.0f

    .line 211
    .line 212
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    iget-object v7, v1, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    invoke-virtual {v7, v2, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v1, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-direct {v2, v7, v10, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 230
    .line 231
    .line 232
    iput-object v2, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 235
    .line 236
    .line 237
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    new-instance v14, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;

    .line 242
    .line 243
    invoke-direct {v14, v0, v3, v4, v8}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 244
    .line 245
    .line 246
    const/4 v15, 0x3

    .line 247
    const/16 v16, 0x0

    .line 248
    .line 249
    const/4 v12, 0x0

    .line 250
    const/4 v13, 0x0

    .line 251
    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    .line 256
    .line 257
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :cond_7
    :goto_3
    return-void
.end method

.method private final O0(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    iget-object v3, v0, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 29
    .line 30
    const-string v4, "tab"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lqr/s;->g:Landroid/view/View;

    .line 39
    .line 40
    const-string v4, "viewLine"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    const-string v4, "rv"

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 62
    .line 63
    iget v5, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->i:I

    .line 64
    .line 65
    const/4 v6, 0x5

    .line 66
    mul-int/2addr v5, v6

    .line 67
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    const/high16 v3, 0x41400000    # 12.0f

    .line 73
    .line 74
    invoke-static {v3}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-direct {v3, v4, v6, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 93
    .line 94
    .line 95
    iput-object v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget-object v0, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast p1, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->j:Lr6/d;

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lcom/transsion/shorttv/ui/adapter/r;->D1(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 134
    .line 135
    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 142
    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    iget-object p1, p1, Lqr/s;->c:Landroid/widget/ProgressBar;

    .line 146
    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    return-void
.end method

.method private final P0(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->E0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->N0()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->O0(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static synthetic l0()Lcom/transsion/shorttv/ui/adapter/r;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->A0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->G0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->J0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->H0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/Subject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->I0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/Subject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->L0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->K0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->B0()Lcom/transsion/shorttv/ui/adapter/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lqr/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic w0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lr6/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->j:Lr6/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->k:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->F0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final M0(Lnr/e;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d1(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onCreateDialog(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget v1, Lcom/transsion/shorttv/R$style;->ShortTvBottomDialogTheme:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x50

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x3f000000    # 0.5f

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v2, -0x1

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->onResume()V

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
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0x50

    .line 21
    .line 22
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, -0x2

    .line 29
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 30
    .line 31
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const v1, 0x106000d

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
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
    const-string v0, "hasTrailer"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->g:Z

    .line 23
    .line 24
    :goto_0
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->g:Z

    .line 25
    .line 26
    invoke-static {p1}, Lqr/s;->a(Landroid/view/View;)Lqr/s;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p1, Lqr/s;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/g;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/dialog/g;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p1, Lqr/s;->c:Landroid/widget/ProgressBar;

    .line 41
    .line 42
    const-string v0, "pbLoading"

    .line 43
    .line 44
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lcr/b;->e(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->b:Lqr/s;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->d:Lcom/transsion/shorttv/bean/Subject;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/h;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/dialog/h;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F0()Landroidx/lifecycle/LiveData;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Lcom/transsion/shorttv/ui/dialog/i;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/transsion/shorttv/ui/dialog/i;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;

    .line 107
    .line 108
    invoke-direct {v0, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Lcom/transsion/shorttv/ui/dialog/j;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/transsion/shorttv/ui/dialog/j;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;

    .line 128
    .line 129
    invoke-direct {v0, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->D0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t0()Landroidx/lifecycle/LiveData;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/k;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/dialog/k;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
