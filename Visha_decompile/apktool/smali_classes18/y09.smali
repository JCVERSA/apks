.class public final Ly09;
.super Lkotlinx/coroutines/flow/AbstractFlow;
.source "SourceFile"


# instance fields
.field public final b:Ls74;


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/flow/AbstractFlow;-><init>()V

    iput-object p1, p0, Ly09;->b:Ls74;

    return-void
.end method


# virtual methods
.method public e(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly09;->b:Ls74;

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
