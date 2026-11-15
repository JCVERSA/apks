.class public final synthetic Lcom/yandex/mobile/ads/impl/zr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/wi$a$a$a;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zr2;->b:Lcom/yandex/mobile/ads/impl/wi$a$a$a;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/zr2;->c:I

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/zr2;->d:J

    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/zr2;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zr2;->b:Lcom/yandex/mobile/ads/impl/wi$a$a$a;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/zr2;->c:I

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/zr2;->d:J

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/zr2;->e:J

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/wi$a$a;->b(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V

    return-void
.end method
