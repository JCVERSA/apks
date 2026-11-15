.class public final synthetic Ly51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$a;

    check-cast p2, Lcom/google/common/collect/ImmutableRangeMap$a;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeMap$a;->b(Lcom/google/common/collect/ImmutableRangeMap$a;)Lcom/google/common/collect/ImmutableRangeMap$a;

    move-result-object p0

    return-object p0
.end method
