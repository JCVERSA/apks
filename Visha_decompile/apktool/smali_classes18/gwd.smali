.class public final synthetic Lgwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vh$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iput-object p2, p0, Lgwd;->c:Ljava/lang/String;

    iput-wide p3, p0, Lgwd;->d:J

    iput-wide p5, p0, Lgwd;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lgwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iget-object v1, p0, Lgwd;->c:Ljava/lang/String;

    iget-wide v2, p0, Lgwd;->d:J

    iget-wide v4, p0, Lgwd;->e:J

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/vh$a;->a(Lcom/yandex/mobile/ads/impl/vh$a;Ljava/lang/String;JJ)V

    return-void
.end method
