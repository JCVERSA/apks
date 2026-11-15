.class public final synthetic Lzcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lzcd;->b:I

    iput-wide p3, p0, Lzcd;->c:J

    iput-wide p5, p0, Lzcd;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lzcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget v1, p0, Lzcd;->b:I

    iget-wide v2, p0, Lzcd;->c:J

    iget-wide v4, p0, Lzcd;->d:J

    move-object v6, p1

    check-cast v6, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ez;->i(Lcom/yandex/mobile/ads/impl/ld$a;IJJLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
