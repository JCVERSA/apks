.class public final Lcom/yandex/mobile/ads/impl/kb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rc2;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kb1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/kb1;->b:I

    iput p3, p0, Lcom/yandex/mobile/ads/impl/kb1;->c:I

    return-void
.end method


# virtual methods
.method public final getAdHeight()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/kb1;->c:I

    return p0
.end method

.method public final getAdWidth()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/kb1;->b:I

    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kb1;->a:Ljava/lang/String;

    return-object p0
.end method
