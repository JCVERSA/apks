.class public final Lcom/yandex/mobile/ads/impl/x71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/y61;

.field private final e:Lcom/yandex/mobile/ads/impl/i81;

.field private f:Lcom/yandex/mobile/ads/impl/f81;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/i81;Lcom/yandex/mobile/ads/impl/f81;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y61;",
            "Lcom/yandex/mobile/ads/impl/i81;",
            "Lcom/yandex/mobile/ads/impl/f81;",
            ")V"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseNativeType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCommonReportDataProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x71;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x71;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/x71;->c:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/x71;->d:Lcom/yandex/mobile/ads/impl/y61;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/x71;->e:Lcom/yandex/mobile/ads/impl/i81;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/x71;->f:Lcom/yandex/mobile/ads/impl/f81;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x71;->e:Lcom/yandex/mobile/ads/impl/i81;

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x71;->c:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/x71;->d:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/x71;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-interface {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x71;->f:Lcom/yandex/mobile/ads/impl/f81;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/f81;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x71;->b:Ljava/lang/String;

    const-string v2, "native_ad_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x71;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x71;->c:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/f81;)V
    .locals 1

    .line 10
    const-string v0, "bindType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x71;->f:Lcom/yandex/mobile/ads/impl/f81;

    return-void
.end method
