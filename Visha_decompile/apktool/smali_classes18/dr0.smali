.class public final synthetic Ldr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr0;->b:Le74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldr0;->b:Le74;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Le74;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/d;)Lzfb;

    move-result-object p0

    return-object p0
.end method
