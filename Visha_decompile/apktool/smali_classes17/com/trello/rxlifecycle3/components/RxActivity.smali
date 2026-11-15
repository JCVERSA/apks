.class public abstract Lcom/trello/rxlifecycle3/components/RxActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lxk5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lxk5;"
    }
.end annotation


# instance fields
.field public final b:Lzd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lzd0;->o0()Lzd0;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lyk5;
    .locals 0

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    invoke-static {p0}, Lax8;->a(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object p0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->START:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/trello/rxlifecycle3/components/RxActivity;->b:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
