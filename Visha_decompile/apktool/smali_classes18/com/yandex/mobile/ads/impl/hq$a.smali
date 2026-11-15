.class final Lcom/yandex/mobile/ads/impl/hq$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/hq;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/hq;

.field final synthetic c:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hq;Landroid/net/Uri$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hq$a;->b:Lcom/yandex/mobile/ads/impl/hq;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hq$a;->c:Landroid/net/Uri$Builder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hq$a;->b:Lcom/yandex/mobile/ads/impl/hq;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/hq;->a(Lcom/yandex/mobile/ads/impl/hq;)Lcom/yandex/mobile/ads/impl/bq1;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hq$a;->c:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "builder"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
