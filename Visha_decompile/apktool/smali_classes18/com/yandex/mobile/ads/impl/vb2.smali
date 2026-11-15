.class public final Lcom/yandex/mobile/ads/impl/vb2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/qy1;

.field private final c:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yandex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ad_info"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tracking_events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/vb2;->d:Ljava/lang/String;

    const-string v7, "bannerId"

    const-string v8, "VitrinaTVIsInteractive"

    const-string v3, "ad_system"

    const-string v4, "social_ad_info"

    const-string v5, "AdTune"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/vb2;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/qy1;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/qy1;-><init>(Lcom/yandex/mobile/ads/impl/el2;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/vb2;->b:Lcom/yandex/mobile/ads/impl/qy1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vb2;->a()Lcom/yandex/mobile/ads/impl/cl2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vb2;->c:Lcom/yandex/mobile/ads/impl/cl2;

    return-void
.end method

.method private static a()Lcom/yandex/mobile/ads/impl/cl2;
    .locals 5

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/impl/m62;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/m62;-><init>()V

    .line 23
    new-instance v1, Lcom/yandex/mobile/ads/impl/cl2;

    .line 24
    new-instance v2, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 25
    const-string v3, "Extension"

    const-string v4, "Tracking"

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/el2;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/ub2;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    const-string v2, "Extensions"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Lcom/yandex/mobile/ads/impl/ub2$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/ub2$a;-><init>()V

    .line 7
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Extension"

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    const-string v4, "type"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Lcom/yandex/mobile/ads/impl/vb2;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->b:Lcom/yandex/mobile/ads/impl/qy1;

    invoke-virtual {v4, p1, p2}, Lcom/yandex/mobile/ads/impl/qy1;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/u70;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    sget-object v5, Lcom/yandex/mobile/ads/impl/vb2;->d:Ljava/lang/String;

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->c:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {v4, p1, p2}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/vb2;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/ub2$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/ub2$a;

    .line 20
    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/impl/ub2$a;->b(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/ub2$a;

    .line 21
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ub2$a;->a()Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object p0

    return-object p0
.end method
