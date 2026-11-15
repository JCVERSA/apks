.class public final Lcom/yandex/mobile/ads/impl/yu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/rr0;

.field private final c:Lcom/yandex/mobile/ads/impl/wu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wu<",
            "Lcom/yandex/mobile/ads/impl/m80;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/cl2;
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
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yandex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tracking_events"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/yu;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_linear_creative_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/yu;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/dh;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/dh;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wr0;I)V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/rr0;

    invoke-direct {v2, p2, v1}, Lcom/yandex/mobile/ads/impl/rr0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/dh;)V

    .line 4
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/yandex/mobile/ads/impl/yu;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/rr0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/rr0;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "xmlHelper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linearCreativeInfoParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yu;->b:Lcom/yandex/mobile/ads/impl/rr0;

    .line 9
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yu;->a()Lcom/yandex/mobile/ads/impl/wu;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yu;->c:Lcom/yandex/mobile/ads/impl/wu;

    .line 10
    invoke-static {}, Lcom/yandex/mobile/ads/impl/yu;->b()Lcom/yandex/mobile/ads/impl/cl2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yu;->d:Lcom/yandex/mobile/ads/impl/cl2;

    return-void
.end method

.method private static a()Lcom/yandex/mobile/ads/impl/wu;
    .locals 3

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/impl/r80;

    .line 23
    new-instance v1, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 24
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/r80;-><init>(Lcom/yandex/mobile/ads/impl/el2;)V

    .line 25
    new-instance v1, Lcom/yandex/mobile/ads/impl/wu;

    .line 26
    new-instance v2, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 27
    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/wu;-><init>(Lcom/yandex/mobile/ads/impl/r80;Lcom/yandex/mobile/ads/impl/el2;)V

    return-object v1
.end method

.method private static b()Lcom/yandex/mobile/ads/impl/cl2;
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/m62;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/m62;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/cl2;

    new-instance v2, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    const-string v3, "CreativeExtension"

    const-string v4, "Tracking"

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/el2;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/xu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    const-string v2, "CreativeExtensions"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/xu$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/xu$a;-><init>()V

    .line 5
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    const-string v3, "CreativeExtension"

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    const-string v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    const-string v3, "false_click"

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->c:Lcom/yandex/mobile/ads/impl/wu;

    invoke-virtual {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/wu;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/m80;

    .line 12
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/xu$a;->a(Lcom/yandex/mobile/ads/impl/m80;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v3, Lcom/yandex/mobile/ads/impl/yu;->e:Ljava/lang/String;

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->d:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/xu$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 16
    :cond_2
    sget-object v3, Lcom/yandex/mobile/ads/impl/yu;->f:Ljava/lang/String;

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->b:Lcom/yandex/mobile/ads/impl/rr0;

    invoke-virtual {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/rr0;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/qr0;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/xu$a;->a(Lcom/yandex/mobile/ads/impl/qr0;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yu;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xu$a;->a()Lcom/yandex/mobile/ads/impl/xu;

    move-result-object p0

    return-object p0
.end method
