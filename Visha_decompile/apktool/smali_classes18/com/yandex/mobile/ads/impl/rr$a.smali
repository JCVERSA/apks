.class public final Lcom/yandex/mobile/ads/impl/rr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/rr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rr;)V
    .locals 1

    .line 1
    const-string v0, "connectionSpec"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    .line 4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rr;->a(Lcom/yandex/mobile/ads/impl/rr;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->b:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rr;->b(Lcom/yandex/mobile/ads/impl/rr;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->c:[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rr;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/rr$a;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Lcom/yandex/mobile/ads/impl/po;)Lcom/yandex/mobile/ads/impl/rr$a;
    .locals 5

    .line 1
    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 5
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/po;->c()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rr$a;->a([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs a([Lcom/yandex/mobile/ads/impl/q52;)Lcom/yandex/mobile/ads/impl/rr$a;
    .locals 5

    .line 17
    const-string v0, "tlsVersions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 21
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/q52;->a()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, [Ljava/lang/String;

    .line 25
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rr$a;->b([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs a([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;
    .locals 1

    .line 11
    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    if-eqz v0, :cond_2

    .line 13
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rr$a;->b:[Ljava/lang/String;

    return-object p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one cipher suite is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/rr;
    .locals 4

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/impl/rr;

    .line 28
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    .line 29
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/rr$a;->d:Z

    .line 30
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rr$a;->b:[Ljava/lang/String;

    .line 31
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->c:[Ljava/lang/String;

    .line 32
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/mobile/ads/impl/rr;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/rr$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->d:Z

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs b([Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/rr$a;
    .locals 1

    .line 4
    const-string v0, "tlsVersions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rr$a;->a:Z

    if-eqz v0, :cond_2

    .line 6
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rr$a;->c:[Ljava/lang/String;

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one TLS version is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
