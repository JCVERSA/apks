.class public final Lcom/yandex/mobile/ads/impl/dv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 1

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dv1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dv1;->b:Ljavax/net/ssl/SSLSocketFactory;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/dv1;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/tv;
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/dv1;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/impl/ge1;->c:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv1;->b:Ljavax/net/ssl/SSLSocketFactory;

    const/16 v1, 0x1f40

    invoke-static {v1, v1, v0}, Lcom/yandex/mobile/ads/impl/ge1;->a(IILjavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/je1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv1;->a:Ljava/lang/String;

    new-instance v2, Lcom/yandex/mobile/ads/impl/uh0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/uh0;-><init>()V

    invoke-direct {v1, v0, p0, v2}, Lcom/yandex/mobile/ads/impl/je1;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/uh0;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/av1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dv1;->a:Ljava/lang/String;

    new-instance v2, Lcom/yandex/mobile/ads/impl/uh0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/uh0;-><init>()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dv1;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, v0, v2, p0}, Lcom/yandex/mobile/ads/impl/av1;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/uh0;Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_0
    return-object v1
.end method
