.class public abstract Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Lxk5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lxk5;"
    }
.end annotation


# instance fields
.field public final l:Lzd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    invoke-static {}, Lzd0;->o0()Lzd0;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lyk5;
    .locals 0

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    invoke-static {p0}, Lax8;->b(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object p1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object p1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;->START:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatDialogFragment;->l:Lzd0;

    sget-object p1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
