.class public final Lcom/yandex/mobile/ads/impl/ni0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dl2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dl2<",
        "Lcom/yandex/mobile/ads/impl/mi0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ni0;-><init>(Lcom/yandex/mobile/ads/impl/el2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/el2;)V
    .locals 1

    .line 3
    const-string v0, "xmlHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/lang/Object;
    .locals 13

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    const-string v2, "Icon"

    invoke-interface {p1, p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/mi0$a;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/mi0$a;-><init>()V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v3, "program"

    const-string v4, "attributeName"

    invoke-static {v2, p1, v0, v3, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v5, "height"

    invoke-static {v3, p1, v0, v5, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v6, "width"

    invoke-static {v5, p1, v0, v6, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v7, "xPosition"

    invoke-static {v6, p1, v0, v7, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v8, "yPosition"

    invoke-static {v7, p1, v0, v8, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v9, "apiFramework"

    invoke-static {v8, p1, v0, v9, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v10, "offset"

    invoke-static {v9, p1, v0, v10, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    const-string v11, "duration"

    invoke-static {v10, p1, v0, v11, v4}, Lcom/yandex/mobile/ads/impl/av;->a(Lcom/yandex/mobile/ads/impl/el2;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/yandex/mobile/ads/impl/mi0$c;->c:Lcom/yandex/mobile/ads/impl/mi0$c$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/mi0$c;->values()[Lcom/yandex/mobile/ads/impl/mi0$c;

    move-result-object v4

    array-length v10, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v4, v11

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/mi0$c;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/mi0$a;->g(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/mi0$a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ni0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Lcom/yandex/mobile/ads/impl/mi0$a;->f(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/mi0$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/yandex/mobile/ads/impl/mi0$a;->j(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/yandex/mobile/ads/impl/mi0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/yandex/mobile/ads/impl/mi0$a;->i(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/yandex/mobile/ads/impl/mi0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/yandex/mobile/ads/impl/mi0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/mi0$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mi0$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mi0$a;->a()Lcom/yandex/mobile/ads/impl/mi0;

    move-result-object p0

    return-object p0
.end method
