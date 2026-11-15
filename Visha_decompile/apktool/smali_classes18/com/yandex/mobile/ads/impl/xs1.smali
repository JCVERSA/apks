.class public final Lcom/yandex/mobile/ads/impl/xs1;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final b:Ljava/io/IOException;

.field private c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const-string v0, "firstConnectException"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xs1;->b:Ljava/io/IOException;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xs1;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/IOException;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs1;->b:Ljava/io/IOException;

    return-object p0
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xs1;->b:Ljava/io/IOException;

    invoke-static {v0, p1}, Lue3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xs1;->c:Ljava/io/IOException;

    return-void
.end method

.method public final b()Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs1;->c:Ljava/io/IOException;

    return-object p0
.end method
