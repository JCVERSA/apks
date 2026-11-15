.class public final Lcom/yandex/mobile/ads/impl/uc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ld2$b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/i81;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/v71;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v71;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/uc2;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/i81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/i81;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/i81;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uc2;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/uc2;->c:Lcom/yandex/mobile/ads/impl/i81;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uc2;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/y61;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/mobile/ads/impl/y61;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uc2;->c:Lcom/yandex/mobile/ads/impl/i81;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uc2;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/uc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-interface {v1, v2, v3, v0}, Lcom/yandex/mobile/ads/impl/i81;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uc2;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    return-object v0
.end method
