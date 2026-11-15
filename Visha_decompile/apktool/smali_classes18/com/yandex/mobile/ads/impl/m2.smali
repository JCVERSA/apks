.class public final Lcom/yandex/mobile/ads/impl/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/m2$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/yandex/mobile/ads/impl/m2;

.field public static final synthetic d:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/m2;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/l2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m2;->a:Lcom/yandex/mobile/ads/impl/l2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/l2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/l2;-><init>(Lcom/yandex/mobile/ads/impl/ps0;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/m2;-><init>(Lcom/yandex/mobile/ads/impl/l2;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/m2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/m2;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/m2;->c:Lcom/yandex/mobile/ads/impl/m2;

    return-void
.end method

.method public static final synthetic b()Lcom/yandex/mobile/ads/impl/m2;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/m2;->c:Lcom/yandex/mobile/ads/impl/m2;

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/yandex/mobile/ads/impl/l2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m2;->a:Lcom/yandex/mobile/ads/impl/l2;

    return-object p0
.end method
