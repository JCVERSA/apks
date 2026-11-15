.class public final Lcom/transsion/publish/ui/ClippingImageActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/ClippingImageActivity;->r0(Lcom/transsion/publish/view/clip/ClipImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/ClippingImageActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/ClippingImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 7

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->i0(Lcom/transsion/publish/ui/ClippingImageActivity;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "onNext e:"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/transsion/publish/api/PhotoEntity;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/transsion/publish/ui/ClippingImageActivity;->g0(Lcom/transsion/publish/ui/ClippingImageActivity;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setWidth(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/transsion/publish/ui/ClippingImageActivity;->e0(Lcom/transsion/publish/ui/ClippingImageActivity;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setHeight(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lcom/transsion/publish/api/PhotoEntity;->setLocalPath(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/transsion/publish/ui/ClippingImageActivity;->f0(Lcom/transsion/publish/ui/ClippingImageActivity;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/transsion/publish/api/PhotoEntity;->setImageSize(J)V

    .line 83
    .line 84
    .line 85
    const-string p1, "clip_result"

    .line 86
    .line 87
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 91
    .line 92
    const/16 v1, 0x2713

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llo/a;

    .line 8
    .line 9
    iget-object v0, v0, Llo/a;->d:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    const-string v1, "clipLoading"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->h0(Lcom/transsion/publish/ui/ClippingImageActivity;)Lio/reactivex/rxjava3/disposables/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llo/a;

    .line 13
    .line 14
    iget-object v0, v0, Llo/a;->d:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    const-string v1, "clipLoading"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->i0(Lcom/transsion/publish/ui/ClippingImageActivity;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "onError e:"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a(Ljava/io/File;)V

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
    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/publish/ui/ClippingImageActivity;->j0(Lcom/transsion/publish/ui/ClippingImageActivity;Lio/reactivex/rxjava3/disposables/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
