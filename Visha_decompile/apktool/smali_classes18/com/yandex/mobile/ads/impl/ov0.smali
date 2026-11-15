.class public interface abstract Lcom/yandex/mobile/ads/impl/ov0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/ov0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llpd;

    invoke-direct {v0}, Llpd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ov0;->a:Lcom/yandex/mobile/ads/impl/ov0;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/kv0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/sv0$b;
        }
    .end annotation
.end method
