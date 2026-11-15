.class public final Lcom/cloud/tmc/miniapp/dialog/OooO;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.dialog.BottomActionSheetDialog$ActionItemAdapter$ViewHolder$requestDrawable$1"
    f = "BottomActionSheetDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

.field public final synthetic OooO0o0:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/dialog/OooO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0o0:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0O0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0OO:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0o0:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/dialog/OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooO;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO00o:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "<get-processor>(...)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0O0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0OO:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0Oo:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 33
    .line 34
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO;->OooO0o0:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/a;

    .line 45
    .line 46
    invoke-direct {v2, v1, p1}, Lcom/cloud/tmc/miniapp/dialog/a;-><init>(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1
.end method
