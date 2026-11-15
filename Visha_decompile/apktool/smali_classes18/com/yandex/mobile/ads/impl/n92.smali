.class public final Lcom/yandex/mobile/ads/impl/n92;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/n92$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/n92$a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/n92$a;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n92;->a:Lcom/yandex/mobile/ads/impl/n92$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n92;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n92;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/n92$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n92;->a:Lcom/yandex/mobile/ads/impl/n92$a;

    return-object p0
.end method
