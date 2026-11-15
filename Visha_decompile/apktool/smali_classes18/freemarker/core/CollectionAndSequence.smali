.class public final Lfreemarker/core/CollectionAndSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Lnga;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/CollectionAndSequence$a;
    }
.end annotation


# instance fields
.field private collection:Lbfa;

.field private data:Ljava/util/ArrayList;

.field private sequence:Lnga;


# direct methods
.method public constructor <init>(Lbfa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lbfa;

    return-void
.end method

.method public constructor <init>(Lnga;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lnga;

    return-void
.end method

.method private initSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lbfa;

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lbga;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Lbga;->next()Lzfa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lnga;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnga;->get(I)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lfreemarker/core/CollectionAndSequence;->initSequence()V

    iget-object p0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public iterator()Lbga;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lbfa;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/CollectionAndSequence$a;

    iget-object p0, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lnga;

    invoke-direct {v0, p0}, Lfreemarker/core/CollectionAndSequence$a;-><init>(Lnga;)V

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lnga;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnga;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lfreemarker/core/CollectionAndSequence;->initSequence()V

    iget-object p0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
