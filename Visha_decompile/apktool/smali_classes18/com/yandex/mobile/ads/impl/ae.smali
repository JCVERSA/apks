.class public final Lcom/yandex/mobile/ads/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/coroutines/d;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae;->a:Lkotlin/coroutines/d;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ae;->b:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ae;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ae;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(JLwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lwh1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae;->a:Lkotlin/coroutines/d;

    new-instance v1, Lcom/yandex/mobile/ads/impl/ae$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/yandex/mobile/ads/impl/ae$a;-><init>(Lcom/yandex/mobile/ads/impl/ae;JLwh1;)V

    invoke-static {v0, v1, p3}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
