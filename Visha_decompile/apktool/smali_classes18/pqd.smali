.class public final synthetic Lpqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/monetization/ads/mediation/base/a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/util/HashMap;

.field public final synthetic e:Lcom/yandex/mobile/ads/impl/lz0;

.field public final synthetic f:Lcom/yandex/mobile/ads/impl/pz0;

.field public final synthetic g:Lcom/yandex/mobile/ads/impl/tx0;

.field public final synthetic h:Lcom/yandex/mobile/ads/impl/pz0$a;

.field public final synthetic i:Lcom/yandex/mobile/ads/impl/el;

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpqd;->b:Lcom/monetization/ads/mediation/base/a;

    iput-object p2, p0, Lpqd;->c:Landroid/content/Context;

    iput-object p3, p0, Lpqd;->d:Ljava/util/HashMap;

    iput-object p4, p0, Lpqd;->e:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object p5, p0, Lpqd;->f:Lcom/yandex/mobile/ads/impl/pz0;

    iput-object p6, p0, Lpqd;->g:Lcom/yandex/mobile/ads/impl/tx0;

    iput-object p7, p0, Lpqd;->h:Lcom/yandex/mobile/ads/impl/pz0$a;

    iput-object p8, p0, Lpqd;->i:Lcom/yandex/mobile/ads/impl/el;

    iput-wide p9, p0, Lpqd;->j:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lpqd;->b:Lcom/monetization/ads/mediation/base/a;

    iget-object v1, p0, Lpqd;->c:Landroid/content/Context;

    iget-object v2, p0, Lpqd;->d:Ljava/util/HashMap;

    iget-object v3, p0, Lpqd;->e:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v4, p0, Lpqd;->f:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v5, p0, Lpqd;->g:Lcom/yandex/mobile/ads/impl/tx0;

    iget-object v6, p0, Lpqd;->h:Lcom/yandex/mobile/ads/impl/pz0$a;

    iget-object v7, p0, Lpqd;->i:Lcom/yandex/mobile/ads/impl/el;

    iget-wide v8, p0, Lpqd;->j:J

    invoke-static/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/pz0;->b(Lcom/monetization/ads/mediation/base/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V

    return-void
.end method
