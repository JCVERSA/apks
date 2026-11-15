.class public final synthetic Lawd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vh$a;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vh$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iput p2, p0, Lawd;->c:I

    iput-wide p3, p0, Lawd;->d:J

    iput-wide p5, p0, Lawd;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lawd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iget v1, p0, Lawd;->c:I

    iget-wide v2, p0, Lawd;->d:J

    iget-wide v4, p0, Lawd;->e:J

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vh$a;->b(Lcom/yandex/mobile/ads/impl/vh$a;IJJ)V

    return-void
.end method
