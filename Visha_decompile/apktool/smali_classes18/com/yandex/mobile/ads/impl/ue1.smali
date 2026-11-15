.class public final Lcom/yandex/mobile/ads/impl/ue1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/le1;

.field private final b:Lcom/yandex/mobile/ads/impl/me1;

.field private final c:Lcom/yandex/mobile/ads/impl/ve1;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ya2;Lcom/yandex/mobile/ads/impl/le1;Lcom/yandex/mobile/ads/impl/me1;Lcom/yandex/mobile/ads/impl/ve1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationNotExecutedListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "omSdkAdSessionProvider"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "omSdkInitializer"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "omSdkUsageValidator"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ue1;->a:Lcom/yandex/mobile/ads/impl/le1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ue1;->b:Lcom/yandex/mobile/ads/impl/me1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ue1;->c:Lcom/yandex/mobile/ads/impl/ve1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ue1;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/te1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/wa2;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/te1;"
        }
    .end annotation

    const-string v0, "verifications"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ue1;->c:Lcom/yandex/mobile/ads/impl/ve1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ue1;->d:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ve1;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ue1;->b:Lcom/yandex/mobile/ads/impl/me1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ue1;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/me1;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ue1;->a:Lcom/yandex/mobile/ads/impl/le1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/le1;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/vn2;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/yandex/mobile/ads/impl/te1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dw0;->a(Lcom/yandex/mobile/ads/impl/vn2;)Lcom/yandex/mobile/ads/impl/dw0;

    move-result-object p1

    const-string v0, "createMediaEvents(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/p3;->a(Lcom/yandex/mobile/ads/impl/vn2;)Lcom/yandex/mobile/ads/impl/p3;

    move-result-object v0

    const-string v2, "createAdEvents(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, p1, v0}, Lcom/yandex/mobile/ads/impl/te1;-><init>(Lcom/yandex/mobile/ads/impl/vn2;Lcom/yandex/mobile/ads/impl/dw0;Lcom/yandex/mobile/ads/impl/p3;)V

    :cond_1
    return-object v1
.end method
