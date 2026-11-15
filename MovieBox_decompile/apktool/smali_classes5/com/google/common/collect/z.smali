.class public final synthetic Lcom/google/common/collect/z;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/function/Supplier;


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
    iput-object p1, p0, Lcom/google/common/collect/z;->a:Ljava/util/Comparator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/d2;->b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
