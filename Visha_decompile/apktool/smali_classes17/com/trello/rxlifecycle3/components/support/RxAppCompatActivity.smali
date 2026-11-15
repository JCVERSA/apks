.class public abstract Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lxk5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lxk5;"
    }
.end annotation


# instance fields
.field private final lifecycleSubject:Lzd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzd0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    invoke-static {}, Lzd0;->o0()Lzd0;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lyk5;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lyk5;"
        }
    .end annotation

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    invoke-static {p0}, Lax8;->a(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lyk5;
    .locals 0
    .param p1    # Lcom/trello/rxlifecycle3/android/ActivityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle3/android/ActivityEvent;",
            ")",
            "Lyk5;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    invoke-static {p0, p1}, Lzw8;->c(Lmc7;Ljava/lang/Object;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lyk5;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindUntilEvent(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public final lifecycle()Lmc7;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/trello/rxlifecycle3/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    invoke-virtual {p0}, Lmc7;->F()Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->START:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
