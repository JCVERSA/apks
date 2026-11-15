.class public final synthetic Lpdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lpdd;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lpdd;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lpdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object v1, p0, Lpdd;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lpdd;->c:J

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/yandex/mobile/ads/impl/ez;->M(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/Object;JLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
