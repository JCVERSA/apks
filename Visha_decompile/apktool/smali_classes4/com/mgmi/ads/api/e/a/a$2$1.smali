.class Lcom/mgmi/ads/api/e/a/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/a/a$2;->onVFrameClockCome(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mgmi/ads/api/e/a/a$2;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/a/a$2;J)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->b:Lcom/mgmi/ads/api/e/a/a$2;

    iput-wide p2, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->b:Lcom/mgmi/ads/api/e/a/a$2;

    iget-object v0, v0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;)Lcom/mgmi/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->b:Lcom/mgmi/ads/api/e/a/a$2;

    iget-object v0, v0, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/a/a;->c(Lcom/mgmi/ads/api/e/a/a;)Lcom/mgmi/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->b:Lcom/mgmi/ads/api/e/a/a$2;

    iget-object v1, v1, Lcom/mgmi/ads/api/e/a/a$2;->a:Lcom/mgmi/ads/api/e/a/a;

    iget-object v1, v1, Lcom/mgmi/ads/api/e/a/a;->j:Lcom/mgmi/model/r;

    iget-wide v2, p0, Lcom/mgmi/ads/api/e/a/a$2$1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mgmi/a/b;->a(Lcom/mgmi/model/r;J)V

    :cond_0
    return-void
.end method
