.class final Lcom/yandex/mobile/ads/impl/b21$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/b21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yandex/mobile/ads/impl/v52;

.field public final b:Lcom/yandex/mobile/ads/impl/b62;

.field public final c:Lcom/yandex/mobile/ads/impl/a62;

.field public final d:Lcom/yandex/mobile/ads/impl/i72;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v52;Lcom/yandex/mobile/ads/impl/b62;Lcom/yandex/mobile/ads/impl/a62;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b21$a;->a:Lcom/yandex/mobile/ads/impl/v52;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b21$a;->b:Lcom/yandex/mobile/ads/impl/b62;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/b21$a;->c:Lcom/yandex/mobile/ads/impl/a62;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/yandex/mobile/ads/impl/i72;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i72;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b21$a;->d:Lcom/yandex/mobile/ads/impl/i72;

    return-void
.end method
