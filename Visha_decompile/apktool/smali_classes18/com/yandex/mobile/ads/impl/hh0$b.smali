.class public abstract Lcom/yandex/mobile/ads/impl/hh0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/hh0$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/hh0$b$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hh0$b$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hh0$b;->a:Lcom/yandex/mobile/ads/impl/hh0$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/impl/hh0;Lcom/yandex/mobile/ads/impl/zx1;)V
    .locals 0

    .line 1
    const-string p0, "connection"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settings"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/oh0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
