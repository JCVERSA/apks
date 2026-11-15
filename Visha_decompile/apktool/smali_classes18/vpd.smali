.class public final synthetic Lvpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/p60;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/p60;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvpd;->b:Lcom/yandex/mobile/ads/impl/p60;

    iput p2, p0, Lvpd;->c:I

    iput p3, p0, Lvpd;->d:I

    iput-wide p4, p0, Lvpd;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvpd;->b:Lcom/yandex/mobile/ads/impl/p60;

    iget v1, p0, Lvpd;->c:I

    iget v2, p0, Lvpd;->d:I

    iget-wide v3, p0, Lvpd;->e:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p60;->b(Lcom/yandex/mobile/ads/impl/p60;IIJ)V

    return-void
.end method
