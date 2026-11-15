.class final Lcom/yandex/mobile/ads/impl/em1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/em1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/yandex/mobile/ads/impl/z52;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z52;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$e;->a:Lcom/yandex/mobile/ads/impl/z52;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/em1$e;->b:[Z

    iget p1, p1, Lcom/yandex/mobile/ads/impl/z52;->b:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/em1$e;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$e;->d:[Z

    return-void
.end method
