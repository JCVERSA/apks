.class public abstract Llv8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkv8;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Llv8$d;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/Collection;
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Llv8$d;->size()I

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
    .locals 1

    new-instance v0, Lfreemarker/template/SimpleCollection;

    invoke-virtual {p0}, Llv8$d;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Llv8$d;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public values()Lbfa;
    .locals 3

    invoke-virtual {p0}, Llv8$d;->c()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/template/SimpleCollection;

    invoke-direct {p0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
