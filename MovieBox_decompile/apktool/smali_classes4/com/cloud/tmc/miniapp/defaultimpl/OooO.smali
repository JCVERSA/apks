.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OooO;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "source.java"


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:I

.field public final OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# direct methods
.method public constructor <init>(IILcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO00o:I

    .line 6
    .line 7
    iput p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0O0:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    .line 10
    .line 11
    and-int/2addr p1, p2

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimEnd()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 1
    const-string v0, "insets"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "runningAnims"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0O0:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "insets.getInsets(deferredInsetTypes)"

    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO00o:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "insets.getInsets(persistentInsetTypes)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lz0/c;->e(Lz0/c;Lz0/c;)Lz0/c;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 38
    .line 39
    invoke-static {p2, v0}, Lz0/c;->a(Lz0/c;Lz0/c;)Lz0/c;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "subtract(typesInset, oth\u2026t, Insets.NONE)\n        }"

    .line 44
    .line 45
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget p2, p2, Lz0/c;->d:I

    .line 53
    .line 54
    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardHeightChange(I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bounds"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimStart()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "super.onStart(animation, bounds)"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method
