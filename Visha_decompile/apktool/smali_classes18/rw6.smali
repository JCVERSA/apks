.class public final synthetic Lrw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/sync/a;

.field public final synthetic c:Lkotlinx/coroutines/sync/a$a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw6;->b:Lkotlinx/coroutines/sync/a;

    iput-object p2, p0, Lrw6;->c:Lkotlinx/coroutines/sync/a$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrw6;->b:Lkotlinx/coroutines/sync/a;

    iget-object p0, p0, Lrw6;->c:Lkotlinx/coroutines/sync/a$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/sync/a$a;->b(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method
