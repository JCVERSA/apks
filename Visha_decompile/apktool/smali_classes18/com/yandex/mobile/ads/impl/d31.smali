.class public final Lcom/yandex/mobile/ads/impl/d31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/d31$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/mobile/ads/impl/d31$a;

.field private static volatile d:Lcom/yandex/mobile/ads/impl/d31;


# instance fields
.field private final a:I

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/yandex/mobile/ads/impl/wu0;",
            "Lcom/yandex/mobile/ads/impl/w21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/d31$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/d31$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/d31;->c:Lcom/yandex/mobile/ads/impl/d31$a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/d31;->a:I

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/d31;-><init>(I)V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/d31;
    .locals 1

    .line 7
    sget-object v0, Lcom/yandex/mobile/ads/impl/d31;->d:Lcom/yandex/mobile/ads/impl/d31;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/d31;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/d31;->d:Lcom/yandex/mobile/ads/impl/d31;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/wu0;)V
    .locals 2

    .line 4
    const-string v0, "media"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d31;->a:I

    if-ge v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/wu0;)Z
    .locals 1

    .line 2
    const-string v0, "media"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/wu0;)Lcom/yandex/mobile/ads/impl/w21;
    .locals 1

    .line 1
    const-string v0, "media"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w21;

    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d31;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d31;->a:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
