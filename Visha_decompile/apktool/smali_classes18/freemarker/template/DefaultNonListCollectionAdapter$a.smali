.class public Lfreemarker/template/DefaultNonListCollectionAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultNonListCollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final synthetic c:Lfreemarker/template/DefaultNonListCollectionAdapter;


# direct methods
.method public constructor <init>(Lfreemarker/template/DefaultNonListCollectionAdapter;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->c:Lfreemarker/template/DefaultNonListCollectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzfa;

    if-eqz v1, :cond_0

    check-cast v0, Lzfa;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/template/DefaultNonListCollectionAdapter$a;->c:Lfreemarker/template/DefaultNonListCollectionAdapter;

    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string v0, "The collection has no more items."

    invoke-direct {p0, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
