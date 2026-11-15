.class final Lcom/yandex/mobile/ads/impl/up1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/up1;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/yandex/mobile/ads/impl/up1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/up1;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1$a;->d:Lcom/yandex/mobile/ads/impl/up1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/up1$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/up1$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1$a;->d:Lcom/yandex/mobile/ads/impl/up1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/ti2$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/up1$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/up1$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ti2$a;->a(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1$a;->d:Lcom/yandex/mobile/ads/impl/up1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/ti2$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ti2$a;->a(Ljava/lang/String;)V

    return-void
.end method
