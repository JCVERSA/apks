.class public final synthetic Licd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Licd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-wide p2, p0, Licd;->b:J

    iput p4, p0, Licd;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Licd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-wide v1, p0, Licd;->b:J

    iget p0, p0, Licd;->c:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->s(Lcom/yandex/mobile/ads/impl/ld$a;JILcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
