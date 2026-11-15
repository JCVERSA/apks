.class public final synthetic La61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/j;

    invoke-static {p1}, Lcom/google/common/collect/f;->h(Lcom/google/common/collect/j;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method
