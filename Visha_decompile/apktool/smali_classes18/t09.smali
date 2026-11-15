.class public final synthetic Lt09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/internal/SafeCollector;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/internal/SafeCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt09;->b:Lkotlinx/coroutines/flow/internal/SafeCollector;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt09;->b:Lkotlinx/coroutines/flow/internal/SafeCollector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/d$b;

    invoke-static {p0, p1, p2}, Lv09;->a(Lkotlinx/coroutines/flow/internal/SafeCollector;ILkotlin/coroutines/d$b;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
