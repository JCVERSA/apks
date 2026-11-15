.class public Lfreemarker/core/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lbga;

.field public b:Z

.field public c:Lzfa;

.field public d:I

.field public e:Z

.field public f:Ljava/util/Collection;

.field public g:Ljava/lang/String;

.field public final h:Lzfa;

.field public final synthetic i:Lfreemarker/core/z0;


# direct methods
.method public constructor <init>(Lfreemarker/core/z0;Lzfa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/z0$a;->i:Lfreemarker/core/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    iput-object p2, p0, Lfreemarker/core/z0$a;->h:Lzfa;

    iput-object p3, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_has_next"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lfreemarker/core/z0$a;->f:Ljava/util/Collection;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "_has_next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lfreemarker/core/z0$a;->b:Z

    if-eqz p0, :cond_1

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_1
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0

    :cond_2
    const-string v0, "_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lfreemarker/template/SimpleNumber;

    iget p0, p0, Lfreemarker/core/z0$a;->d:I

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    :cond_3
    iget-object p0, p0, Lfreemarker/core/z0$a;->c:Lzfa;

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lfreemarker/core/Environment;)Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/z0$a;->i:Lfreemarker/core/z0;

    invoke-virtual {v0}, Lifa;->S()Lifa;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/z0$a;->d(Lfreemarker/core/Environment;Lifa;)Z

    move-result p0

    return p0
.end method

.method public final d(Lfreemarker/core/Environment;Lifa;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/z0$a;->e(Lfreemarker/core/Environment;Lifa;)Z

    move-result p0

    return p0
.end method

.method public final e(Lfreemarker/core/Environment;Lifa;)Z
    .locals 6

    iget-object v0, p0, Lfreemarker/core/z0$a;->h:Lzfa;

    instance-of v1, v0, Lbfa;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    check-cast v0, Lbfa;

    iget-object v1, p0, Lfreemarker/core/z0$a;->a:Lbga;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/core/z0$a;->b:Z

    if-eqz v0, :cond_4

    iget-object v3, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lfreemarker/core/z0$a;->b:Z

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/core/z0$a;->c:Lzfa;

    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/z0$a;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_1
    iget v3, p0, Lfreemarker/core/z0$a;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lfreemarker/core/z0$a;->d:I
    :try_end_0
    .catch Lfreemarker/core/BreakInstruction$Break; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/z0$a;->a:Lbga;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lfreemarker/core/z0$a;->a:Lbga;

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_4
    :goto_1
    move v2, v0

    goto :goto_5

    :cond_5
    instance-of v1, v0, Lnga;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Lnga;

    invoke-interface {v0}, Lnga;->size()I

    move-result v1

    if-eqz v1, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    if-eqz v4, :cond_a

    iget-object v5, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    if-eqz v5, :cond_9

    :try_start_1
    iput v3, p0, Lfreemarker/core/z0$a;->d:I

    :goto_3
    iget v5, p0, Lfreemarker/core/z0$a;->d:I

    if-ge v5, v1, :cond_a

    invoke-interface {v0, v5}, Lnga;->get(I)Lzfa;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/z0$a;->c:Lzfa;

    iget v5, p0, Lfreemarker/core/z0$a;->d:I

    add-int/2addr v5, v2

    if-le v1, v5, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lfreemarker/core/z0$a;->b:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :cond_8
    iget v5, p0, Lfreemarker/core/z0$a;->d:I

    add-int/2addr v5, v2

    iput v5, p0, Lfreemarker/core/z0$a;->d:I
    :try_end_1
    .catch Lfreemarker/core/BreakInstruction$Break; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->a2(Lifa;)V

    :catch_1
    :cond_a
    move v2, v4

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lfreemarker/core/z0$a;->h:Lzfa;

    iput-object v0, p0, Lfreemarker/core/z0$a;->c:Lzfa;

    iput-boolean v3, p0, Lfreemarker/core/z0$a;->b:Z

    :cond_c
    if-eqz p2, :cond_d

    :try_start_2
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->a2(Lifa;)V
    :try_end_2
    .catch Lfreemarker/core/BreakInstruction$Break; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_d
    :goto_5
    return v2

    :cond_e
    new-instance p2, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v0, p0, Lfreemarker/core/z0$a;->i:Lfreemarker/core/z0;

    invoke-static {v0}, Lfreemarker/core/z0;->m0(Lfreemarker/core/z0;)Lfreemarker/core/t0;

    move-result-object v0

    iget-object p0, p0, Lfreemarker/core/z0$a;->h:Lzfa;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lfreemarker/core/z0$a;->d:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/z0$a;->b:Z

    return p0
.end method

.method public i(Lfreemarker/core/Environment;Lifa;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/core/z0$a;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfreemarker/core/z0$a;->e:Z

    iput-object p3, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/z0$a;->d(Lfreemarker/core/Environment;Lifa;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    const-string p3, "The #items directive was already entered earlier for this listing."

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lfreemarker/core/z0$a;->g:Ljava/lang/String;

    throw p1
.end method
