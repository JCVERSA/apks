.class public Lz22;
.super Lfreemarker/ext/beans/b;
.source "SourceFile"


# static fields
.field public static final h0:Lz22;

.field public static final i0:Ljava/lang/Class;

.field public static final j0:Lgc7;


# instance fields
.field public f0:Z

.field public g0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz22;

    invoke-direct {v0}, Lz22;-><init>()V

    sput-object v0, Lz22;->h0:Lz22;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.python.core.PyObject"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lxd5;

    sget-object v3, Lxd5;->g:Ljava/lang/Class;

    const-string v3, "INSTANCE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgc7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "freemarker.template.DefaultObjectWrapper"

    invoke-static {v2}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v2

    const-string v3, "Failed to init Jython support, so it was disabled."

    invoke-virtual {v2, v3, v1}, Lpq5;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    move-object v2, v0

    :goto_0
    sput-object v0, Lz22;->i0:Ljava/lang/Class;

    sput-object v2, Lz22;->j0:Lgc7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lxe1;->k0:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lz22;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method public constructor <init>(Lb32;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lz22;-><init>(Lxd0;Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 1

    .line 2
    new-instance v0, Lx22;

    invoke-direct {v0, p1}, Lx22;-><init>(Lfreemarker/template/Version;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lz22;-><init>(Lb32;Z)V

    return-void
.end method

.method public constructor <init>(Lxd0;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/b;-><init>(Lxd0;ZZ)V

    .line 4
    instance-of v0, p1, Lb32;

    if-eqz v0, :cond_0

    check-cast p1, Lb32;

    goto :goto_0

    :cond_0
    new-instance v0, Ly22;

    .line 5
    invoke-virtual {p1}, Lxd0;->d()Lfreemarker/template/Version;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ly22;-><init>(Lz22;Lfreemarker/template/Version;)V

    move-object p1, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lb32;->l()Z

    move-result v0

    iput-boolean v0, p0, Lz22;->f0:Z

    .line 7
    invoke-virtual {p1}, Lb32;->k()Z

    move-result p1

    iput-boolean p1, p0, Lz22;->g0:Z

    .line 8
    invoke-virtual {p0, p2}, Lfreemarker/ext/beans/b;->n(Z)V

    return-void
.end method

.method public static G(Lfreemarker/template/Version;)Lfreemarker/template/Version;
    .locals 2

    invoke-static {p0}, Ld1d;->a(Lfreemarker/template/Version;)V

    invoke-static {p0}, Lfreemarker/ext/beans/b;->G(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v1, Ld1d;->e:I

    if-lt p0, v1, :cond_1

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lxe1;->i0:Lfreemarker/template/Version;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public K()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lfreemarker/ext/beans/b;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simpleMapWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "useAdaptersForContainers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lz22;->f0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", forceLegacyNonListCollections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p0, p0, Lz22;->g0:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public R()Z
    .locals 0

    iget-boolean p0, p0, Lz22;->g0:Z

    return p0
.end method

.method public S()Z
    .locals 0

    iget-boolean p0, p0, Lz22;->f0:Z

    return p0
.end method

.method public T(Ljava/lang/Object;)Lzfa;
    .locals 2

    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz22;->U(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lz22;->j0:Lgc7;

    if-eqz v0, :cond_1

    sget-object v1, Lz22;->i0:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public U(Ljava/lang/Object;)Lzfa;
    .locals 0

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lfreemarker/ext/dom/d;->q(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/d;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lzfa;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lfreemarker/ext/beans/b;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lzfa;

    if-eqz v0, :cond_1

    check-cast p1, Lzfa;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance p0, Lfreemarker/template/SimpleScalar;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    new-instance p0, Lfreemarker/template/SimpleNumber;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p0

    :cond_3
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_4

    new-instance p0, Lam9;

    check-cast p1, Ljava/sql/Date;

    invoke-direct {p0, p1}, Lam9;-><init>(Ljava/sql/Date;)V

    return-object p0

    :cond_4
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_5

    new-instance p0, Lam9;

    check-cast p1, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lam9;-><init>(Ljava/sql/Time;)V

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_6

    new-instance p0, Lam9;

    check-cast p1, Ljava/sql/Timestamp;

    invoke-direct {p0, p1}, Lam9;-><init>(Ljava/sql/Timestamp;)V

    return-object p0

    :cond_6
    new-instance v0, Lam9;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->r()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lz22;->f0:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p0}, Lfreemarker/template/DefaultArrayAdapter;->adapt(Ljava/lang/Object;Lhc7;)Lfreemarker/template/DefaultArrayAdapter;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0, p1}, Lz22;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_9
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lz22;->f0:Z

    if-eqz v0, :cond_c

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/List;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultListAdapter;->adapt(Ljava/util/List;Lgv8;)Lfreemarker/template/DefaultListAdapter;

    move-result-object p0

    return-object p0

    :cond_a
    iget-boolean v0, p0, Lz22;->g0:Z

    if-eqz v0, :cond_b

    new-instance v0, Lfreemarker/template/SimpleSequence;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    goto :goto_0

    :cond_b
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultNonListCollectionAdapter;->adapt(Ljava/util/Collection;Lic7;)Lfreemarker/template/DefaultNonListCollectionAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_c
    new-instance v0, Lfreemarker/template/SimpleSequence;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v0

    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lz22;->f0:Z

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultMapAdapter;->adapt(Ljava/util/Map;Lic7;)Lfreemarker/template/DefaultMapAdapter;

    move-result-object p0

    goto :goto_1

    :cond_e
    new-instance v0, Lfreemarker/template/SimpleHash;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleHash;-><init>(Ljava/util/Map;Lgc7;)V

    move-object p0, v0

    :goto_1
    return-object p0

    :cond_f
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_2

    :cond_10
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_2
    return-object p0

    :cond_11
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lz22;->f0:Z

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/Iterator;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultIteratorAdapter;->adapt(Ljava/util/Iterator;Lgc7;)Lfreemarker/template/DefaultIteratorAdapter;

    move-result-object p0

    goto :goto_3

    :cond_12
    new-instance v0, Lfreemarker/template/SimpleCollection;

    check-cast p1, Ljava/util/Iterator;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;Lgc7;)V

    move-object p0, v0

    :goto_3
    return-object p0

    :cond_13
    invoke-virtual {p0, p1}, Lz22;->T(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method
