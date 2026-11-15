.class public final Lcom/yandex/mobile/ads/impl/sr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/el2;

.field private final b:Lcom/yandex/mobile/ads/impl/ie2;

.field private final c:Lcom/yandex/mobile/ads/impl/t40;

.field private final d:Lcom/yandex/mobile/ads/impl/tz1;

.field private final e:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/ew0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/mi0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/mobile/ads/impl/cl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 10

    .line 1
    new-instance v1, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    .line 2
    new-instance v2, Lcom/yandex/mobile/ads/impl/ie2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ie2;-><init>()V

    .line 3
    new-instance v3, Lcom/yandex/mobile/ads/impl/t40;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/t40;-><init>()V

    .line 4
    new-instance v4, Lcom/yandex/mobile/ads/impl/tz1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/tz1;-><init>()V

    .line 5
    new-instance v5, Lcom/yandex/mobile/ads/impl/cl2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/gw0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gw0;-><init>()V

    const-string v6, "MediaFiles"

    const-string v7, "MediaFile"

    invoke-direct {v5, v0, v6, v7}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lcom/yandex/mobile/ads/impl/cl2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ni0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ni0;-><init>()V

    const-string v7, "Icons"

    const-string v8, "Icon"

    invoke-direct {v6, v0, v7, v8}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v7, Lcom/yandex/mobile/ads/impl/cl2;

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/m62;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/m62;-><init>()V

    .line 9
    const-string v8, "TrackingEvents"

    const-string v9, "Tracking"

    invoke-direct {v7, v0, v8, v9}, Lcom/yandex/mobile/ads/impl/cl2;-><init>(Lcom/yandex/mobile/ads/impl/dl2;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/sr0;-><init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/ie2;Lcom/yandex/mobile/ads/impl/t40;Lcom/yandex/mobile/ads/impl/tz1;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/el2;Lcom/yandex/mobile/ads/impl/ie2;Lcom/yandex/mobile/ads/impl/t40;Lcom/yandex/mobile/ads/impl/tz1;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;Lcom/yandex/mobile/ads/impl/cl2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/el2;",
            "Lcom/yandex/mobile/ads/impl/ie2;",
            "Lcom/yandex/mobile/ads/impl/t40;",
            "Lcom/yandex/mobile/ads/impl/tz1;",
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/ew0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/mi0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/cl2<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;)V"
        }
    .end annotation

    .line 11
    const-string v0, "xmlHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoClicksParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durationParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipOffsetParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaFileArrayParser"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconArrayParser"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingEventsArrayParser"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    .line 14
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sr0;->b:Lcom/yandex/mobile/ads/impl/ie2;

    .line 15
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sr0;->c:Lcom/yandex/mobile/ads/impl/t40;

    .line 16
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sr0;->d:Lcom/yandex/mobile/ads/impl/tz1;

    .line 17
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/sr0;->e:Lcom/yandex/mobile/ads/impl/cl2;

    .line 18
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sr0;->f:Lcom/yandex/mobile/ads/impl/cl2;

    .line 19
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/sr0;->g:Lcom/yandex/mobile/ads/impl/cl2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/uu$a;Lcom/yandex/mobile/ads/impl/xj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creativeBuilder"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "base64EncodingParameters"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Linear"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sr0;->d:Lcom/yandex/mobile/ads/impl/tz1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipoffset"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/yandex/mobile/ads/impl/sz1;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/sz1;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Lcom/yandex/mobile/ads/impl/sz1;)Lcom/yandex/mobile/ads/impl/uu$a;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->g:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/l62;

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Lcom/yandex/mobile/ads/impl/l62;)V

    goto :goto_2

    :sswitch_1
    const-string v1, "Icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->f:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/uu$a;

    goto :goto_1

    :sswitch_2
    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->e:Lcom/yandex/mobile/ads/impl/cl2;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/cl2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/uu$a;->b(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/uu$a;

    goto :goto_1

    :sswitch_3
    const-string v1, "AdParameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->c:Lcom/yandex/mobile/ads/impl/t40;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/t40;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/uu$a;->a(I)Lcom/yandex/mobile/ads/impl/uu$a;

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->b:Lcom/yandex/mobile/ads/impl/ie2;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/ie2;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/he2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/he2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/uu$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/uu$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/he2;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/yandex/mobile/ads/impl/l62;

    const-string v4, "clickTracking"

    invoke-direct {v3, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/l62;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/na2;)V

    invoke-virtual {p2, v3}, Lcom/yandex/mobile/ads/impl/uu$a;->a(Lcom/yandex/mobile/ads/impl/l62;)V

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr0;->a:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_5
        -0x72e14e4c -> :sswitch_4
        -0x50659173 -> :sswitch_3
        -0x16f37aed -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method
