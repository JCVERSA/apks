.class public final synthetic Lcom/yandex/mobile/ads/impl/bq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/bq2;->a:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/bq2;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/bq2;->a:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/bq2;->b:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/hi1$b;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/r60;->x(IILcom/yandex/mobile/ads/impl/hi1$b;)V

    return-void
.end method
