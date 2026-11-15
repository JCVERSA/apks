.class public Lfreemarker/template/DefaultIteratorAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultIteratorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lfreemarker/template/DefaultIteratorAdapter;


# direct methods
.method public constructor <init>(Lfreemarker/template/DefaultIteratorAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/DefaultIteratorAdapter;Ly12;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultIteratorAdapter$a;-><init>(Lfreemarker/template/DefaultIteratorAdapter;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$200(Lfreemarker/template/DefaultIteratorAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfreemarker/template/DefaultIteratorAdapter;->access$202(Lfreemarker/template/DefaultIteratorAdapter;Z)Z

    iput-boolean v1, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->b:Z

    return-void

    :cond_0
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string v0, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

    invoke-direct {p0, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/template/DefaultIteratorAdapter$a;->a()V

    :cond_0
    iget-object p0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-static {p0}, Lfreemarker/template/DefaultIteratorAdapter;->access$100(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lzfa;
    .locals 2

    iget-boolean v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/template/DefaultIteratorAdapter$a;->a()V

    :cond_0
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$100(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$100(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzfa;

    if-eqz v1, :cond_1

    check-cast v0, Lzfa;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lfreemarker/template/DefaultIteratorAdapter$a;->c:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string v0, "The collection has no more items."

    invoke-direct {p0, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
