.class public Lw55;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lbga;
.implements Lbfa;


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw55;->h:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public iterator()Lbga;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lw55;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw55;->h:Z

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "This collection is stateful and can not be iterated over the second time."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public next()Lzfa;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "No more elements in the iterator."

    invoke-direct {v0, v1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
