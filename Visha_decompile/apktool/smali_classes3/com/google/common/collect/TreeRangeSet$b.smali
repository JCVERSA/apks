.class public final Lcom/google/common/collect/TreeRangeSet$b;
.super Lu44;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/Collection;

.field public final synthetic c:Lcom/google/common/collect/TreeRangeSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$b;->c:Lcom/google/common/collect/TreeRangeSet;

    invoke-direct {p0}, Lu44;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$b;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$b;->delegate()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Ljava/util/Collection;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeSet$b;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
