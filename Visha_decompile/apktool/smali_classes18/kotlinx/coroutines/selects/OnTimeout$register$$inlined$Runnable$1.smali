.class public final Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $select$inlined:Lxa9;

.field final synthetic this$0:Lnf7;


# direct methods
.method public constructor <init>(Lxa9;Lnf7;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->$select$inlined:Lxa9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->$select$inlined:Lxa9;

    const/4 v0, 0x0

    sget-object v1, Lzfb;->a:Lzfb;

    invoke-interface {p0, v0, v1}, Lxa9;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
