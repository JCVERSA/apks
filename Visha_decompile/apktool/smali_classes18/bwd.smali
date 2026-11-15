.class public final synthetic Lbwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vh$a;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vh$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iput-wide p2, p0, Lbwd;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iget-wide v1, p0, Lbwd;->c:J

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/vh$a;->d(Lcom/yandex/mobile/ads/impl/vh$a;J)V

    return-void
.end method
