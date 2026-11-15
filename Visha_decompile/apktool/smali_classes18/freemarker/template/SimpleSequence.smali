.class public Lfreemarker/template/SimpleSequence;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lnga;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/SimpleSequence$SynchronizedSequence;
    }
.end annotation


# instance fields
.field protected final list:Ljava/util/List;

.field private unwrappedList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lgc7;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnpc;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILgc7;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lbfa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lnpc;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Lbfa;->iterator()Lbga;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lbga;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1}, Lbga;->next()Lzfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 10
    iput-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lgc7;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lnpc;-><init>(Lgc7;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lgc7;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    return-void
.end method

.method public add(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Lzfa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzfa;

    if-eqz v1, :cond_0

    check-cast v0, Lzfa;

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    iget-object p0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synchronizedWrapper()Lfreemarker/template/SimpleSequence;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/SimpleSequence$SynchronizedSequence;-><init>(Lfreemarker/template/SimpleSequence;Lqm9;)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lfreemarker/ext/beans/b;->s()Lfreemarker/ext/beans/b;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lzfa;

    if-eqz v4, :cond_0

    check-cast v3, Lzfa;

    invoke-virtual {v0, v3}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error instantiating an object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
