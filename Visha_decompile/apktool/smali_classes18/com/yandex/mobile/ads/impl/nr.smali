.class public final Lcom/yandex/mobile/ads/impl/nr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mp0;


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/nr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/nr;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/nr;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/nr;->a:Lcom/yandex/mobile/ads/impl/nr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "chain"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->b()Lcom/yandex/mobile/ads/impl/zn1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zn1;->a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/b60;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {p1, v2, p0, v0, v1}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/do1;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;I)Lcom/yandex/mobile/ads/impl/do1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->f()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    return-object p0
.end method
