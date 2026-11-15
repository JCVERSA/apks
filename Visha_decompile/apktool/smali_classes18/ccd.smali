.class public final synthetic Lccd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lccd;->b:I

    iput-boolean p3, p0, Lccd;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lccd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget v1, p0, Lccd;->b:I

    iget-boolean p0, p0, Lccd;->c:Z

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->K(Lcom/yandex/mobile/ads/impl/ld$a;IZLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
