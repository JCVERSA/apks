.class public final Lcom/transsion/publish/ui/SelectVideoActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectVideoActivity;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->k0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->l0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/k0;->addData(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->m0(Lcom/transsion/publish/ui/SelectVideoActivity;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->i0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lio/reactivex/rxjava3/disposables/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->m0(Lcom/transsion/publish/ui/SelectVideoActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->l0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->l0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/k0;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->k0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onError e:"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "SelectVideoManager"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->o0(Lcom/transsion/publish/ui/SelectVideoActivity;Lio/reactivex/rxjava3/disposables/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
