.class final Lcom/yandex/mobile/ads/impl/lh1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/lh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/qk$a<",
        "Lcom/yandex/mobile/ads/impl/xc1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/ju1;

.field private final c:Lcom/yandex/mobile/ads/impl/u62;

.field private final d:Lcom/yandex/mobile/ads/impl/z62;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/u62;Lcom/yandex/mobile/ads/impl/z62;)V
    .locals 1

    const-string v0, "trackingUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingUrlType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->b:Lcom/yandex/mobile/ads/impl/ju1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->c:Lcom/yandex/mobile/ads/impl/u62;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->d:Lcom/yandex/mobile/ads/impl/z62;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    .line 3
    const-string v1, "args"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "tracking_result"

    const-string v1, "failure"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->d:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tracking_url_type"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown Volley error"

    :cond_0
    const-string v2, "error_message"

    invoke-static {v2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Lkotlin/Pair;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->c:Lcom/yandex/mobile/ads/impl/u62;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->c:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->b:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/u62;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 9
    check-cast p1, Lcom/yandex/mobile/ads/impl/xc1;

    .line 10
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget p1, p1, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    .line 13
    const-string v1, "args"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-string v0, "tracking_result"

    const-string v1, "success"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->d:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tracking_url_type"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "code"

    invoke-static {v2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Lkotlin/Pair;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->c:Lcom/yandex/mobile/ads/impl/u62;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->c:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lh1$a;->b:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/u62;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method
