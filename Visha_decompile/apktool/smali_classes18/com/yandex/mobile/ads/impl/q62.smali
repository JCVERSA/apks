.class public final Lcom/yandex/mobile/ads/impl/q62;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/impl/fy1;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(IJLcom/yandex/mobile/ads/impl/fy1;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showNoticeType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/q62;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/q62;->b:J

    iput p1, p0, Lcom/yandex/mobile/ads/impl/q62;->c:I

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/q62;->d:Lcom/yandex/mobile/ads/impl/fy1;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/q62;->b:J

    return-wide v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q62;->e:Ljava/lang/Long;

    return-void
.end method

.method public final b()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q62;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/fy1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q62;->d:Lcom/yandex/mobile/ads/impl/fy1;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q62;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/q62;->c:I

    return p0
.end method
