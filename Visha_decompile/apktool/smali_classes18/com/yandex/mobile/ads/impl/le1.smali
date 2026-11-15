.class public final Lcom/yandex/mobile/ads/impl/le1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ya2;

.field private final b:Lcom/yandex/mobile/ads/impl/oe1;

.field private final c:Lcom/yandex/mobile/ads/impl/xe1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ya2;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/oe1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/oe1;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/xe1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/xe1;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/le1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ya2;Lcom/yandex/mobile/ads/impl/oe1;Lcom/yandex/mobile/ads/impl/xe1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ya2;Lcom/yandex/mobile/ads/impl/oe1;Lcom/yandex/mobile/ads/impl/xe1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationNotExecutedListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "omSdkJsLoader"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "omSdkVerificationScriptResourceCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/le1;->a:Lcom/yandex/mobile/ads/impl/ya2;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/le1;->b:Lcom/yandex/mobile/ads/impl/oe1;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/le1;->c:Lcom/yandex/mobile/ads/impl/xe1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/vn2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "verifications"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/wa2;

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/le1;->c:Lcom/yandex/mobile/ads/impl/xe1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/xe1;->a(Lcom/yandex/mobile/ads/impl/wa2;)Lcom/yandex/mobile/ads/impl/eb2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/xa2; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/le1;->a:Lcom/yandex/mobile/ads/impl/ya2;

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/ya2;->a(Lcom/yandex/mobile/ads/impl/xa2;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/le1;->b:Lcom/yandex/mobile/ads/impl/oe1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oe1;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/fg1;->a()Lcom/yandex/mobile/ads/impl/fg1;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/d9;->a(Lcom/yandex/mobile/ads/impl/fg1;Ljava/lang/String;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/d9;

    move-result-object p0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/c9;->a()Lcom/yandex/mobile/ads/impl/c9;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/b9;->a(Lcom/yandex/mobile/ads/impl/c9;Lcom/yandex/mobile/ads/impl/d9;)Lcom/yandex/mobile/ads/impl/vn2;

    move-result-object p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method
