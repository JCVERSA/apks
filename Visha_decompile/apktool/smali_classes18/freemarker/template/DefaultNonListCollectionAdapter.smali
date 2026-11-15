.class public Lfreemarker/template/DefaultNonListCollectionAdapter;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lcfa;
.implements Lc8;
.implements Llpc;
.implements Ldga;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultNonListCollectionAdapter$a;
    }
.end annotation


# instance fields
.field private final collection:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Collection;Lic7;)V
    .locals 0

    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    iput-object p1, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    return-void
.end method

.method public static adapt(Ljava/util/Collection;Lic7;)Lfreemarker/template/DefaultNonListCollectionAdapter;
    .locals 1

    new-instance v0, Lfreemarker/template/DefaultNonListCollectionAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultNonListCollectionAdapter;-><init>(Ljava/util/Collection;Lic7;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lzfa;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object v0

    check-cast v0, Lhc7;

    invoke-interface {v0, p1}, Lhc7;->b(Lzfa;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    if-eqz p1, :cond_0

    new-instance v1, Lm0d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1}, Lm0d;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const-string v1, "Null"

    :goto_0
    const-string p1, ", doesn\'t match the type of (some of) the collection items; see cause exception."

    const-string v2, "Failed to check if the collection contains the item. Probably the item\'s Java type, "

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getAPI()Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object v0

    check-cast v0, Lic7;

    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    invoke-interface {v0, p0}, Lic7;->a(Ljava/lang/Object;)Lofa;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/DefaultNonListCollectionAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Lbga;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    new-instance v0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;

    iget-object v1, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfreemarker/template/DefaultNonListCollectionAdapter$a;-><init>(Lfreemarker/template/DefaultNonListCollectionAdapter;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter;->collection:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
