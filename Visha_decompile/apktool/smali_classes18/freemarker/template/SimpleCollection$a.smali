.class public Lfreemarker/template/SimpleCollection$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Z

.field public final synthetic d:Lfreemarker/template/SimpleCollection;


# direct methods
.method public constructor <init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V
    .locals 0

    iput-object p1, p0, Lfreemarker/template/SimpleCollection$a;->d:Lfreemarker/template/SimpleCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/template/SimpleCollection$a;->b:Ljava/util/Iterator;

    iput-boolean p3, p0, Lfreemarker/template/SimpleCollection$a;->c:Z

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lfreemarker/template/SimpleCollection$a;->d:Lfreemarker/template/SimpleCollection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/SimpleCollection$a;->d:Lfreemarker/template/SimpleCollection;

    invoke-static {v1}, Lfreemarker/template/SimpleCollection;->access$000(Lfreemarker/template/SimpleCollection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfreemarker/template/SimpleCollection$a;->d:Lfreemarker/template/SimpleCollection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lfreemarker/template/SimpleCollection;->access$002(Lfreemarker/template/SimpleCollection;Z)Z

    iput-boolean v2, p0, Lfreemarker/template/SimpleCollection$a;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string v1, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

    invoke-direct {p0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lfreemarker/template/SimpleCollection$a;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lfreemarker/template/SimpleCollection$a;->a()V

    :cond_0
    iget-object p0, p0, Lfreemarker/template/SimpleCollection$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lzfa;
    .locals 2

    iget-boolean v0, p0, Lfreemarker/template/SimpleCollection$a;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lfreemarker/template/SimpleCollection$a;->a()V

    :cond_0
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfreemarker/template/SimpleCollection$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzfa;

    if-eqz v1, :cond_1

    check-cast v0, Lzfa;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lfreemarker/template/SimpleCollection$a;->d:Lfreemarker/template/SimpleCollection;

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
