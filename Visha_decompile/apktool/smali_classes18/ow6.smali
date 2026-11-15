.class public final synthetic Low6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/sync/a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Low6;->b:Lkotlinx/coroutines/sync/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Low6;->b:Lkotlinx/coroutines/sync/a;

    check-cast p1, Lxa9;

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/a;->u(Lkotlinx/coroutines/sync/a;Lxa9;Ljava/lang/Object;Ljava/lang/Object;)Lu74;

    move-result-object p0

    return-object p0
.end method
