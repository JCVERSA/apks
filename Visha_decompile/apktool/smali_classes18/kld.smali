.class public final synthetic Lkld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/kj0$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Lcom/yandex/mobile/ads/impl/xj0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkld;->b:Lcom/yandex/mobile/ads/impl/kj0$a;

    iput-object p2, p0, Lkld;->c:Ljava/lang/String;

    iput p3, p0, Lkld;->d:I

    iput p4, p0, Lkld;->e:I

    iput-object p5, p0, Lkld;->f:Ljava/util/Map;

    iput-object p6, p0, Lkld;->g:Lcom/yandex/mobile/ads/impl/xj0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lkld;->b:Lcom/yandex/mobile/ads/impl/kj0$a;

    iget-object v1, p0, Lkld;->c:Ljava/lang/String;

    iget v2, p0, Lkld;->d:I

    iget v3, p0, Lkld;->e:I

    iget-object v4, p0, Lkld;->f:Ljava/util/Map;

    iget-object v5, p0, Lkld;->g:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/kj0$a;->b(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/lang/String;IILjava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V

    return-void
.end method
