.class public final Lfreemarker/core/v1;
.super Lifa;
.source "SourceFile"


# instance fields
.field public l:Lfreemarker/core/t0;

.field public m:Ljava/util/Map;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Z

.field public volatile transient q:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Ljava/util/List;Lifa;Ljava/util/List;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lifa;-><init>()V

    .line 7
    iput-object p1, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    .line 8
    iput-object p2, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    .line 9
    sget-object p1, Lxga;->o:Lxga;

    if-ne p3, p1, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-virtual {p0, p3}, Lifa;->j0(Lifa;)V

    .line 11
    iput-object p4, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Ljava/util/Map;Lifa;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lifa;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    .line 4
    invoke-virtual {p0, p3}, Lifa;->j0(Lifa;)V

    .line 5
    iput-object p4, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    return-void
.end method

.method private l0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/v1;->q:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/h1;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/core/v1;->q:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 8

    iget-object v0, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    sget-object v1, Lfreemarker/core/e1;->q:Lfreemarker/core/e1;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lfreemarker/core/e1;

    if-eqz v1, :cond_3

    move-object v3, v0

    check-cast v3, Lfreemarker/core/e1;

    invoke-virtual {v3}, Lfreemarker/core/e1;->s0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lfreemarker/core/v1;->p:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    new-instance v0, Lk0d;

    invoke-virtual {v3}, Lfreemarker/core/e1;->q0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v1, "<@someDirective someParam=f() />"

    const-string v2, "."

    const-string v3, "Routine "

    const-string v4, " is a function, not a directive. Functions can only be called from expressions, like in ${f()}, ${x + f()} or "

    filled-new-array {v3, v0, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v4, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    iget-object v5, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    iget-object v6, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/Environment;->t1(Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lifa;)V

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lpga;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    invoke-virtual {v3, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v1, Lr93;->b:Lr93;

    :cond_5
    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    check-cast v0, Lpga;

    invoke-virtual {p1, p0, v0, v1}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    :goto_2
    return-void

    :cond_6
    if-nez v0, :cond_7

    iget-object p0, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    invoke-static {p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :cond_7
    new-instance v1, Lfreemarker/core/NonUserDefinedDirectiveLikeException;

    iget-object p0, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonUserDefinedDirectiveLikeException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public J(Z)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    invoke-static {v0, v1}, Lfreemarker/core/f1;->a(Ljava/lang/StringBuffer;Lfreemarker/core/t0;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-object v1, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    const/16 v3, 0x20

    if-eqz v1, :cond_3

    move v1, v4

    :goto_1
    iget-object v5, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/t0;

    if-eqz v1, :cond_2

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lfreemarker/core/v1;->l0()Ljava/util/List;

    move-result-object v1

    move v5, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/t0;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0, v7}, Lfreemarker/core/f1;->a(Ljava/lang/StringBuffer;Lfreemarker/core/t0;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v1, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    if-eqz v4, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    invoke-virtual {v1}, Lifa;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_9

    iget-object v1, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    instance-of v2, v1, Lfreemarker/core/x0;

    if-nez v2, :cond_8

    instance-of v2, v1, Lfreemarker/core/m0;

    if-eqz v2, :cond_9

    check-cast v1, Lfreemarker/core/m0;

    invoke-virtual {v1}, Lfreemarker/core/m0;->Y()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object p0, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "@"

    return-object p0
.end method

.method public s()I
    .locals 3

    iget-object v0, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object p0, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public t(I)Ljw7;
    .locals 4

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->J:Ljw7;

    return-object p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_2

    sget-object p0, Ljw7;->D:Ljw7;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_5

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    sget-object p0, Ljw7;->C:Ljw7;

    goto :goto_2

    :cond_4
    sget-object p0, Ljw7;->D:Ljw7;

    :goto_2
    return-object p0

    :cond_5
    add-int/2addr v0, v2

    iget-object p0, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_7

    sget-object p0, Ljw7;->u:Ljw7;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/v1;->l:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_2

    iget-object p0, p0, Lfreemarker/core/v1;->n:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lfreemarker/core/v1;->m:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_5

    invoke-direct {p0}, Lfreemarker/core/v1;->l0()Ljava/util/List;

    move-result-object p0

    div-int/lit8 p1, v3, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_7

    iget-object p0, p0, Lfreemarker/core/v1;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
