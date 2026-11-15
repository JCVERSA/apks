.class public final Lcom/yandex/mobile/ads/impl/hd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dh0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ju1;

.field private final c:Lcom/yandex/mobile/ads/impl/ug0;

.field private final d:Lcom/yandex/mobile/ads/impl/u1;

.field private e:Lcom/yandex/mobile/ads/impl/fs;

.field private f:Lcom/yandex/mobile/ads/impl/t62;

.field private g:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)V
    .locals 8

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/hd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResultReceiver"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hd0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 6
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/hd0;->b:Lcom/yandex/mobile/ads/impl/ju1;

    .line 7
    new-instance p6, Lcom/yandex/mobile/ads/impl/ug0;

    invoke-direct {p6, p1, p3}, Lcom/yandex/mobile/ads/impl/ug0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/hd0;->c:Lcom/yandex/mobile/ads/impl/ug0;

    .line 8
    new-instance p6, Lcom/yandex/mobile/ads/impl/u1;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/u1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/hd0;->d:Lcom/yandex/mobile/ads/impl/u1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hd0;->g:Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ad0;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hd0;->f:Lcom/yandex/mobile/ads/impl/t62;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fs;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hd0;->e:Lcom/yandex/mobile/ads/impl/fs;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 2
    const-string v0, "adFetchRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hd0;->e:Lcom/yandex/mobile/ads/impl/fs;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/fs;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V
    .locals 1

    .line 4
    const-string v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackingParameters"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hd0;->f:Lcom/yandex/mobile/ads/impl/t62;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/t62;->a(Ljava/util/Map;)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hd0;->e:Lcom/yandex/mobile/ads/impl/fs;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/fs;->a()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 7
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hd0;->b:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hd0;->g:Z

    if-eqz v0, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hd0;->c:Lcom/yandex/mobile/ads/impl/ug0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hd0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hd0;->d:Lcom/yandex/mobile/ads/impl/u1;

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/ug0;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u1;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/hd0;->g:Z

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    return-void
.end method
