.class public final Lcom/transsion/publish/ui/SelectImageActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectImageActivity;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectImageActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

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
    .locals 3

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
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->p0(Lcom/transsion/publish/ui/SelectImageActivity;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    check-cast v1, Ljava/util/Collection;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/transsion/publish/ui/SelectImageActivity;->k0(Lcom/transsion/publish/ui/SelectImageActivity;Ljava/util/List;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->r0(Lcom/transsion/publish/ui/SelectImageActivity;)Lcom/transsion/publish/adapter/e0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/e0;->addData(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/transsion/publish/ui/SelectImageActivity;->o0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/transsion/publish/ui/SelectImageActivity;->s0(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->m0(Lcom/transsion/publish/ui/SelectImageActivity;)Lio/reactivex/rxjava3/disposables/c;

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
    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity$b;->a(Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$b;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->u0(Lcom/transsion/publish/ui/SelectImageActivity;Lio/reactivex/rxjava3/disposables/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
