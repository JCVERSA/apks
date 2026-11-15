.class final Lcom/yandex/mobile/ads/impl/yq$a;
.super Lcom/yandex/mobile/ads/impl/yq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/yq;-><init>(Lkyd;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final a(II)Lcom/yandex/mobile/ads/impl/yq;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-gez p0, :cond_2

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->d()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->e()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->c()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final a(JJ)Lcom/yandex/mobile/ads/impl/yq;
    .locals 0

    cmp-long p0, p1, p3

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-gez p0, :cond_2

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->d()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->e()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->c()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/yandex/mobile/ads/impl/yq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/yandex/mobile/ads/impl/yq;"
        }
    .end annotation

    .line 4
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->d()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->e()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->c()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final a(ZZ)Lcom/yandex/mobile/ads/impl/yq;
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-gez p0, :cond_2

    .line 6
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->d()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->e()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->c()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final b(ZZ)Lcom/yandex/mobile/ads/impl/yq;
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-gez p0, :cond_2

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->d()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->e()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->c()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    :goto_1
    return-object p0
.end method
