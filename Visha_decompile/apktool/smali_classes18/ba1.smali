.class public final synthetic Lba1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:[Lkotlin/coroutines/d;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>([Lkotlin/coroutines/d;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba1;->b:[Lkotlin/coroutines/d;

    iput-object p2, p0, Lba1;->c:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lba1;->b:[Lkotlin/coroutines/d;

    iget-object p0, p0, Lba1;->c:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lzfb;

    check-cast p2, Lkotlin/coroutines/d$b;

    invoke-static {v0, p0, p1, p2}, Lkotlin/coroutines/CombinedContext;->b([Lkotlin/coroutines/d;Lkotlin/jvm/internal/Ref$IntRef;Lzfb;Lkotlin/coroutines/d$b;)Lzfb;

    move-result-object p0

    return-object p0
.end method
