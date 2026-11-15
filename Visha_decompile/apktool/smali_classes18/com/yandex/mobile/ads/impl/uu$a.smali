.class public final Lcom/yandex/mobile/ads/impl/uu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/uu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private d:Lcom/yandex/mobile/ads/impl/xu;

.field private e:Ljava/lang/String;

.field private f:Lcom/yandex/mobile/ads/impl/sz1;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 0

    .line 7
    iput p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->h:I

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/sz1;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->f:Lcom/yandex/mobile/ads/impl/sz1;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/uu;
    .locals 11

    .line 9
    new-instance v10, Lcom/yandex/mobile/ads/impl/uu;

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu$a;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/uu$a;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/uu$a;->d:Lcom/yandex/mobile/ads/impl/xu;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/uu$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/uu$a;->f:Lcom/yandex/mobile/ads/impl/sz1;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/uu$a;->g:Ljava/lang/String;

    iget v8, p0, Lcom/yandex/mobile/ads/impl/uu$a;->h:I

    .line 11
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/uu$a;->i:Ljava/lang/String;

    move-object v0, v10

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/uu;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/xu;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sz1;Ljava/lang/String;ILjava/lang/String;)V

    return-object v10
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/l62;)V
    .locals 1

    .line 2
    const-string v0, "trackingEvent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xu;)V
    .locals 1

    .line 5
    const-string v0, "creativeExtensions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->d:Lcom/yandex/mobile/ads/impl/xu;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/uu$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/uu$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu$a;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
