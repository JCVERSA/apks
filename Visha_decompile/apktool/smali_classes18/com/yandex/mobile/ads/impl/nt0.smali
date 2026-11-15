.class public final enum Lcom/yandex/mobile/ads/impl/nt0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/nt0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum d:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum e:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum f:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum g:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum h:Lcom/yandex/mobile/ads/impl/nt0;

.field public static final enum i:Lcom/yandex/mobile/ads/impl/nt0;

.field private static final synthetic j:[Lcom/yandex/mobile/ads/impl/nt0;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.yandex.mobile.ads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".AUTOMATIC_SDK_INITIALIZATION"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "AUTOMATIC_SDK_INITIALIZATION"

    invoke-direct {v0, v3, v4, v1}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/nt0;->c:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".AGE_RESTRICTED_USER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "AGE_RESTRICTED_USER"

    invoke-direct {v1, v4, v5, v3}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/nt0;->d:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v3, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ENABLE_LOGGING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "ENABLE_LOGGING"

    invoke-direct {v3, v5, v6, v4}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/yandex/mobile/ads/impl/nt0;->e:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v4, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".AD_HOST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "AD_HOST"

    invoke-direct {v4, v6, v7, v5}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/yandex/mobile/ads/impl/nt0;->f:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v5, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".FALLBACK_HOSTS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, "FALLBACK_HOSTS"

    invoke-direct {v5, v7, v8, v6}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/yandex/mobile/ads/impl/nt0;->g:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v6, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".APPMETRICA_EASY_INTEGRATION_ENABLED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "APPMETRICA_EASY_INTEGRATION_ENABLED"

    invoke-direct {v6, v8, v9, v7}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/yandex/mobile/ads/impl/nt0;->h:Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v7, Lcom/yandex/mobile/ads/impl/nt0;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SINGLE_ASSEMBLY_ENABLED"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    const-string v9, "SINGLE_ASSEMBLY_ENABLED"

    invoke-direct {v7, v8, v9, v2}, Lcom/yandex/mobile/ads/impl/nt0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/yandex/mobile/ads/impl/nt0;->i:Lcom/yandex/mobile/ads/impl/nt0;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/yandex/mobile/ads/impl/nt0;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/nt0;->j:[Lcom/yandex/mobile/ads/impl/nt0;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nt0;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nt0;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/nt0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/nt0;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/nt0;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/nt0;->j:[Lcom/yandex/mobile/ads/impl/nt0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/nt0;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nt0;->b:Ljava/lang/String;

    return-object p0
.end method
