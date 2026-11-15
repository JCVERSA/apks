.class final Lcom/yandex/mobile/ads/impl/fd1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fd1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/si2;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fd1$a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fd1$a;->b:Lcom/yandex/mobile/ads/impl/si2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/si2;Lafd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fd1$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/si2;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/fd1$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fd1$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/fd1$a;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fd1$a;->b:Lcom/yandex/mobile/ads/impl/si2;

    return-object p0
.end method
