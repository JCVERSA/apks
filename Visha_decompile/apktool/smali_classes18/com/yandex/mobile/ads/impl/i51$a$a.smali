.class public final Lcom/yandex/mobile/ads/impl/i51$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/v91$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i51$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g51;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/i51$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i51$a;Lcom/yandex/mobile/ads/impl/g51;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/g51;",
            "Lcom/yandex/mobile/ads/impl/g5;",
            ")V"
        }
    .end annotation

    const-string v0, "nativeAdCreationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->c:Lcom/yandex/mobile/ads/impl/i51$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->a:Lcom/yandex/mobile/ads/impl/g51;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->b:Lcom/yandex/mobile/ads/impl/g5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i51$a$a;)Lcom/yandex/mobile/ads/impl/g51;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->a:Lcom/yandex/mobile/ads/impl/g51;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/s41;)V
    .locals 9

    .line 2
    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdBlock"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->p:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->c:Lcom/yandex/mobile/ads/impl/i51$a;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i51;->d(Lcom/yandex/mobile/ads/impl/i51;)Lnk1;

    move-result-object v1

    new-instance v0, Lcom/yandex/mobile/ads/impl/h51;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/i51$a$a;->c:Lcom/yandex/mobile/ads/impl/i51$a;

    iget-object v3, v6, Lcom/yandex/mobile/ads/impl/i51$a;->g:Lcom/yandex/mobile/ads/impl/i51;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/h51;-><init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/i51$a;Lcom/yandex/mobile/ads/impl/i51$a$a;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
