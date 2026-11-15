.class final Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/area/WindowAreaControllerImpl;->presentContentOnWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "androidx.window.area.WindowAreaControllerImpl$presentContentOnWindowArea$2"
    f = "WindowAreaControllerImpl.kt"
    l = {
        0xfc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $executor:Ljava/util/concurrent/Executor;

.field final synthetic $windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

.field label:I

.field final synthetic this$0:Landroidx/window/area/WindowAreaControllerImpl;


# direct methods
.method public constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/area/WindowAreaControllerImpl;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/window/area/WindowAreaPresentationSessionCallback;",
            "Lwh1<",
            "-",
            "Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object v2, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;-><init>(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-virtual {p1}, Landroidx/window/area/WindowAreaControllerImpl;->getWindowAreaInfos()Lnz3;

    move-result-object p1

    iput v2, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->label:I

    invoke-static {p1, p0}, Lsz3;->o(Lnz3;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$presentContentOnWindowArea$2;->$windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    invoke-static {p1, v0, v1, p0}, Landroidx/window/area/WindowAreaControllerImpl;->access$startRearDisplayPresentationMode(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
