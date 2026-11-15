.class public final Lcom/yandex/mobile/ads/impl/ne0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tx;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tx;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ne0;->a:Lcom/yandex/mobile/ads/impl/tx;

    return-void
.end method


# virtual methods
.method public final a(Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ll0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ne0;->a:Lcom/yandex/mobile/ads/impl/tx;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tx;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
