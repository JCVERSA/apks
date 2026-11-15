.class public Lcom/google/common/collect/ConcurrentHashMultiset$d;
.super Lcom/google/common/collect/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$d;->c:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b$b;-><init>(Lcom/google/common/collect/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$d;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/j;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->c()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$d;->c:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b$b;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/b$b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
