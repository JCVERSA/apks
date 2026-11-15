.class final Lcom/yandex/mobile/ads/impl/hz$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:Lcom/yandex/mobile/ads/impl/bi1;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/bi1;ZJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$i;->a:Lcom/yandex/mobile/ads/impl/bi1;

    .line 4
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/hz$i;->b:Z

    .line 5
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/hz$i;->c:J

    .line 6
    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/hz$i;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bi1;ZJJLjid;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/hz$i;-><init>(Lcom/yandex/mobile/ads/impl/bi1;ZJJ)V

    return-void
.end method
