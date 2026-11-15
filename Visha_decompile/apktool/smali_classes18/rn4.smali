.class public final synthetic Lrn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn4;->b:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lrn4;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrn4;->b:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p0, p0, Lrn4;->c:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/android/HandlerContext;->F(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method
