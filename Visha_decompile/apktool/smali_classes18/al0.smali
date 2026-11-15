.class public final synthetic Lal0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final synthetic d:Lxa9;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lxa9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lal0;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object p3, p0, Lal0;->d:Lxa9;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lal0;->b:Ljava/lang/Object;

    iget-object v1, p0, Lal0;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v2, p0, Lal0;->d:Lxa9;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    move-object v5, p3

    check-cast v5, Lkotlin/coroutines/d;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->d(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lxa9;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/d;)Lzfb;

    move-result-object p0

    return-object p0
.end method
