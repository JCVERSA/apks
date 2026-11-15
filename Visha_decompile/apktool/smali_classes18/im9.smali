.class public Lim9;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lpfa;
.implements Lyfa;
.implements Lc8;
.implements Llpc;
.implements Ldga;


# static fields
.field public static final c:Lfq6;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhm9;

    invoke-direct {v0}, Lhm9;-><init>()V

    sput-object v0, Lim9;->c:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    iput-object p1, p0, Lim9;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/b;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 4

    iget-object v0, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    iget-object v1, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public getAPI()Lzfa;
    .locals 1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object v0

    check-cast v0, Lgv8;

    iget-object p0, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Lic7;->a(Ljava/lang/Object;)Lofa;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lim9;->b:Ljava/util/Map;

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lim9;->b:Ljava/util/Map;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keys()Lbfa;
    .locals 3

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Lbfa;
    .locals 3

    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    new-instance v1, Lfreemarker/template/SimpleSequence;

    iget-object v2, p0, Lim9;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lnga;)V

    return-object v0
.end method
