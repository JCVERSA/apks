.class public final synthetic Lnld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/go0;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnld;->b:Ljava/util/Set;

    iput-object p2, p0, Lnld;->c:Lcom/yandex/mobile/ads/impl/go0;

    iput p3, p0, Lnld;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnld;->b:Ljava/util/Set;

    iget-object v1, p0, Lnld;->c:Lcom/yandex/mobile/ads/impl/go0;

    iget p0, p0, Lnld;->d:F

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/km0;->q(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method
