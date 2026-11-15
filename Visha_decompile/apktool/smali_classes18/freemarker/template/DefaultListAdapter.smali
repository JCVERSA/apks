.class public Lfreemarker/template/DefaultListAdapter;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lnga;
.implements Lc8;
.implements Llpc;
.implements Ldga;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultListAdapter$a;,
        Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;
    }
.end annotation


# instance fields
.field protected final list:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Lgv8;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 3
    iput-object p1, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lgv8;Lf22;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lgv8;)V

    return-void
.end method

.method public static adapt(Ljava/util/List;Lgv8;)Lfreemarker/template/DefaultListAdapter;
    .locals 2

    instance-of v0, p0, Ljava/util/AbstractSequentialList;

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;-><init>(Ljava/util/List;Lgv8;Lf22;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/template/DefaultListAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lgv8;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
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

    iget-object p0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Lic7;->a(Ljava/lang/Object;)Lofa;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/DefaultListAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method public size()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object p0, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
