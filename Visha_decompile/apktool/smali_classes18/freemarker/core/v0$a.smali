.class public Lfreemarker/core/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/HashMap;

.field public c:Lbfa;

.field public d:Lbfa;

.field public final synthetic e:Lfreemarker/core/v0;


# direct methods
.method public constructor <init>(Lfreemarker/core/v0;Lfreemarker/core/Environment;)V
    .locals 7

    iput-object p1, p0, Lfreemarker/core/v0$a;->e:Lfreemarker/core/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld1d;->e(Lfreemarker/core/t1;)I

    move-result v0

    sget v1, Ld1d;->d:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    :goto_0
    invoke-static {p1}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-static {p1}, Lfreemarker/core/v0;->Y(Lfreemarker/core/v0;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/t0;

    invoke-static {p1}, Lfreemarker/core/v0;->Z(Lfreemarker/core/v0;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/t0;

    invoke-virtual {v0, p2}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lfreemarker/core/Configurable;->J()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1, v3, p2}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    :cond_1
    iget-object v1, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-static {p1}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-static {p1}, Lfreemarker/core/v0;->Y(Lfreemarker/core/v0;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    invoke-static {p1}, Lfreemarker/core/v0;->Z(Lfreemarker/core/v0;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/t0;

    invoke-virtual {v3, p2}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lfreemarker/core/Configurable;->J()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v4, v5, p2}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    :cond_4
    iget-object v4, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Lfreemarker/core/CollectionAndSequence;

    new-instance p2, Lfreemarker/template/SimpleSequence;

    invoke-direct {p2, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object p1, p0, Lfreemarker/core/v0$a;->c:Lbfa;

    new-instance p1, Lfreemarker/core/CollectionAndSequence;

    new-instance p2, Lfreemarker/template/SimpleSequence;

    invoke-direct {p2, v1}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object p1, p0, Lfreemarker/core/v0$a;->d:Lbfa;

    :cond_6
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0$a;->e:Lfreemarker/core/v0;

    invoke-static {p0}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keys()Lbfa;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/v0$a;->c:Lbfa;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object v0, p0, Lfreemarker/core/v0$a;->c:Lbfa;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/v0$a;->c:Lbfa;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0$a;->e:Lfreemarker/core/v0;

    invoke-static {p0}, Lfreemarker/core/v0;->X(Lfreemarker/core/v0;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/v0$a;->e:Lfreemarker/core/v0;

    invoke-virtual {p0}, Lfreemarker/core/v0;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Lbfa;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/v0$a;->d:Lbfa;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lfreemarker/core/v0$a;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    iput-object v0, p0, Lfreemarker/core/v0$a;->d:Lbfa;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/v0$a;->d:Lbfa;

    return-object p0
.end method
