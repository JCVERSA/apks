.class public final synthetic Lpw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/sync/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw6;->b:Lkotlinx/coroutines/sync/a;

    iput-object p2, p0, Lpw6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpw6;->b:Lkotlinx/coroutines/sync/a;

    iget-object p0, p0, Lpw6;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-static {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/sync/a;->t(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/d;)Lzfb;

    move-result-object p0

    return-object p0
.end method
