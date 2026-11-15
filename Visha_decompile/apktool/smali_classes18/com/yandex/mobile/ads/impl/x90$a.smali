.class final Lcom/yandex/mobile/ads/impl/x90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z90;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/x90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lwh1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwh1<",
            "Lcom/yandex/mobile/ads/impl/aa0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw09;)V
    .locals 1

    const-string v0, "continuation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x90$a;->a:Lwh1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gs0;)V
    .locals 1

    .line 3
    const-string v0, "loadedFeedItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x90$a;->a:Lwh1;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/aa0$b;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/aa0$b;-><init>(Lcom/yandex/mobile/ads/impl/gs0;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x90$a;->a:Lwh1;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/aa0$a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/aa0$a;-><init>(Lcom/yandex/mobile/ads/impl/w3;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
