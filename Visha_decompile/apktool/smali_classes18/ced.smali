.class public final synthetic Lced;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lced;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lced;->b:I

    iput-wide p3, p0, Lced;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lced;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget v1, p0, Lced;->b:I

    iget-wide v2, p0, Lced;->c:J

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/yandex/mobile/ads/impl/ez;->S(Lcom/yandex/mobile/ads/impl/ld$a;IJLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
