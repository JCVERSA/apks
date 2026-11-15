.class public final synthetic Lcom/google/common/collect/e3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/e3;->a:Ljava/util/Comparator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e3;->a:Ljava/util/Comparator;

    .line 2
    .line 3
    check-cast p1, Lcom/google/common/collect/l3;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->f(Ljava/util/Comparator;Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
