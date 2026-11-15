.class public final Lcom/yandex/mobile/ads/impl/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fo$a;,
        Lcom/yandex/mobile/ads/impl/fo$b;,
        Lcom/yandex/mobile/ads/impl/fo$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/mobile/ads/impl/fo;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/fo$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/fo$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/fo$a;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fo$a;->a()Lcom/yandex/mobile/ads/impl/fo;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/fo;->c:Lcom/yandex/mobile/ads/impl/fo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/eo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/fo$c;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/eo;",
            ")V"
        }
    .end annotation

    const-string v0, "pins"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/eo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/eo;)Lcom/yandex/mobile/ads/impl/fo;
    .locals 1

    .line 45
    const-string v0, "certificateChainCleaner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/fo;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/fo;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/eo;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lc74;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc74;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "hostname"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cleanedPeerCertificatesFn"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    .line 6
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    move-object v4, v2

    check-cast v4, Lcom/yandex/mobile/ads/impl/fo$c;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v4, "**."

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    const-string v4, "*."

    invoke-static {v3, v4, v5, v6, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-static {p1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_1
    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.Util.filterList>"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lccb;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    throw v3

    .line 17
    :cond_3
    throw v3

    .line 18
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    .line 19
    :cond_5
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    move-object v5, v4

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/fo$c;

    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v6, "sha256"

    invoke-static {v3, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v4, :cond_8

    .line 24
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fo$b;->c(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v4

    .line 25
    :cond_8
    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    .line 26
    :cond_9
    const-string v6, "sha1"

    invoke-static {v3, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v5, :cond_a

    .line 27
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fo$b;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v5

    .line 28
    :cond_a
    invoke-static {v3, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    .line 29
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported hashAlgorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 30
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Certificate pinning failure!\n  Peer certificate chain:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "\n    "

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 32
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fo$b;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 36
    :cond_d
    const-string p0, "\n  Pinned certificates for "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/fo$c;

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 42
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1
    const-string v0, "hostname"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCertificates"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/fo$d;

    invoke-direct {v0, p0, p2, p1}, Lcom/yandex/mobile/ads/impl/fo$d;-><init>(Lcom/yandex/mobile/ads/impl/fo;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/fo;->a(Ljava/lang/String;Lc74;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/fo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/fo;

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fo;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x5ed

    mul-int/lit8 v0, v0, 0x29

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo;->b:Lcom/yandex/mobile/ads/impl/eo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
