.class public final Lcom/yandex/mobile/ads/impl/ur1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ur1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/yandex/mobile/ads/impl/hp;

.field private c:Lcom/yandex/mobile/ads/impl/rx1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/hp;)Lcom/yandex/mobile/ads/impl/ur1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->b:Lcom/yandex/mobile/ads/impl/hp;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rx1;)Lcom/yandex/mobile/ads/impl/ur1$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->c:Lcom/yandex/mobile/ads/impl/rx1;

    return-object p0
.end method

.method public final a(Z)Lcom/yandex/mobile/ads/impl/ur1$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->a:Z

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/ur1;
    .locals 3

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/ur1;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->a:Z

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->b:Lcom/yandex/mobile/ads/impl/hp;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1$a;->c:Lcom/yandex/mobile/ads/impl/rx1;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/ur1;-><init>(ZLcom/yandex/mobile/ads/impl/hp;Lcom/yandex/mobile/ads/impl/rx1;)V

    return-object v0
.end method
