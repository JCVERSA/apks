.class public final Lfreemarker/core/a$b;
.super Lfreemarker/core/a$a;
.source "SourceFile"

# interfaces
.implements Lpfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public d:Lfreemarker/core/CollectionAndSequence;

.field public e:Lfreemarker/core/CollectionAndSequence;

.field public f:I


# direct methods
.method public constructor <init>(Lpfa;Lpfa;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfreemarker/core/a$a;-><init>(Lofa;Lofa;)V

    return-void
.end method

.method public static b(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lpfa;)V
    .locals 2

    invoke-interface {p2}, Lpfa;->keys()Lbfa;

    move-result-object p2

    invoke-interface {p2}, Lbfa;->iterator()Lbga;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Lbga;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lbga;->next()Lzfa;

    move-result-object v0

    check-cast v0, Lmga;

    invoke-interface {v0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lfreemarker/core/a$b;->d:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lfreemarker/template/SimpleSequence;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    iget-object v2, p0, Lfreemarker/core/a$a;->b:Lofa;

    check-cast v2, Lpfa;

    invoke-static {v0, v1, v2}, Lfreemarker/core/a$b;->b(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lpfa;)V

    iget-object v2, p0, Lfreemarker/core/a$a;->c:Lofa;

    check-cast v2, Lpfa;

    invoke-static {v0, v1, v2}, Lfreemarker/core/a$b;->b(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lpfa;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lfreemarker/core/a$b;->f:I

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object v0, p0, Lfreemarker/core/a$b;->d:Lfreemarker/core/CollectionAndSequence;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lfreemarker/core/a$b;->e:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_1

    new-instance v0, Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/core/a$b;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    iget-object v1, p0, Lfreemarker/core/a$b;->d:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v1}, Lfreemarker/core/CollectionAndSequence;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lfreemarker/core/a$b;->d:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v3, v2}, Lfreemarker/core/CollectionAndSequence;->get(I)Lzfa;

    move-result-object v3

    check-cast v3, Lmga;

    invoke-interface {v3}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfreemarker/core/a$a;->get(Ljava/lang/String;)Lzfa;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v1, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object v1, p0, Lfreemarker/core/a$b;->e:Lfreemarker/core/CollectionAndSequence;

    :cond_1
    return-void
.end method

.method public keys()Lbfa;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/a$b;->c()V

    iget-object p0, p0, Lfreemarker/core/a$b;->d:Lfreemarker/core/CollectionAndSequence;

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/a$b;->c()V

    iget p0, p0, Lfreemarker/core/a$b;->f:I

    return p0
.end method

.method public values()Lbfa;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/a$b;->e()V

    iget-object p0, p0, Lfreemarker/core/a$b;->e:Lfreemarker/core/CollectionAndSequence;

    return-object p0
.end method
