.class public final Lcom/yandex/mobile/ads/impl/f70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/f70$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/yandex/mobile/ads/impl/f70;

.field public static final synthetic d:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e70;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/f70;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/nf2;->a()I

    move-result v0

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/e70;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/e70;-><init>(I)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/f70;->a:Lcom/yandex/mobile/ads/impl/e70;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/f70;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/f70;
    .locals 1

    .line 6
    sget-object v0, Lcom/yandex/mobile/ads/impl/f70;->c:Lcom/yandex/mobile/ads/impl/f70;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/f70;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/f70;->c:Lcom/yandex/mobile/ads/impl/f70;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/f70;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/sa1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "*>;)",
            "Lcom/yandex/mobile/ads/impl/sa1;"
        }
    .end annotation

    .line 2
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f70;->a:Lcom/yandex/mobile/ads/impl/e70;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/sa1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/i70;)V
    .locals 1

    .line 4
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoVideoAdPlayer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f70;->a:Lcom/yandex/mobile/ads/impl/e70;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
