.class public Lcom/snaptube/base/BaseFragment;
.super Lcom/trello/rxlifecycle/components/RxFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/base/BaseFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001:\u0001IB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u000f\u0010\u0019\u001a\u00020\u0018H\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ#\u0010\u001f\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u001d*\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0018H\u0004\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0003J\u000f\u0010\'\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0003J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020(H\u0016\u00a2\u0006\u0004\u00081\u0010-J\u000f\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020(H\u0016\u00a2\u0006\u0004\u00085\u0010-J\u000f\u00106\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00086\u0010\u0003R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001a\u0010D\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u0012\u0004\u0008C\u0010\u0003R\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010G\u00a8\u0006J"
    }
    d2 = {
        "Lcom/snaptube/base/BaseFragment;",
        "Lcom/trello/rxlifecycle/components/RxFragment;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lo/mg8;",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "",
        "E2",
        "()I",
        "H2",
        "(Landroid/view/View;)V",
        "T",
        "id",
        "C2",
        "(I)Landroid/view/View;",
        "onStart",
        "onResume",
        "onPause",
        "onStop",
        "onDestroyView",
        "onDestroy",
        "onDetach",
        "",
        "isVisibleToUser",
        "setUserVisibleHint",
        "(Z)V",
        "D2",
        "()Z",
        "Lcom/snaptube/premium/viewmodel/UiDarkConfig;",
        "F2",
        "()Lcom/snaptube/premium/viewmodel/UiDarkConfig;",
        "I2",
        "Lo/x24;",
        "K2",
        "()Lo/x24;",
        "J2",
        "B2",
        "Lo/uf8;",
        "c",
        "Lo/t14;",
        "G2",
        "()Lo/uf8;",
        "uiDarkModeViewModel",
        "d",
        "Landroid/view/View;",
        "mRootView",
        "Lo/z24;",
        "e",
        "Lo/z24;",
        "getMReportDelegate$annotations",
        "mReportDelegate",
        "Lo/r35;",
        "f",
        "Lo/r35;",
        "navFragmentAdapter",
        "a",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/snaptube/base/BaseFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,175:1\n84#2,6:176\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/snaptube/base/BaseFragment\n*L\n27#1:176,6\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lo/t14;

.field public d:Landroid/view/View;

.field public final e:Lo/z24;

.field public f:Lo/r35;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/trello/rxlifecycle/components/RxFragment;-><init>()V

    const-class v0, Lo/uf8;

    invoke-static {v0}, Lo/ih6;->b(Ljava/lang/Class;)Lo/px3;

    move-result-object v0

    new-instance v1, Lcom/snaptube/base/BaseFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/snaptube/base/BaseFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/snaptube/base/BaseFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/snaptube/base/BaseFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lo/px3;Lo/bx2;Lo/bx2;)Lo/t14;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/base/BaseFragment;->c:Lo/t14;

    new-instance v0, Lo/z24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/z24;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    return-void
.end method

.method private final G2()Lo/uf8;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->c:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/uf8;

    return-object v0
.end method


# virtual methods
.method public final B2()V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/base/BaseFragment;->J2()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->f:Lo/r35;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/r35;->a(Lcom/snaptube/base/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public final C2(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public D2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F2()Lcom/snaptube/premium/viewmodel/UiDarkConfig;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->e:Lcom/snaptube/premium/viewmodel/UiDarkConfig$a;

    invoke-virtual {v0}, Lcom/snaptube/premium/viewmodel/UiDarkConfig$a;->a()Lcom/snaptube/premium/viewmodel/UiDarkConfig;

    move-result-object v0

    return-object v0
.end method

.method public H2(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public I2()Z
    .locals 1

    instance-of v0, p0, Lo/za3;

    return v0
.end method

.method public J2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final K2()Lo/x24;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/x24;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {p1}, Lo/z24;->q()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/components/RxFragment;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {p1}, Lo/z24;->r()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/components/RxFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/base/BaseFragment$a;

    invoke-interface {p1, p0}, Lcom/snaptube/base/BaseFragment$a;->s0(Lcom/snaptube/base/BaseFragment;)V

    iget-object p1, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {p1}, Lo/z24;->s()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/base/BaseFragment;->E2()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {p2}, Lo/z24;->t()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onDestroy()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->u()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/base/BaseFragment;->d:Landroid/view/View;

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onDetach()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->w()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onPause()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->x()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onResume()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->y()V

    invoke-virtual {p0}, Lcom/snaptube/base/BaseFragment;->I2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snaptube/base/BaseFragment;->G2()Lo/uf8;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/base/BaseFragment;->F2()Lcom/snaptube/premium/viewmodel/UiDarkConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/uf8;->t(Lcom/snaptube/premium/viewmodel/UiDarkConfig;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onStart()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->z()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle/components/RxFragment;->onStop()V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0}, Lo/z24;->A()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/trello/rxlifecycle/components/RxFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/snaptube/base/BaseFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snaptube/base/BaseFragment;->B2()V

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseFragment;->H2(Landroid/view/View;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/components/RxFragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/snaptube/base/BaseFragment;->e:Lo/z24;

    invoke-virtual {v0, p1}, Lo/z24;->B(Z)V

    return-void
.end method
