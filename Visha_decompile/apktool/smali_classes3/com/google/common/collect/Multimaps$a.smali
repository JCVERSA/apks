.class public final Lcom/google/common/collect/Multimaps$a;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$a$a;
    }
.end annotation


# instance fields
.field public final e:Lat6;


# direct methods
.method public constructor <init>(Lat6;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Maps$q;-><init>()V

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lat6;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/Multimaps$a;)Lat6;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multimaps$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$a$a;-><init>(Lcom/google/common/collect/Multimaps$a;)V

    return-object v0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0}, Lat6;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0, p1}, Lat6;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0, p1}, Lat6;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0, p1}, Lat6;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0}, Lat6;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0}, Lat6;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0}, Lat6;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->f(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a;->e:Lat6;

    invoke-interface {p0}, Lat6;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
