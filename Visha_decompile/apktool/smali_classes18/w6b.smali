.class public final Lw6b;
.super Lifa;
.source "SourceFile"


# static fields
.field public static synthetic o:Ljava/lang/Class;


# instance fields
.field public l:Lfreemarker/core/t0;

.field public m:Ljava/util/Map;

.field public volatile transient n:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;Ljava/util/Map;Lifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lw6b;->l:Lfreemarker/core/t0;

    iput-object p2, p0, Lw6b;->m:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lifa;->j0(Lifa;)V

    return-void
.end method

.method public static synthetic l0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 7

    iget-object v0, p0, Lw6b;->l:Lfreemarker/core/t0;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->l1(Lfreemarker/core/t0;)Lpga;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lw6b;->m:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lw6b;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

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

    goto :goto_0

    :cond_0
    sget-object v1, Lr93;->b:Lr93;

    :cond_1
    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object v0, p0, Lw6b;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lw6b;->l:Lfreemarker/core/t0;

    sget-object p0, Lw6b;->o:Ljava/lang/Class;

    if-nez p0, :cond_3

    const-string p0, "freemarker.template.TemplateTransformModel"

    invoke-static {p0}, Lw6b;->l0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lw6b;->o:Ljava/lang/Class;

    :cond_3
    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "transform"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public J(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lw6b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lw6b;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lw6b;->m:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lw6b;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/t0;

    invoke-static {v0, v3}, Lfreemarker/core/f1;->a(Ljava/lang/StringBuffer;Lfreemarker/core/t0;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object p1

    invoke-virtual {p1}, Lifa;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p1, "</"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lw6b;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lw6b;->n:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lw6b;->m:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/h1;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lw6b;->n:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#transform"

    return-object p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lw6b;->m:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->J:Ljw7;

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lw6b;->m:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    sget-object p0, Ljw7;->C:Ljw7;

    goto :goto_0

    :cond_1
    sget-object p0, Ljw7;->D:Ljw7;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lw6b;->l:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    iget-object v0, p0, Lw6b;->m:Ljava/util/Map;

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lw6b;->m0()Ljava/util/List;

    move-result-object p0

    div-int/lit8 v0, p1, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
