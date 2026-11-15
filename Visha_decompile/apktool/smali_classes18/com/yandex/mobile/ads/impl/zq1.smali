.class public abstract Lcom/yandex/mobile/ads/impl/zq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/zq1$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lcom/yandex/mobile/ads/impl/cx0;
.end method

.method public abstract c()Lokio/BufferedSource;
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    return-void
.end method
