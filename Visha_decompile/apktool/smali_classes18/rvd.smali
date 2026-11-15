.class public final synthetic Lrvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vf2$a;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vf2$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iput p2, p0, Lrvd;->c:I

    iput-wide p3, p0, Lrvd;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lrvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iget v1, p0, Lrvd;->c:I

    iget-wide v2, p0, Lrvd;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/vf2$a;->j(Lcom/yandex/mobile/ads/impl/vf2$a;IJ)V

    return-void
.end method
