.class public final synthetic Luy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy4;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luy4;->a:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/j;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->j(Ljava/util/Comparator;Lcom/google/common/collect/j;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p0

    return-object p0
.end method
