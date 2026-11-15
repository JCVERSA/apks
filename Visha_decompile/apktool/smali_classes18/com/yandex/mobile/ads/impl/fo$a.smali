.class public final Lcom/yandex/mobile/ads/impl/fo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fo$a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/fo;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/fo;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo$a;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/fo;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/eo;)V

    return-object v0
.end method
