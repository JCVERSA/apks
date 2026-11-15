.class public final Lcom/yandex/mobile/ads/impl/m62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dl2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dl2<",
        "Lcom/yandex/mobile/ads/impl/l62;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/d52;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/b52;->values()[Lcom/yandex/mobile/ads/impl/b52;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/d52;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/d52;-><init>(Ljava/util/Set;)V

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/yandex/mobile/ads/impl/m62;-><init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/d52;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/d52;)V
    .locals 1

    .line 5
    const-string v0, "xmlHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeOffsetParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m62;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m62;->b:Lcom/yandex/mobile/ads/impl/d52;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/m62;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/l62;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/l62;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/m62;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "Tracking"

    invoke-interface {p1, p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "offset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m62;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m62;->b:Lcom/yandex/mobile/ads/impl/d52;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/d52;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/na2;

    move-result-object v0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/l62;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/yandex/mobile/ads/impl/l62;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/na2;)V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
