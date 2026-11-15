.class public final Lcom/yandex/mobile/ads/feed/FeedAd$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/feed/FeedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/feed/FeedAd$Builder;",
        "",
        "Lcom/yandex/mobile/ads/feed/FeedAd;",
        "build",
        "()Lcom/yandex/mobile/ads/feed/FeedAd;",
        "Landroid/content/Context;",
        "context",
        "Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;",
        "requestConfiguration",
        "Lcom/yandex/mobile/ads/feed/FeedAdAppearance;",
        "appearance",
        "<init>",
        "(Landroid/content/Context;Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;Lcom/yandex/mobile/ads/feed/FeedAdAppearance;)V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;

.field private final c:Lcom/yandex/mobile/ads/feed/FeedAdAppearance;

.field private final d:Lcom/yandex/mobile/ads/impl/e90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;Lcom/yandex/mobile/ads/feed/FeedAdAppearance;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appearance"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->b:Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;

    iput-object p3, p0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->c:Lcom/yandex/mobile/ads/feed/FeedAdAppearance;

    new-instance p1, Lcom/yandex/mobile/ads/impl/e90;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/e90;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->d:Lcom/yandex/mobile/ads/impl/e90;

    return-void
.end method


# virtual methods
.method public final build()Lcom/yandex/mobile/ads/feed/FeedAd;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->d:Lcom/yandex/mobile/ads/impl/e90;

    iget-object v2, v0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->b:Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;

    iget-object v3, v0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->c:Lcom/yandex/mobile/ads/feed/FeedAdAppearance;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/e90;->a(Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;Lcom/yandex/mobile/ads/feed/FeedAdAppearance;)Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v7

    new-instance v6, Lcom/yandex/mobile/ads/impl/en2;

    iget-object v1, v0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->a:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/yandex/mobile/ads/feed/FeedAd$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v0, Lcom/yandex/mobile/ads/impl/na0;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/k90;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v1

    invoke-direct {v8, v5, v1}, Lcom/yandex/mobile/ads/impl/k90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/l90;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/v10;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/v10;-><init>()V

    invoke-direct {v9, v8, v1, v2}, Lcom/yandex/mobile/ads/impl/l90;-><init>(Lcom/yandex/mobile/ads/impl/k90;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/v10;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->j:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {v10, v1, v6}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v3, v15, v1, v15}, Llg9;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkw6;

    move-result-object v11

    new-instance v12, Lcom/yandex/mobile/ads/impl/w90;

    invoke-direct {v12, v5, v6, v10}, Lcom/yandex/mobile/ads/impl/w90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/x90;

    new-instance v1, Lcom/yandex/mobile/ads/impl/f90;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/f90;-><init>()V

    invoke-direct {v13, v12, v1}, Lcom/yandex/mobile/ads/impl/x90;-><init>(Lcom/yandex/mobile/ads/impl/w90;Lcom/yandex/mobile/ads/impl/f90;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/ba0;

    invoke-direct {v14, v9}, Lcom/yandex/mobile/ads/impl/ba0;-><init>(Lcom/yandex/mobile/ads/impl/l90;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/j01;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/j01;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/y90;

    invoke-direct {v3, v1}, Lcom/yandex/mobile/ads/impl/y90;-><init>(Lcom/yandex/mobile/ads/impl/j01;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/da0;

    invoke-direct {v4, v7, v13, v14, v3}, Lcom/yandex/mobile/ads/impl/da0;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/x90;Lcom/yandex/mobile/ads/impl/ba0;Lcom/yandex/mobile/ads/impl/y90;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/t90;

    invoke-direct {v2, v11, v4}, Lcom/yandex/mobile/ads/impl/t90;-><init>(Lkw6;Lcom/yandex/mobile/ads/impl/da0;)V

    move-object/from16 v16, v4

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v4

    move-object/from16 v18, v2

    const/4 v2, 0x1

    invoke-static {v15, v2, v15}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v4, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v19

    move-object/from16 v2, v16

    move-object v4, v0

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v4 .. v19}, Lcom/yandex/mobile/ads/impl/na0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/k90;Lcom/yandex/mobile/ads/impl/l90;Lcom/yandex/mobile/ads/impl/o3;Lkw6;Lcom/yandex/mobile/ads/impl/w90;Lcom/yandex/mobile/ads/impl/x90;Lcom/yandex/mobile/ads/impl/ba0;Lcom/yandex/mobile/ads/impl/j01;Lcom/yandex/mobile/ads/impl/y90;Lcom/yandex/mobile/ads/impl/da0;Lcom/yandex/mobile/ads/impl/t90;Lnk1;)V

    new-instance v1, Lcom/yandex/mobile/ads/feed/FeedAd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/feed/FeedAd;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
