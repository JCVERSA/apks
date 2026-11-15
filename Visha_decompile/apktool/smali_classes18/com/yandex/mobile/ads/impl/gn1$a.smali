.class final Lcom/yandex/mobile/ads/impl/gn1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/gn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mg2$a;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mg2$a;F)V
    .locals 1

    const-string v0, "trackerQuartile"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gn1$a;->a:Lcom/yandex/mobile/ads/impl/mg2$a;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/gn1$a;->b:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/gn1$a;->b:F

    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/mg2$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gn1$a;->a:Lcom/yandex/mobile/ads/impl/mg2$a;

    return-object p0
.end method
