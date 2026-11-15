.class public final Lcom/yandex/mobile/ads/impl/rr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/rr$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/mobile/ads/impl/rr;

.field public static final f:Lcom/yandex/mobile/ads/impl/rr;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    sget-object v9, Lcom/yandex/mobile/ads/impl/po;->r:Lcom/yandex/mobile/ads/impl/po;

    sget-object v10, Lcom/yandex/mobile/ads/impl/po;->s:Lcom/yandex/mobile/ads/impl/po;

    sget-object v11, Lcom/yandex/mobile/ads/impl/po;->t:Lcom/yandex/mobile/ads/impl/po;

    sget-object v12, Lcom/yandex/mobile/ads/impl/po;->l:Lcom/yandex/mobile/ads/impl/po;

    sget-object v13, Lcom/yandex/mobile/ads/impl/po;->n:Lcom/yandex/mobile/ads/impl/po;

    sget-object v14, Lcom/yandex/mobile/ads/impl/po;->m:Lcom/yandex/mobile/ads/impl/po;

    sget-object v15, Lcom/yandex/mobile/ads/impl/po;->o:Lcom/yandex/mobile/ads/impl/po;

    sget-object v16, Lcom/yandex/mobile/ads/impl/po;->q:Lcom/yandex/mobile/ads/impl/po;

    sget-object v17, Lcom/yandex/mobile/ads/impl/po;->p:Lcom/yandex/mobile/ads/impl/po;

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    filled-new-array/range {v0 .. v8}, [Lcom/yandex/mobile/ads/impl/po;

    move-result-object v8

    sget-object v18, Lcom/yandex/mobile/ads/impl/po;->j:Lcom/yandex/mobile/ads/impl/po;

    sget-object v19, Lcom/yandex/mobile/ads/impl/po;->k:Lcom/yandex/mobile/ads/impl/po;

    sget-object v20, Lcom/yandex/mobile/ads/impl/po;->h:Lcom/yandex/mobile/ads/impl/po;

    sget-object v21, Lcom/yandex/mobile/ads/impl/po;->i:Lcom/yandex/mobile/ads/impl/po;

    sget-object v22, Lcom/yandex/mobile/ads/impl/po;->f:Lcom/yandex/mobile/ads/impl/po;

    sget-object v23, Lcom/yandex/mobile/ads/impl/po;->g:Lcom/yandex/mobile/ads/impl/po;

    sget-object v24, Lcom/yandex/mobile/ads/impl/po;->e:Lcom/yandex/mobile/ads/impl/po;

    move-object v15, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v25, v15

    move-object/from16 v15, v24

    filled-new-array/range {v0 .. v15}, [Lcom/yandex/mobile/ads/impl/po;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/rr$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/rr$a;-><init>(Z)V

    const/16 v3, 0x9

    move-object/from16 v4, v25

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/yandex/mobile/ads/impl/po;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/po;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    sget-object v3, Lcom/yandex/mobile/ads/impl/q52;->d:Lcom/yandex/mobile/ads/impl/q52;

    sget-object v4, Lcom/yandex/mobile/ads/impl/q52;->e:Lcom/yandex/mobile/ads/impl/q52;

    filled-new-array {v3, v4}, [Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/q52;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rr$a;->b()Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rr$a;->a()Lcom/yandex/mobile/ads/impl/rr;

    new-instance v1, Lcom/yandex/mobile/ads/impl/rr$a;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/rr$a;-><init>(Z)V

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/yandex/mobile/ads/impl/po;

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/po;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    filled-new-array {v3, v4}, [Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/q52;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rr$a;->b()Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rr$a;->a()Lcom/yandex/mobile/ads/impl/rr;

    move-result-object v1

    sput-object v1, Lcom/yandex/mobile/ads/impl/rr;->e:Lcom/yandex/mobile/ads/impl/rr;

    new-instance v1, Lcom/yandex/mobile/ads/impl/rr$a;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/rr$a;-><init>(Z)V

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/po;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/po;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/q52;->f:Lcom/yandex/mobile/ads/impl/q52;

    sget-object v2, Lcom/yandex/mobile/ads/impl/q52;->g:Lcom/yandex/mobile/ads/impl/q52;

    filled-new-array {v3, v4, v1, v2}, [Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Lcom/yandex/mobile/ads/impl/q52;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rr$a;->b()Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rr$a;->a()Lcom/yandex/mobile/ads/impl/rr;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rr$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/rr$a;-><init>(Z)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rr$a;->a()Lcom/yandex/mobile/ads/impl/rr;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/rr;->f:Lcom/yandex/mobile/ads/impl/rr;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/rr;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/rr;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 12

    .line 2
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEnabledCipherSuites(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/yandex/mobile/ads/impl/po;->b()Lcom/yandex/mobile/ads/impl/po$a;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g92;->b([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getEnabledProtocols(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    invoke-static {}, Lkotlin/comparisons/a;->g()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/g92;->b([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/yandex/mobile/ads/impl/po;->b()Lcom/yandex/mobile/ads/impl/po$a;

    move-result-object v3

    .line 14
    sget-object v4, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    .line 15
    const-string v4, "<this>"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "TLS_FALLBACK_SCSV"

    const-string v6, "value"

    invoke-static {v5, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "comparator"

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v7, v2

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    const/4 v10, -0x1

    if-ge v9, v7, :cond_3

    .line 17
    aget-object v11, v2, v9

    .line 18
    invoke-virtual {v3, v11, v5}, Lcom/yandex/mobile/ads/impl/po$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_3
    if-eqz p2, :cond_4

    if-eq v9, v10, :cond_4

    .line 19
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 20
    aget-object p2, v2, v9

    const-string v2, "get(...)"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v0, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "copyOf(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lhi;->d0([Ljava/lang/Object;)I

    move-result v2

    aput-object p2, v0, v2

    .line 24
    :cond_4
    new-instance p2, Lcom/yandex/mobile/ads/impl/rr$a;

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/rr$a;-><init>(Lcom/yandex/mobile/ads/impl/rr;)V

    .line 25
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object p0

    .line 26
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/rr$a;->b([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rr$a;->a()Lcom/yandex/mobile/ads/impl/rr;

    move-result-object p0

    .line 28
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    array-length v2, p2

    move v3, v8

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, p2, v3

    .line 31
    sget-object v5, Lcom/yandex/mobile/ads/impl/q52;->c:Lcom/yandex/mobile/ads/impl/q52$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/q52$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v4

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 33
    :cond_5
    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_5

    :cond_6
    move-object p2, v0

    :goto_5
    if-eqz p2, :cond_7

    .line 34
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 35
    :cond_7
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    array-length v1, p2

    :goto_6
    if-ge v8, v1, :cond_8

    aget-object v2, p2, v8

    .line 38
    sget-object v3, Lcom/yandex/mobile/ads/impl/po;->b:Lcom/yandex/mobile/ads/impl/po$b;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/po$b;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/po;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 40
    :cond_8
    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 41
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final a()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    return p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 42
    const-string v0, "socket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lkotlin/comparisons/a;->g()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/yandex/mobile/ads/impl/po;->b()Lcom/yandex/mobile/ads/impl/po$a;

    move-result-object v0

    .line 49
    invoke-static {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/rr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    check-cast p1, Lcom/yandex/mobile/ads/impl/rr;

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    iget-boolean p1, p1, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr;->a:Z

    if-nez v0, :cond_0

    const-string p0, "ConnectionSpec()"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rr;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    sget-object v7, Lcom/yandex/mobile/ads/impl/po;->b:Lcom/yandex/mobile/ads/impl/po$b;

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/po$b;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/po;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string v3, "[all enabled]"

    invoke-static {v0, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/rr;->d:[Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    sget-object v7, Lcom/yandex/mobile/ads/impl/q52;->c:Lcom/yandex/mobile/ads/impl/q52$a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/q52$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :cond_4
    invoke-static {v1, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rr;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
