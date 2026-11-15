.class public Lqc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lzb1;Lic1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lqc1;->c(Ljava/lang/String;Lzb1;Lic1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lzb1;Lic1;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lzw3;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzb1;->h()Lnc1;

    move-result-object p0

    invoke-interface {p0, p2}, Lnc1;->a(Lic1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lzw3;->a()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lzw3;->a()V

    throw p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb1;

    invoke-virtual {v0}, Lzb1;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lpc1;

    invoke-direct {v2, v1, v0}, Lpc1;-><init>(Ljava/lang/String;Lzb1;)V

    invoke-virtual {v0, v2}, Lzb1;->t(Lnc1;)Lzb1;

    move-result-object v0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method
