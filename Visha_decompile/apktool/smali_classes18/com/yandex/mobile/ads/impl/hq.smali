.class public final Lcom/yandex/mobile/ads/impl/hq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bq1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bq1;)V
    .locals 1

    const-string v0, "requestHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hq;->a:Lcom/yandex/mobile/ads/impl/bq1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hq;)Lcom/yandex/mobile/ads/impl/bq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hq;->a:Lcom/yandex/mobile/ads/impl/bq1;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/in1;)V
    .locals 2

    .line 12
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParams"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/yandex/mobile/ads/impl/hq$b;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/hq$b;-><init>(Lcom/yandex/mobile/ads/impl/in1;)V

    .line 14
    sget-object p1, Lcom/yandex/mobile/ads/impl/iq;->a:Lcom/yandex/mobile/ads/impl/iq$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/iq$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq;

    move-result-object p0

    .line 15
    check-cast p0, Lcom/yandex/mobile/ads/impl/kq;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gdpr"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hq$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gdpr_consent"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hq$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "parsed_purpose_consents"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hq$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->f()Ljava/lang/String;

    move-result-object p1

    const-string v1, "parsed_vendor_consents"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hq$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->e()Z

    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cmp_present"

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/hq$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri$Builder;)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/hq$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/hq$a;-><init>(Lcom/yandex/mobile/ads/impl/hq;Landroid/net/Uri$Builder;)V

    .line 4
    sget-object p0, Lcom/yandex/mobile/ads/impl/iq;->a:Lcom/yandex/mobile/ads/impl/iq$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/iq$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/yandex/mobile/ads/impl/kq;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gdpr"

    invoke-virtual {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/hq$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gdpr_consent"

    invoke-virtual {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/hq$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "parsed_purpose_consents"

    invoke-virtual {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/hq$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "parsed_vendor_consents"

    invoke-virtual {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/hq$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kq;->e()Z

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cmp_present"

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/hq$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
