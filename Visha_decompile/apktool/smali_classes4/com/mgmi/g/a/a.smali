.class public final Lcom/mgmi/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcom/mgmi/model/VASTChannelAd;

.field private B:Lcom/mgmi/model/HeadInfo;

.field private C:Ljava/lang/Throwable;

.field private a:Lcom/mgmi/model/r;

.field private b:Lcom/mgmi/model/VASTAd;

.field private c:Lcom/mgmi/model/VASTAd;

.field private d:Lcom/mgmi/model/IncentiveVastAd;

.field private e:Lcom/mgmi/model/VASTFloatAd;

.field private f:Lcom/mgmi/model/VASTBarrageAd;

.field private g:Lcom/mgmi/model/Clicks;

.field private h:Lcom/mgmi/model/Clicks;

.field private i:Lcom/mgmi/model/VASTStaticResource;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mgmi/model/o;

.field private l:Lcom/mgmi/model/p;

.field private m:Lcom/mgmi/model/a;

.field private n:Lcom/mgmi/model/u;

.field private o:Lcom/mgmi/model/b;

.field private p:Lcom/mgmi/model/h;

.field private q:Lcom/mgmi/model/c;

.field private r:Lcom/mgmi/model/g;

.field private s:Lcom/mgmi/model/i;

.field private t:Lcom/mgmi/model/t;

.field private u:Le9d;

.field private v:Lcom/mgmi/model/i;

.field private w:Lcom/mgmi/model/d;

.field private x:Lcom/mgmi/model/e;

.field private y:Lcom/mgmi/model/k;

.field private z:Lcom/mgmi/model/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;Lorg/xmlpull/v1/XmlPullParser;)Lcom/mgmi/model/VASTAd;
    .locals 11

    .line 1129
    const-string p0, "pre_play"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1130
    const-string v1, "show_type"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    const-string v2, "req_type"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1132
    const-string v3, "extra_type"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    const-string v4, "back_btn"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1134
    const-string v5, "voice_btn"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1135
    const-string v6, "clk_btn"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1136
    const-string v7, "clk_area"

    invoke-interface {p2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1137
    const-string v8, "msg_box"

    invoke-interface {p2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1138
    const-string v9, "dao_time"

    invoke-interface {p2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1139
    const-string v10, "imp_tp"

    invoke-interface {p2, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1140
    invoke-static {p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setPre_play(I)V

    .line 1141
    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setShow_type(I)V

    .line 1142
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setReq_type(I)V

    .line 1143
    invoke-virtual {p1, v3}, Lcom/mgmi/model/VASTAd;->setExtra_type(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1144
    invoke-static {v4, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->setBack_btn(I)V

    .line 1145
    invoke-static {v5, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->setVoice_btn(I)V

    const/4 v0, 0x1

    .line 1146
    invoke-static {v6, v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setClk_btn(I)V

    .line 1147
    invoke-static {v7, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setClk_area(I)V

    .line 1148
    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setMsg_box(I)V

    .line 1149
    invoke-static {v9, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setDaoTime(I)V

    .line 1150
    invoke-static {p2, v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setImp_tp(I)V

    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mgmi/model/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/mgmi/model/r;

    invoke-direct {v0}, Lcom/mgmi/model/r;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mgmi/g/a/a;->c(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    return-object p0
.end method

.method private a(Lcom/mgmi/platform/view/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgmi/platform/view/a;
    .locals 0

    .line 1125
    invoke-static {p2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/platform/view/a;->d(I)V

    .line 1126
    invoke-static {p3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/platform/view/a;->e(I)V

    const/4 p0, 0x0

    .line 1127
    invoke-static {p4, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/platform/view/a;->f(I)V

    const/4 p0, 0x1

    .line 1128
    invoke-static {p5, p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgmi/platform/view/a;->g(I)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1169
    invoke-static {p1, p2}, Lwrd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/mgmi/g/a/a;Lcom/mgmi/model/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/g/a/a;->b(Lcom/mgmi/model/o;)V

    return-void
.end method

.method private a(Lcom/mgmi/model/k;)V
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCommonPlusList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1152
    invoke-virtual {p1}, Lcom/mgmi/model/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1153
    iget-object p0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCommonPlusList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/e;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/mgmi/model/e;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/mgmi/model/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1155
    invoke-virtual {p1, v0}, Lcom/mgmi/model/k;->a(Lcom/mgmi/model/e;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/mgmi/model/o;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1156
    iget-object v0, p1, Lcom/mgmi/model/o;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1157
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object v0

    new-instance v1, Lcom/mgmi/g/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/mgmi/g/a/a$1;-><init>(Lcom/mgmi/g/a/a;Lcom/mgmi/model/o;)V

    invoke-virtual {v0, v1}, Li4d;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 17
    invoke-direct/range {p0 .. p2}, Lcom/mgmi/g/a/a;->b(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 18
    const-string v2, "Ad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "type"

    const-string v6, "close"

    const-string v8, "skip"

    const/4 v11, 0x0

    if-eqz v2, :cond_1e

    .line 19
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 20
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/r;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {v7, v1}, Lcom/mgmi/g/a/a;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {v7, v1}, Lcom/mgmi/g/a/a;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-interface {v1, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v0, "clk_macro"

    invoke-interface {v1, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v5, "bid"

    invoke-interface {v1, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-interface {v1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    const-string v8, "hideLog"

    invoke-interface {v1, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 28
    const-string v13, "tkid"

    invoke-interface {v1, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 29
    const-string v14, "id"

    invoke-interface {v1, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 30
    const-string v15, "ad_timer"

    invoke-interface {v1, v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 31
    const-string v3, "dao_time"

    invoke-interface {v1, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v4, "landAdLog"

    invoke-interface {v1, v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    const-string v10, "tkct"

    invoke-interface {v1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    const-string v9, "clk_trac_macro"

    invoke-interface {v1, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p1, v9

    .line 35
    const-string v9, "clk_trac_value"

    invoke-interface {v1, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    .line 36
    const-string v9, "self_render"

    invoke-interface {v1, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, -0x1

    invoke-static {v9, v11}, Lqyd;->a(Ljava/lang/String;I)I

    move-result v9

    .line 37
    const-string v11, "mk"

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-interface {v1, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, -0x1

    invoke-static {v11, v13}, Lqyd;->a(Ljava/lang/String;I)I

    move-result v11

    .line 38
    const-string v13, "front"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move/from16 v18, v11

    const-string v11, "expire"

    move/from16 v19, v9

    const-string v9, "adstyle"

    if-nez v13, :cond_2

    const-string v13, "pause"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "progress"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v20, v12

    goto/16 :goto_b

    .line 39
    :cond_3
    const-string v13, "paster"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v20, v12

    const-string v12, "t"

    if-eqz v13, :cond_a

    iget-object v13, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v13}, Lcom/mgmi/model/r;->o()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 40
    new-instance v3, Lcom/mgmi/model/VASTAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTAd;-><init>()V

    invoke-direct {v7, v3, v1}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/model/VASTAd;Lorg/xmlpull/v1/XmlPullParser;)Lcom/mgmi/model/VASTAd;

    move-result-object v3

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 41
    invoke-static {v10}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mgmi/model/VASTAd;->setTkct(I)V

    const/4 v3, 0x0

    .line 42
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 44
    const-string v10, "vip_show"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    const-string v12, "show_type"

    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v12

    .line 46
    invoke-static {v6}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v13, 0x5

    if-ne v6, v13, :cond_4

    .line 47
    const-string v13, "st_pre"

    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 48
    iget-object v3, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    move-object/from16 v21, v11

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/mgmi/model/r;->c(Z)V

    .line 49
    iget-object v3, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v13}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/mgmi/model/r;->g(I)V

    goto :goto_1

    :cond_4
    move-object/from16 v21, v11

    .line 50
    :goto_1
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3, v6}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 51
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 52
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 53
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setShowAdLog(I)V

    .line 54
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v10}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setVip_show(I)V

    .line 55
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    .line 56
    invoke-virtual {v0, v9}, Lcom/mgmi/model/VASTAd;->setInsertTime(Ljava/lang/String;)V

    .line 57
    iget-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setSkipTimeout(I)V

    .line 58
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x1

    invoke-static {v15, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setAd_timer(I)V

    .line 59
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    const/4 v0, 0x3

    if-ne v0, v12, :cond_5

    .line 60
    const-string v0, "req"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "pre_time"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v4, "show_type"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string v5, "dao_time"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    const-string v6, "imp_tp"

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v2, Lcom/mgmi/platform/view/a;

    invoke-static {v9}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v1

    invoke-static {v14}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v9

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v10, 0x64

    invoke-direct {v2, v10, v1, v9, v0}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/platform/view/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgmi/platform/view/a;

    move-result-object v0

    .line 66
    iget-object v1, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    if-ne v2, v12, :cond_7

    move-object/from16 v11, v21

    const/4 v2, 0x0

    .line 67
    invoke-interface {v1, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 69
    :try_start_0
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mgmi/model/VASTAd;->setExpire(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/model/VASTAd;->setExpire(J)V

    .line 72
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Z)V

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-ne v1, v12, :cond_8

    .line 73
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTAd;)V

    goto :goto_4

    .line 74
    :cond_8
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->b(Lcom/mgmi/model/VASTAd;)V

    :cond_9
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_d

    .line 75
    :cond_a
    const-string v10, "mid"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    const-string v10, "focus"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    const-string v10, "backend"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto/16 :goto_a

    .line 76
    :cond_b
    const-string v3, "reward"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 77
    new-instance v1, Lcom/mgmi/model/IncentiveVastAd;

    invoke-direct {v1}, Lcom/mgmi/model/IncentiveVastAd;-><init>()V

    iput-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 78
    invoke-virtual {v1, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 79
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 80
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 81
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    check-cast v0, Lcom/mgmi/model/IncentiveVastAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->d:Lcom/mgmi/model/IncentiveVastAd;

    .line 82
    iget-object v1, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/IncentiveVastAd;)V

    goto :goto_4

    .line 83
    :cond_c
    const-string v3, "focus-head"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 84
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v10, "req"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    new-instance v3, Lcom/mgmi/platform/view/a;

    invoke-static {v6}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v11

    invoke-static {v14}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x7

    invoke-direct {v3, v13, v11, v12, v10}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 87
    iget-object v10, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v10, v3}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    .line 88
    new-instance v3, Lcom/mgmi/model/VASTAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v3, 0x0

    .line 89
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 91
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 92
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 93
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setShowAdLog(I)V

    .line 94
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 95
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    .line 96
    invoke-virtual {v0, v6}, Lcom/mgmi/model/VASTAd;->setInsertTime(Ljava/lang/String;)V

    .line 97
    iget-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setSkipTimeout(I)V

    .line 98
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->b(Lcom/mgmi/model/VASTAd;)V

    goto/16 :goto_4

    .line 99
    :cond_d
    const-string v3, "float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v10, "bgColor"

    const-string v13, "delay_expose"

    const-string v15, "interact"

    if-nez v3, :cond_17

    const-string v3, "ai_implant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "baike_float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_9

    .line 100
    :cond_e
    const-string v3, "live_float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 101
    new-instance v3, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTFloatAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 102
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 103
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 104
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    const/4 v2, 0x0

    .line 105
    invoke-interface {v1, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setInsertTime(Ljava/lang/String;)V

    .line 106
    invoke-interface {v1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTFloatAd;->setAdStyle(I)V

    .line 108
    invoke-interface {v1, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTFloatAd;->setInteract(Ljava/lang/String;)V

    .line 110
    const-string v0, "joinMethod"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTFloatAd;->setJoinMethod(I)V

    .line 112
    const-string v0, "fixed"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTFloatAd;->setFixed(I)V

    .line 114
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 116
    invoke-interface {v1, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    .line 118
    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTFloatAd;->setDelayRandTime(I)V

    .line 119
    :cond_f
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTFloatAd;)V

    goto/16 :goto_4

    .line 120
    :cond_10
    const-string v3, "rprain_channel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "rprain_video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_8

    .line 121
    :cond_11
    const-string v3, "banner"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "el"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    .line 122
    :cond_13
    const-string v3, "barrage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    new-instance v3, Lcom/mgmi/model/VASTBarrageAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTBarrageAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 124
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 125
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 126
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 127
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    check-cast v0, Lcom/mgmi/model/VASTBarrageAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->f:Lcom/mgmi/model/VASTBarrageAd;

    const/4 v3, 0x0

    .line 128
    invoke-interface {v1, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v2, v7, Lcom/mgmi/g/a/a;->f:Lcom/mgmi/model/VASTBarrageAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTBarrageAd;->setInteract(Ljava/lang/String;)V

    .line 130
    iget-object v0, v7, Lcom/mgmi/g/a/a;->f:Lcom/mgmi/model/VASTBarrageAd;

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4d;->w(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTBarrageAd;->setBgColor(I)V

    .line 131
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, v7, Lcom/mgmi/g/a/a;->f:Lcom/mgmi/model/VASTBarrageAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 133
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->f:Lcom/mgmi/model/VASTBarrageAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTBarrageAd;)V

    goto/16 :goto_4

    .line 134
    :goto_5
    const-string v5, "flow_wifi_state"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    const-string v12, "flow_cellular"

    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 136
    const-string v13, "roll_time"

    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 137
    const-string v15, "clk_area"

    invoke-interface {v1, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 138
    new-instance v3, Lcom/mgmi/model/VASTChannelAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTChannelAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 139
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 140
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 141
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v15}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setClk_area(I)V

    .line 142
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move-object v2, v0

    check-cast v2, Lcom/mgmi/model/VASTChannelAd;

    iput-object v2, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    .line 143
    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setmFlowWifiState(I)V

    .line 144
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v12}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setmFlow_cellular(I)V

    .line 145
    invoke-static {v13}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x5

    .line 146
    :cond_14
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setRoolTime(I)V

    const/4 v2, 0x0

    .line 147
    invoke-interface {v1, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 149
    :try_start_1
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/mgmi/model/VASTAd;->setExpire(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mgmi/model/VASTAd;->setExpire(J)V

    goto :goto_6

    .line 152
    :goto_7
    invoke-interface {v1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    iget-object v5, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 155
    iget-object v0, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    const-string v5, "id"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mgmi/model/VASTChannelAd;->setId(Ljava/lang/String;)V

    .line 156
    iget-object v0, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    invoke-interface {v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg4d;->w(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTChannelAd;->setBgColor(I)V

    .line 157
    iget-object v0, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setClose(I)V

    .line 158
    iget-object v0, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 159
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTChannelAd;)V

    goto/16 :goto_4

    .line 160
    :cond_16
    :goto_8
    new-instance v3, Lcom/mgmi/model/VASTChannelAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTChannelAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 161
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 162
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 163
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    const/4 v2, 0x0

    .line 164
    invoke-interface {v1, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setDelayRand(I)V

    .line 166
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 167
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->A:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTChannelAd;)V

    goto/16 :goto_4

    .line 168
    :cond_17
    :goto_9
    new-instance v3, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTFloatAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 169
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 170
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 171
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    const/4 v2, 0x0

    .line 172
    invoke-interface {v1, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setInsertTime(Ljava/lang/String;)V

    .line 173
    invoke-interface {v1, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mgmi/model/VASTFloatAd;->setAdStyle(I)V

    .line 175
    invoke-interface {v1, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v6, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v6, v3}, Lcom/mgmi/model/VASTFloatAd;->setInteract(Ljava/lang/String;)V

    .line 177
    const-string v3, "joinMethod"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v6, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mgmi/model/VASTFloatAd;->setJoinMethod(I)V

    .line 179
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mgmi/model/VASTAd;->setSkipTimeout(I)V

    .line 180
    const-string v3, "playerUse"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    iget-object v5, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/mgmi/model/VASTFloatAd;->setPlayerUse(I)V

    .line 182
    const-string v3, "fixed"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    iget-object v5, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/mgmi/model/VASTFloatAd;->setFixed(I)V

    .line 184
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-interface {v1, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg4d;->w(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mgmi/model/VASTFloatAd;->setBgColor(I)V

    .line 185
    const-string v3, "ai_plan"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    iget-object v5, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v5, v3}, Lcom/mgmi/model/VASTAd;->setPlanId(Ljava/lang/String;)V

    .line 187
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 188
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 189
    invoke-interface {v1, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_18

    .line 191
    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mgmi/model/VASTFloatAd;->setDelayRandTime(I)V

    .line 192
    :cond_18
    iget-object v1, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v1, v2}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTFloatAd;)V

    .line 193
    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->b()V

    goto/16 :goto_4

    .line 195
    :cond_19
    :goto_a
    new-instance v6, Lcom/mgmi/model/VASTAd;

    invoke-direct {v6}, Lcom/mgmi/model/VASTAd;-><init>()V

    iput-object v6, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v6, 0x0

    .line 196
    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    iget-object v6, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 198
    iget-object v6, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v6, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 199
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 200
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setShowAdLog(I)V

    .line 201
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    iput-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    .line 202
    invoke-interface {v1, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setInsertTime(Ljava/lang/String;)V

    .line 203
    iget-object v0, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setSkipTimeout(I)V

    .line 204
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v15}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setAd_timer(I)V

    .line 205
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setDaoTime(I)V

    .line 206
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 207
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->b(Lcom/mgmi/model/VASTAd;)V

    goto/16 :goto_4

    .line 208
    :goto_b
    new-instance v3, Lcom/mgmi/model/VASTAd;

    invoke-direct {v3}, Lcom/mgmi/model/VASTAd;-><init>()V

    iput-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 209
    invoke-virtual {v3, v2}, Lcom/mgmi/model/VASTAd;->setmAdtype(Ljava/lang/String;)V

    .line 210
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTAd;->setClk_macro(Ljava/lang/String;)V

    .line 211
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setSkipTimeout(I)V

    .line 212
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v10}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setTkct(I)V

    const/4 v3, 0x0

    .line 213
    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 215
    :try_start_2
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/mgmi/model/VASTAd;->setExpire(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/mgmi/model/VASTAd;->setExpire(J)V

    .line 218
    :cond_1a
    :goto_c
    const-string v0, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x0

    .line 219
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v5, "clk_area"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-object v3, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTAd;->setAdStyle(I)V

    .line 222
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setClk_area(I)V

    .line 223
    :cond_1b
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setLandAdLog(I)V

    .line 224
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/model/VASTAd;)V

    .line 225
    const-string v0, "front"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Z)V

    .line 227
    :goto_d
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 228
    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setShowAdLog(I)V

    .line 229
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setBid(Ljava/lang/String;)V

    .line 230
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move/from16 v2, v19

    if-ne v2, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_e

    :cond_1c
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setSelfRender(Z)V

    .line 231
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setTaskId(Ljava/lang/String;)V

    .line 232
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v14}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setVastAid(I)V

    .line 233
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setClk_trac_macro(Ljava/lang/String;)V

    .line 234
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setClk_trac_value(Ljava/lang/String;)V

    .line 235
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    move/from16 v2, v18

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1d

    const/4 v9, 0x1

    goto :goto_f

    :cond_1d
    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v0, v9}, Lcom/mgmi/model/VASTAd;->setMk(Z)V

    goto/16 :goto_1c

    .line 236
    :cond_1e
    const-string v2, "rain_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 237
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 238
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setRainId(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 239
    :cond_1f
    const-string v2, "countdown_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 240
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 241
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setCountDownId(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 242
    :cond_20
    const-string v2, "channel_ids"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 243
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 244
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setChannelId(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 245
    :cond_21
    const-string v2, "nt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 246
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 247
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/model/VASTAd;->setNt(J)V

    goto/16 :goto_1c

    .line 248
    :cond_22
    const-string v2, "ResInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 249
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 250
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 252
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setResInfo(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 253
    :cond_23
    const-string v2, "MgMiniProgramUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 254
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 255
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 257
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setMgMiniProgramUrl(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 258
    :cond_24
    const-string v2, "Impression"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "enc"

    const-string v4, "sdk"

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    .line 259
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 262
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-direct {v7, v1, v2}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_e8

    .line 265
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/VASTAd;->addImpression(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 266
    :cond_25
    const-string v2, "impression"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    .line 267
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 270
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-direct {v7, v1, v2}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v2, :cond_26

    .line 273
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 274
    :cond_26
    iget-object v2, v7, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    if-eqz v2, :cond_27

    .line 275
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_27
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->b()V

    .line 277
    iget-object v2, v7, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-eqz v2, :cond_e8

    .line 278
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 279
    :cond_28
    const-string v2, "NonLinearAds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 280
    new-instance v0, Lcom/mgmi/model/Clicks;

    invoke-direct {v0}, Lcom/mgmi/model/Clicks;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    goto/16 :goto_1c

    .line 281
    :cond_29
    const-string v2, "VoteOption"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 282
    new-instance v0, Lcom/mgmi/model/u;

    invoke-direct {v0}, Lcom/mgmi/model/u;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    .line 283
    iget-object v1, v7, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    if-eqz v1, :cond_e8

    .line 284
    invoke-virtual {v1, v0}, Lcom/mgmi/model/t;->a(Lcom/mgmi/model/u;)V

    goto/16 :goto_1c

    .line 285
    :cond_2a
    const-string v2, "VASTAdTagURI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 286
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 287
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 289
    const-string v1, "sdk://gdt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&"

    const-string v3, "id="

    const-string v4, "style="

    if-eqz v1, :cond_2b

    .line 290
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setOrginTargetURI(Ljava/lang/String;)V

    .line 292
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-string v5, "gdt"

    invoke-virtual {v1, v5}, Lcom/mgmi/model/VASTAd;->setAdFrom(Ljava/lang/String;)V

    .line 293
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/VASTAd;->setVastTargetStyle(Ljava/lang/String;)V

    .line 294
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v3, v2}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVastTargetURI(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 295
    :cond_2b
    const-string v1, "sdk://toutiao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 296
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setOrginTargetURI(Ljava/lang/String;)V

    .line 298
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-string v5, "toutiao"

    invoke-virtual {v1, v5}, Lcom/mgmi/model/VASTAd;->setAdFrom(Ljava/lang/String;)V

    .line 299
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/VASTAd;->setVastTargetStyle(Ljava/lang/String;)V

    .line 300
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v3, v2}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVastTargetURI(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 301
    :cond_2c
    const-string v1, "sdk://hyjy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 302
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setOrginTargetURI(Ljava/lang/String;)V

    .line 304
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-string v5, "hyjy"

    invoke-virtual {v1, v5}, Lcom/mgmi/model/VASTAd;->setAdFrom(Ljava/lang/String;)V

    .line 305
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/VASTAd;->setVastTargetStyle(Ljava/lang/String;)V

    .line 306
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v3, v2}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVastTargetURI(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 307
    :cond_2d
    const-string v1, "sdk://oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 308
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setOrginTargetURI(Ljava/lang/String;)V

    .line 310
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-string v5, "opposdk"

    invoke-virtual {v1, v5}, Lcom/mgmi/model/VASTAd;->setAdFrom(Ljava/lang/String;)V

    .line 311
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/VASTAd;->setVastTargetStyle(Ljava/lang/String;)V

    .line 312
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {v0, v3, v2}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVastTargetURI(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 313
    :cond_2e
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const-string v2, "google"

    invoke-virtual {v1, v2}, Lcom/mgmi/model/VASTAd;->setAdFrom(Ljava/lang/String;)V

    .line 314
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVastTargetURI(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 315
    :cond_2f
    const-string v2, "NonLinear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 316
    new-instance v0, Lcom/mgmi/model/VASTStaticResource;

    invoke-direct {v0}, Lcom/mgmi/model/VASTStaticResource;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    .line 317
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTStaticResource;->setVideoClick(Lcom/mgmi/model/Clicks;)V

    .line 318
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_30

    .line 319
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->addStaticResource(Lcom/mgmi/model/VASTStaticResource;)V

    .line 320
    :cond_30
    const-string v0, "width"

    const/4 v2, 0x0

    .line 321
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 323
    const-string v3, "height"

    .line 324
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    .line 326
    const-string v4, "wratio"

    .line 327
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 328
    invoke-static {v4, v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;F)F

    move-result v4

    .line 329
    const-string v5, "strict"

    .line 330
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 332
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTStaticResource;->setWidth(I)V

    .line 333
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTStaticResource;->setWidth(I)V

    .line 334
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v2, v4}, Lcom/mgmi/model/VASTStaticResource;->setAdWratio(F)V

    .line 335
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v2, v1}, Lcom/mgmi/model/VASTStaticResource;->setAdStrict(I)V

    .line 336
    iget-object v1, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v1, v3}, Lcom/mgmi/model/VASTStaticResource;->setHeight(I)V

    .line 337
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 338
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setWidth(I)V

    .line 339
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTAd;->setHeight(I)V

    goto/16 :goto_1c

    .line 340
    :cond_31
    const-string v2, "Tracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 341
    const-string v0, "event"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 345
    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 347
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-direct {v7, v1, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_e8

    .line 350
    new-instance v2, Lcom/mgmi/net/bean/c;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0, v1}, Lcom/mgmi/net/bean/c;-><init>(ILjava/lang/String;)V

    .line 351
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v4, v2}, Lcom/mgmi/model/VASTAd;->addTrackingEventBean(Ljava/lang/String;Lcom/mgmi/net/bean/c;)V

    goto/16 :goto_1c

    .line 352
    :cond_32
    const-string v2, "click"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 353
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 354
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_33

    .line 357
    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 358
    :cond_33
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_34

    .line 359
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 360
    :cond_34
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 361
    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 362
    :cond_35
    const-string v2, "dlSt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 363
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 364
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_36

    .line 367
    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 368
    :cond_36
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_37

    .line 369
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 370
    :cond_37
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 371
    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 372
    :cond_38
    const-string v2, "dlFin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 373
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 374
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_39

    .line 377
    const-string v2, "dlFin"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 378
    :cond_39
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_3a

    .line 379
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 380
    :cond_3a
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 381
    const-string v2, "dlFin"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 382
    :cond_3b
    const-string v2, "insSt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 383
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 384
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_3c

    .line 387
    const-string v2, "insSt"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 388
    :cond_3c
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_3d

    .line 389
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 390
    :cond_3d
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 391
    const-string v2, "insSt"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 392
    :cond_3e
    const-string v2, "insFin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 393
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 394
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_3f

    .line 397
    const-string v2, "insFin"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 398
    :cond_3f
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_40

    .line 399
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 400
    :cond_40
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 401
    const-string v2, "insFin"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 402
    :cond_41
    const-string v2, "convert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 403
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 404
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_42

    .line 407
    const-string v2, "convert"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 408
    :cond_42
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_43

    .line 409
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 410
    :cond_43
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 411
    const-string v2, "convert"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 412
    :cond_44
    const-string v2, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 413
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 414
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_45

    .line 417
    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 418
    :cond_45
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_46

    .line 419
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 420
    :cond_46
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 421
    const-string v2, "start"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 422
    :cond_47
    const-string v2, "feed_play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 423
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 424
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 427
    const-string v2, "feed_play"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 428
    :cond_48
    const-string v2, "feed_over"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 429
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 430
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 433
    const-string v2, "feed_play"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 434
    :cond_49
    const-string v2, "feed_break"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 435
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 436
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 439
    const-string v2, "feed_break"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 440
    :cond_4a
    const-string v2, "favor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 441
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 442
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_e8

    .line 445
    const-string v2, "favor"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 446
    :cond_4b
    const-string v2, "firstQuartile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 447
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 448
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 451
    const-string v2, "firstQuartile"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 452
    :cond_4c
    const-string v2, "midpoint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 453
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 454
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 457
    const-string v2, "midpoint"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 458
    :cond_4d
    const-string v2, "thirdQuartile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 459
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 460
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 463
    const-string v2, "thirdQuartile"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 464
    :cond_4e
    const-string v2, "complete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 465
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 466
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 469
    const-string v2, "complete"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 470
    :cond_4f
    const-string v2, "err"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 471
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 472
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_50

    .line 475
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->f(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 476
    :cond_50
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 477
    const-string v2, "err"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 478
    :cond_51
    const-string v2, "view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 479
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 480
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 483
    const-string v2, "view"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 484
    :cond_52
    const-string v2, "fb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 485
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 486
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 489
    const-string v2, "fb"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 490
    :cond_53
    const-string v2, "full"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 491
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 492
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 495
    const-string v2, "full"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 496
    :cond_54
    const-string v2, "mute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 497
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 498
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 501
    const-string v2, "mute"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 502
    :cond_55
    const-string v2, "unmute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 503
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 504
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 507
    const-string v2, "unmute"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 508
    :cond_56
    const-string v2, "landClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 509
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 510
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_57

    .line 513
    const-string v2, "landClose"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 514
    :cond_57
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 515
    const-string v2, "landClose"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 516
    :cond_58
    const-string v2, "landClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 517
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 518
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_59

    .line 521
    const-string v2, "landClick"

    invoke-virtual {v1, v2, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 522
    :cond_59
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 523
    const-string v2, "landClick"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 524
    :cond_5a
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 525
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 526
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_5b

    .line 529
    invoke-virtual {v1, v6, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 530
    :cond_5b
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v1, :cond_5c

    .line 531
    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->e(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 532
    :cond_5c
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 533
    invoke-virtual {v1, v4, v6, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 534
    :cond_5d
    const-string v2, "interactTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 535
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 536
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-direct {v7, v0, v3}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 539
    const-string v2, "interactTrace"

    invoke-virtual {v1, v4, v2, v0}, Lcom/mgmi/model/VASTAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 540
    :cond_5e
    const-string v2, "VideoClicks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 541
    new-instance v0, Lcom/mgmi/model/Clicks;

    invoke-direct {v0}, Lcom/mgmi/model/Clicks;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    .line 542
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 543
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVideoClick(Lcom/mgmi/model/Clicks;)V

    goto/16 :goto_1c

    .line 544
    :cond_5f
    const-string v2, "ClickThrough"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    const-string v2, "NonLinearClickThrough"

    .line 545
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto/16 :goto_1b

    .line 546
    :cond_60
    const-string v2, "ClickTracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string v2, "NonLinearClickTracking"

    .line 547
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 548
    :cond_62
    const-string v2, "Entrance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 549
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 550
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 552
    iget-object v1, v7, Lcom/mgmi/g/a/a;->d:Lcom/mgmi/model/IncentiveVastAd;

    if-eqz v1, :cond_e8

    .line 553
    invoke-virtual {v1, v0}, Lcom/mgmi/model/IncentiveVastAd;->setEntryce(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 554
    :cond_63
    const-string v2, "Duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 555
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 556
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 557
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 559
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 560
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e8

    const/4 v1, 0x0

    .line 561
    :try_start_3
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 562
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 563
    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int v10, v1, v0

    goto :goto_11

    :catch_3
    const/4 v10, 0x0

    .line 564
    :goto_11
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v0, :cond_64

    .line 565
    invoke-virtual {v0, v10}, Lcom/mgmi/model/i;->c(I)V

    goto :goto_12

    .line 566
    :cond_64
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    if-gtz v0, :cond_65

    .line 567
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, v10}, Lcom/mgmi/model/VASTAd;->setDuration(I)V

    .line 568
    :cond_65
    :goto_12
    iget-object v0, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v0, :cond_e8

    .line 569
    invoke-virtual {v0, v10}, Lcom/mgmi/model/d;->a(I)V

    goto/16 :goto_1c

    .line 570
    :cond_66
    const-string v2, "MediaFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_67

    .line 571
    new-instance v0, Lcom/mgmi/model/VASTMediaFile;

    invoke-direct {v0}, Lcom/mgmi/model/VASTMediaFile;-><init>()V

    .line 572
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setDuration(I)V

    .line 573
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setVideoClick(Lcom/mgmi/model/Clicks;)V

    .line 574
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    invoke-virtual {v2, v3}, Lcom/mgmi/model/VASTAd;->setVideoClick(Lcom/mgmi/model/Clicks;)V

    .line 575
    const-string v2, "delivery"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setDelivery(Ljava/lang/String;)V

    .line 576
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setType(Ljava/lang/String;)V

    .line 577
    const-string v2, "width"

    .line 578
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setWidth(Ljava/math/BigInteger;)V

    .line 580
    const-string v2, "height"

    .line 581
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTMediaFile;->setHeight(Ljava/math/BigInteger;)V

    .line 583
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 584
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTMediaFile;->setValue(Ljava/lang/String;)V

    .line 585
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addMediafile(Lcom/mgmi/model/VASTMediaFile;)V

    goto/16 :goto_1c

    .line 586
    :cond_67
    const-string v2, "StaticResource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 587
    const-string v0, "creativeType"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    const-string v3, "open_way"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 589
    const-string v4, "md5"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v2, :cond_68

    .line 591
    invoke-virtual {v2, v4}, Lcom/mgmi/model/VASTStaticResource;->setMd5(Ljava/lang/String;)V

    .line 592
    :cond_68
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 593
    iget-object v2, v7, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    if-eqz v2, :cond_69

    .line 594
    invoke-virtual {v2, v0}, Lcom/mgmi/model/i;->g(Ljava/lang/String;)V

    .line 595
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 596
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, v7, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->a(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 598
    :cond_69
    iget-object v2, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v2, :cond_6a

    .line 599
    const-string v2, "subType"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    iget-object v3, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/i;->g(Ljava/lang/String;)V

    .line 601
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/i;->j(Ljava/lang/String;)V

    .line 602
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 603
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 604
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->a(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 605
    :cond_6a
    iget-object v2, v7, Lcom/mgmi/g/a/a;->d:Lcom/mgmi/model/IncentiveVastAd;

    if-eqz v2, :cond_6b

    .line 606
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 607
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v1, v7, Lcom/mgmi/g/a/a;->d:Lcom/mgmi/model/IncentiveVastAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/IncentiveVastAd;->setIcon(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 609
    :cond_6b
    iget-object v2, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v2, :cond_6e

    .line 610
    const-string v2, "cWidth"

    const/4 v5, 0x0

    .line 611
    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    .line 613
    const-string v6, "cHeight"

    .line 614
    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v5

    .line 616
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 617
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 618
    iget-object v6, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v6}, Lcom/mgmi/model/d;->h()Ljava/lang/String;

    move-result-object v6

    const-string v8, "zip_online"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 619
    iget-object v6, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v6, v1}, Lcom/mgmi/model/d;->k(Ljava/lang/String;)V

    goto :goto_13

    .line 620
    :cond_6c
    iget-object v6, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v6}, Lcom/mgmi/model/d;->h()Ljava/lang/String;

    move-result-object v6

    const-string v8, "implant_img"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 621
    iget-object v6, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v6, v1}, Lcom/mgmi/model/d;->l(Ljava/lang/String;)V

    goto :goto_13

    .line 622
    :cond_6d
    iget-object v6, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v6, v1}, Lcom/mgmi/model/d;->g(Ljava/lang/String;)V

    .line 623
    :goto_13
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    iput-object v4, v1, Lcom/mgmi/model/d;->a:Ljava/lang/String;

    .line 624
    invoke-virtual {v1, v2}, Lcom/mgmi/model/d;->b(I)V

    .line 625
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v1, v5}, Lcom/mgmi/model/d;->c(I)V

    .line 626
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->b(Ljava/lang/String;)V

    .line 627
    iget-object v0, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-static {v3}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/d;->g(I)V

    goto/16 :goto_1c

    .line 628
    :cond_6e
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v2, :cond_6f

    .line 629
    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTStaticResource;->setType(Ljava/lang/String;)V

    .line 630
    :cond_6f
    const-string v0, "style"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    iget-object v3, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v3, :cond_70

    .line 632
    invoke-virtual {v3, v0}, Lcom/mgmi/model/VASTStaticResource;->setStyle(Ljava/lang/String;)V

    .line 633
    :cond_70
    const-string v0, "cid"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v2, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v2, :cond_71

    .line 635
    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTStaticResource;->setCid(Ljava/lang/String;)V

    .line 636
    :cond_71
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 637
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v1, v7, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v1, :cond_e8

    .line 639
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTStaticResource;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 640
    :cond_72
    const-string v2, "Desc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 641
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 642
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_73

    .line 644
    invoke-virtual {v1, v0}, Le9d;->d(Ljava/lang/String;)Le9d;

    goto/16 :goto_1c

    .line 645
    :cond_73
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_74

    .line 646
    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->f(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 647
    :cond_74
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 648
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setDiscription(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 649
    :cond_75
    const-string v2, "Type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 650
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 651
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_e8

    .line 653
    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Le9d;->b(I)Le9d;

    goto/16 :goto_1c

    .line 654
    :cond_76
    const-string v2, "CurrentPrice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 655
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 656
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_e8

    .line 658
    invoke-virtual {v1, v0}, Le9d;->h(Ljava/lang/String;)Le9d;

    goto/16 :goto_1c

    .line 659
    :cond_77
    const-string v2, "Color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 660
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 661
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, v7, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    if-eqz v1, :cond_78

    .line 663
    invoke-virtual {v1, v0}, Lcom/mgmi/model/t;->c(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 664
    :cond_78
    iget-object v1, v7, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    if-eqz v1, :cond_e8

    .line 665
    invoke-virtual {v1, v0}, Lcom/mgmi/model/b;->c(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 666
    :cond_79
    const-string v2, "ButtonDesc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 667
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 668
    iget-object v0, v7, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    if-eqz v0, :cond_e8

    .line 669
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/b;->b(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 670
    :cond_7a
    const-string v2, "Image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 671
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 672
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 673
    iget-object v1, v7, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    if-eqz v1, :cond_e8

    .line 674
    invoke-virtual {v1, v0}, Lcom/mgmi/model/u;->c(Ljava/lang/String;)Lcom/mgmi/model/u;

    goto/16 :goto_1c

    .line 675
    :cond_7b
    const-string v2, "Counter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 676
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 677
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v1, v7, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    if-eqz v1, :cond_e8

    const/4 v2, 0x1

    .line 679
    invoke-static {v0, v2}, Lqyd;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/u;->a(I)Lcom/mgmi/model/u;

    goto/16 :goto_1c

    :cond_7c
    const/4 v2, 0x1

    .line 680
    const-string v3, "VoteUri"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 681
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 682
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 683
    iget-object v1, v7, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    if-eqz v1, :cond_e8

    .line 684
    invoke-virtual {v1, v0}, Lcom/mgmi/model/u;->d(Ljava/lang/String;)Lcom/mgmi/model/u;

    goto/16 :goto_1c

    .line 685
    :cond_7d
    const-string v3, "Icon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 686
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 687
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, v7, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    if-eqz v1, :cond_e8

    .line 689
    invoke-virtual {v1, v0}, Lcom/mgmi/model/t;->b(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 690
    :cond_7e
    const-string v3, "ButtonTitle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 691
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 692
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 693
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_7f

    .line 694
    invoke-virtual {v1, v0}, Le9d;->j(Ljava/lang/String;)Le9d;

    goto/16 :goto_1c

    .line 695
    :cond_7f
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_e8

    .line 696
    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->e(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 697
    :cond_80
    const-string v3, "MainImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 698
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 699
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_e8

    .line 701
    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->g(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 702
    :cond_81
    const-string v3, "HideButton"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 703
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 704
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_e8

    .line 706
    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->d(I)V

    goto/16 :goto_1c

    .line 707
    :cond_82
    const-string v3, "SubImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 708
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 709
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 710
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_e8

    .line 711
    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->h(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 712
    :cond_83
    const-string v3, "Advertiser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 713
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 714
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 715
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 716
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setAdOrigin(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 717
    :cond_84
    const-string v3, "Banner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 718
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 719
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 720
    iget-object v1, v7, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    if-eqz v1, :cond_e8

    .line 721
    invoke-virtual {v1, v0}, Lcom/mgmi/model/t;->d(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 722
    :cond_85
    const-string v3, "HistoryPrice"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 723
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 724
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_e8

    .line 726
    invoke-virtual {v1, v0}, Le9d;->f(Ljava/lang/String;)Le9d;

    goto/16 :goto_1c

    .line 727
    :cond_86
    const-string v3, "Content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 728
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 729
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 730
    iget-object v1, v7, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    if-eqz v1, :cond_e8

    .line 731
    invoke-virtual {v1, v0}, Lcom/mgmi/model/u;->a(Ljava/lang/String;)Lcom/mgmi/model/u;

    goto/16 :goto_1c

    .line 732
    :cond_87
    const-string v3, "Button"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 733
    iget-object v0, v7, Lcom/mgmi/g/a/a;->z:Lcom/mgmi/model/s;

    if-nez v0, :cond_e8

    .line 734
    new-instance v0, Lcom/mgmi/model/s;

    invoke-direct {v0}, Lcom/mgmi/model/s;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->z:Lcom/mgmi/model/s;

    .line 735
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 736
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setButtonObject(Lcom/mgmi/model/s;)V

    goto/16 :goto_1c

    .line 737
    :cond_88
    const-string v3, "TextPos"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 738
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 739
    iget-object v0, v7, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    if-eqz v0, :cond_e8

    .line 740
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/b;->a(I)V

    goto/16 :goto_1c

    .line 741
    :cond_89
    const-string v3, "MultiChoose"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 742
    new-instance v0, Lcom/mgmi/model/k;

    invoke-direct {v0}, Lcom/mgmi/model/k;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->y:Lcom/mgmi/model/k;

    .line 743
    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v1, :cond_e8

    .line 744
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTFloatAd;->addMultiChooseEntry(Lcom/mgmi/model/k;)V

    goto/16 :goto_1c

    .line 745
    :cond_8a
    const-string v3, "Title"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 746
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 747
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 748
    iget-object v1, v7, Lcom/mgmi/g/a/a;->y:Lcom/mgmi/model/k;

    if-eqz v1, :cond_8b

    .line 749
    invoke-virtual {v1, v0}, Lcom/mgmi/model/k;->b(Ljava/lang/String;)V

    goto :goto_14

    .line 750
    :cond_8b
    iget-object v1, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    if-eqz v1, :cond_8c

    .line 751
    invoke-virtual {v1, v0}, Le9d;->c(Ljava/lang/String;)Le9d;

    goto :goto_14

    .line 752
    :cond_8c
    iget-object v1, v7, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    if-eqz v1, :cond_8d

    .line 753
    invoke-virtual {v1, v0}, Lcom/mgmi/model/t;->a(Ljava/lang/String;)V

    goto :goto_14

    .line 754
    :cond_8d
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v1, :cond_8e

    .line 755
    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->d(Ljava/lang/String;)V

    goto :goto_14

    .line 756
    :cond_8e
    iget-object v1, v7, Lcom/mgmi/g/a/a;->z:Lcom/mgmi/model/s;

    if-eqz v1, :cond_8f

    .line 757
    invoke-virtual {v1, v0}, Lcom/mgmi/model/s;->a(Ljava/lang/String;)V

    goto :goto_14

    .line 758
    :cond_8f
    iget-object v1, v7, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    if-eqz v1, :cond_90

    .line 759
    invoke-virtual {v1, v0}, Lcom/mgmi/model/b;->a(Ljava/lang/String;)V

    goto :goto_14

    .line 760
    :cond_90
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_91

    .line 761
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setTitle(Ljava/lang/String;)V

    .line 762
    :cond_91
    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->b()V

    .line 763
    iget-object v1, v7, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-eqz v1, :cond_e8

    .line 764
    iput-object v0, v1, Lcom/mgmi/model/h;->g:Ljava/lang/String;

    goto/16 :goto_1c

    .line 765
    :cond_92
    const-string v3, "AdSlotId"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 766
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 767
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 768
    iget-object v1, v7, Lcom/mgmi/g/a/a;->y:Lcom/mgmi/model/k;

    if-eqz v1, :cond_e8

    .line 769
    invoke-virtual {v1, v0}, Lcom/mgmi/model/k;->a(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 770
    :cond_93
    const-string v3, "Error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 771
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 772
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 773
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 774
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addError(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 775
    :cond_94
    const-string v3, "Trace"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 776
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 777
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 778
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 779
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addTraceCheck(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 780
    :cond_95
    const-string v3, "AdLost"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 781
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 782
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 783
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 784
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setAdlosturl(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 785
    :cond_96
    const-string v3, "CreativeNetTimeout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 786
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 787
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 788
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 789
    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->b(I)V

    goto/16 :goto_1c

    .line 790
    :cond_97
    const-string v3, "show_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 791
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 792
    iget-object v0, v7, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-eqz v0, :cond_e8

    .line 793
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mgmi/model/h;->h:I

    goto/16 :goto_1c

    .line 794
    :cond_98
    const-string v3, "BgImg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 795
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_1c

    .line 796
    :cond_99
    const-string v3, "SelHeadImg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 797
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_1c

    .line 798
    :cond_9a
    const-string v3, "SelHeadColor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 799
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_1c

    .line 800
    :cond_9b
    const-string v3, "title_color"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 801
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 802
    iget-object v0, v7, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-eqz v0, :cond_e8

    .line 803
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/c;->a:Ljava/lang/String;

    goto/16 :goto_1c

    .line 804
    :cond_9c
    const-string v3, "title_bgcolor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 805
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 806
    iget-object v0, v7, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-eqz v0, :cond_e8

    .line 807
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/c;->b:Ljava/lang/String;

    goto/16 :goto_1c

    .line 808
    :cond_9d
    const-string v3, "desc_color"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 809
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 810
    iget-object v0, v7, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-eqz v0, :cond_e8

    .line 811
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/c;->c:Ljava/lang/String;

    goto/16 :goto_1c

    .line 812
    :cond_9e
    const-string v3, "desc_bgcolor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 813
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 814
    iget-object v0, v7, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-eqz v0, :cond_e8

    .line 815
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/c;->d:Ljava/lang/String;

    goto/16 :goto_1c

    .line 816
    :cond_9f
    const-string v3, "caption_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 817
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 818
    iget-object v0, v7, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-eqz v0, :cond_e8

    .line 819
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/c;->e:Ljava/lang/String;

    goto/16 :goto_1c

    .line 820
    :cond_a0
    const-string v3, "unfold_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 821
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 822
    iget-object v0, v7, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-eqz v0, :cond_e8

    .line 823
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mgmi/model/g;->a:I

    goto/16 :goto_1c

    .line 824
    :cond_a1
    const-string v3, "expand_count"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 825
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 826
    iget-object v0, v7, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-eqz v0, :cond_e8

    .line 827
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mgmi/model/g;->b:I

    goto/16 :goto_1c

    .line 828
    :cond_a2
    const-string v3, "expand_day"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 829
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 830
    iget-object v0, v7, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-eqz v0, :cond_e8

    .line 831
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mgmi/model/g;->c:I

    goto/16 :goto_1c

    .line 832
    :cond_a3
    const-string v3, "bg_img"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 833
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 834
    iget-object v0, v7, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-eqz v0, :cond_e8

    .line 835
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/g;->d:Ljava/lang/String;

    goto/16 :goto_1c

    .line 836
    :cond_a4
    const-string v3, "bg_color"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 837
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 838
    iget-object v0, v7, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-eqz v0, :cond_e8

    .line 839
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/model/g;->e:Ljava/lang/String;

    goto/16 :goto_1c

    .line 840
    :cond_a5
    const-string v3, "BackUpResources"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 841
    new-instance v0, Lcom/mgmi/model/o;

    invoke-direct {v0}, Lcom/mgmi/model/o;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->k:Lcom/mgmi/model/o;

    goto/16 :goto_1c

    .line 842
    :cond_a6
    const-string v3, "Resource"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 843
    new-instance v0, Lcom/mgmi/model/p;

    invoke-direct {v0}, Lcom/mgmi/model/p;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    .line 844
    iget-object v1, v7, Lcom/mgmi/g/a/a;->k:Lcom/mgmi/model/o;

    if-eqz v1, :cond_e8

    .line 845
    invoke-virtual {v1, v0}, Lcom/mgmi/model/o;->a(Lcom/mgmi/model/p;)V

    goto/16 :goto_1c

    .line 846
    :cond_a7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 847
    iget-object v0, v7, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    if-eqz v0, :cond_e8

    .line 848
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 849
    iget-object v0, v7, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/p;->a(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 850
    :cond_a8
    const-string v3, "url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 851
    iget-object v0, v7, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    if-eqz v0, :cond_e8

    .line 852
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 853
    iget-object v0, v7, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/p;->b(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 854
    :cond_a9
    const-string v3, "MidRollPreTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 855
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 856
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 857
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 858
    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->c(I)V

    goto/16 :goto_1c

    .line 859
    :cond_aa
    const-string v3, "PauseRollTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 860
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 861
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 862
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 863
    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->d(I)V

    goto/16 :goto_1c

    .line 864
    :cond_ab
    const-string v3, "VipNoAd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 865
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 866
    iget-object v0, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 867
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    .line 868
    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(I)V

    goto/16 :goto_1c

    .line 869
    :cond_ac
    const-string v3, "Position"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    const/4 v3, 0x0

    .line 870
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    const-string v4, "rleft"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 872
    const-string v5, "rright"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 873
    const-string v6, "rtop"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 874
    const-string v8, "rbottom"

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 875
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->isHasPosition()Z

    move-result v3

    if-nez v3, :cond_e8

    .line 876
    iget-object v3, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getNt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_af

    .line 877
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    goto :goto_15

    :cond_ad
    const/4 v9, 0x0

    goto :goto_16

    :cond_ae
    :goto_15
    move v9, v2

    .line 878
    :goto_16
    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v2, v9}, Lcom/mgmi/model/VASTAd;->setHasPosition(Z)V

    .line 879
    :cond_af
    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTFloatAd;->setClose(I)V

    .line 880
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v4, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTFloatAd;->setLeft(F)V

    .line 881
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v5, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTFloatAd;->setRight(F)V

    .line 882
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v6, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTFloatAd;->setTop(F)V

    .line 883
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v1, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTFloatAd;->setBottom(F)V

    goto/16 :goto_1c

    .line 884
    :cond_b0
    const-string v2, "ReportUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_b1

    .line 885
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 886
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->setReportUrl(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 887
    :cond_b1
    const-string v2, "RollTime"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object v2, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v2, :cond_b2

    .line 888
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 889
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 890
    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTFloatAd;->setRolltime(I)V

    goto/16 :goto_1c

    .line 891
    :cond_b2
    const-string v2, "Skippbility"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 892
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 893
    invoke-interface {v1, v8, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v2, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mgmi/model/r;->e(I)V

    .line 895
    const-string v0, "skipafter"

    const-string v2, "skipafter"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v1, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->f(I)V

    goto/16 :goto_1c

    .line 897
    :cond_b3
    const-string v2, "Companion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 898
    invoke-direct {v7, v1}, Lcom/mgmi/g/a/a;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c

    .line 899
    :cond_b4
    const-string v2, "InnerFeed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->b()V

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->d()V

    goto/16 :goto_1c

    .line 902
    :cond_b5
    const-string v2, "StarInfoJson"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 903
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 904
    iget-object v0, v7, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-eqz v0, :cond_e8

    .line 905
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/h;->m(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 906
    :cond_b6
    const-string v2, "Caption"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->c()V

    goto/16 :goto_1c

    .line 908
    :cond_b7
    const-string v2, "ECommerce"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 909
    new-instance v0, Le9d;

    invoke-direct {v0}, Le9d;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->u:Le9d;

    .line 910
    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v1, :cond_e8

    .line 911
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTFloatAd;->setECommerce(Le9d;)V

    goto/16 :goto_1c

    .line 912
    :cond_b8
    const-string v2, "Vote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    const-string v2, "VoteNative"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    goto/16 :goto_19

    .line 913
    :cond_b9
    const-string v2, "AiFollow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 914
    new-instance v0, Lcom/mgmi/model/b;

    invoke-direct {v0}, Lcom/mgmi/model/b;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    .line 915
    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v1, :cond_e8

    .line 916
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTFloatAd;->setAiFollow(Lcom/mgmi/model/b;)V

    goto/16 :goto_1c

    .line 917
    :cond_ba
    const-string v2, "Native"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 918
    new-instance v0, Lcom/mgmi/model/d;

    invoke-direct {v0}, Lcom/mgmi/model/d;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 919
    iget-object v1, v7, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    if-eqz v1, :cond_bb

    .line 920
    invoke-virtual {v1, v0}, Lcom/mgmi/model/e;->a(Lcom/mgmi/model/d;)V

    goto/16 :goto_1c

    .line 921
    :cond_bb
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 922
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    goto/16 :goto_1c

    .line 923
    :cond_bc
    const-string v2, "CompanionClickThrough"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 924
    const-string v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string v3, "action"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    const-string v4, "confirm"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 928
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 929
    iget-object v4, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v4, :cond_bd

    .line 930
    invoke-virtual {v4, v3}, Lcom/mgmi/model/d;->a(Ljava/lang/String;)V

    .line 931
    iget-object v3, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v3, v1}, Lcom/mgmi/model/d;->i(Ljava/lang/String;)V

    .line 932
    iget-object v3, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mgmi/model/d;->e(I)V

    .line 933
    iget-object v0, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgmi/model/d;->f(I)V

    .line 934
    new-instance v0, Lcom/mgmi/model/Clicks;

    invoke-direct {v0}, Lcom/mgmi/model/Clicks;-><init>()V

    .line 935
    invoke-virtual {v0, v1}, Lcom/mgmi/model/Clicks;->setClickThrough(Ljava/lang/String;)V

    .line 936
    invoke-static {v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/Clicks;->setSchemeNoticeConfirm(I)V

    .line 937
    iget-object v1, v7, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/d;->b(Lcom/mgmi/model/Clicks;)V

    goto/16 :goto_1c

    .line 938
    :cond_bd
    iget-object v2, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v2, :cond_e8

    .line 939
    invoke-virtual {v2, v0}, Lcom/mgmi/model/i;->i(Ljava/lang/String;)V

    .line 940
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->h(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 941
    :cond_be
    const-string v2, "Options"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 942
    new-instance v0, Lcom/mgmi/model/a;

    invoke-direct {v0}, Lcom/mgmi/model/a;-><init>()V

    iput-object v0, v7, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    .line 943
    const-string v0, "name"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v3, v7, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    invoke-virtual {v3, v0}, Lcom/mgmi/model/a;->b(Ljava/lang/String;)V

    .line 945
    const-string v0, "avatar"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    iget-object v1, v7, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/a;->c(Ljava/lang/String;)V

    .line 947
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_e8

    .line 948
    iget-object v1, v7, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTFloatAd;->setAdOptionMessage(Lcom/mgmi/model/a;)V

    goto/16 :goto_1c

    .line 949
    :cond_bf
    const-string v2, "Option"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 950
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_e8

    .line 951
    const-string v0, "content"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    iget-object v1, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTFloatAd;->addOptionMenu(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_c0
    const/4 v2, 0x0

    .line 953
    const-string v3, "Message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 954
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    new-instance v3, Ll2d;

    invoke-direct {v3, v0}, Ll2d;-><init>(Ljava/lang/String;)V

    .line 956
    const-string v0, "name"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    invoke-virtual {v3, v0}, Ll2d;->a(Ljava/lang/String;)Ll2d;

    .line 958
    const-string v0, "avatar"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {v3, v0}, Ll2d;->c(Ljava/lang/String;)Ll2d;

    .line 960
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 961
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ll2d;->j(Ljava/lang/String;)Ll2d;

    .line 962
    iget-object v0, v7, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    if-eqz v0, :cond_c1

    .line 963
    invoke-virtual {v0, v3}, Lcom/mgmi/model/a;->a(Ll2d;)V

    goto/16 :goto_1c

    .line 964
    :cond_c1
    iget-object v0, v7, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_e8

    .line 965
    invoke-virtual {v0, v3}, Lcom/mgmi/model/VASTFloatAd;->addBubbleEntry(Ll2d;)V

    goto/16 :goto_1c

    .line 966
    :cond_c2
    const-string v2, "HeadInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/g/a/a;->e()V

    goto/16 :goto_1c

    .line 968
    :cond_c3
    const-string v2, "flag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 969
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 970
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 971
    iget-object v1, v7, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    if-eqz v1, :cond_c4

    .line 972
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/model/HeadInfo;->setShowHead(Z)V

    .line 973
    :cond_c4
    iget-object v1, v7, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-eqz v1, :cond_e8

    .line 974
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mgmi/model/h;->f:Z

    goto/16 :goto_1c

    .line 975
    :cond_c5
    const-string v2, "head_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_c7

    .line 976
    iget-object v0, v7, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    if-eqz v0, :cond_e8

    .line 977
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 978
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 979
    iget-object v1, v7, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c6

    goto :goto_17

    :cond_c6
    move-object v3, v0

    :goto_17
    invoke-virtual {v1, v3}, Lcom/mgmi/model/HeadInfo;->setUserAvater(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 980
    :cond_c7
    const-string v2, "user_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 981
    iget-object v0, v7, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    if-eqz v0, :cond_e8

    .line 982
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 983
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 984
    iget-object v1, v7, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_18

    :cond_c8
    move-object v3, v0

    :goto_18
    invoke-virtual {v1, v3}, Lcom/mgmi/model/HeadInfo;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 985
    :cond_c9
    const-string v2, "Mid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 986
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 987
    :try_start_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 988
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 989
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setMid(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1c

    .line 991
    :cond_ca
    const-string v2, "Id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 992
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 993
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 994
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 995
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setPairid(I)V

    .line 996
    iget-object v1, v7, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1c

    :catch_5
    move-exception v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1c

    .line 998
    :cond_cb
    const-string v2, "Aid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 999
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1000
    :try_start_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e8

    .line 1001
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgmi/ads/api/e/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1002
    new-instance v2, Lcom/mgmi/ads/api/e/i$a;

    invoke-direct {v2}, Lcom/mgmi/ads/api/e/i$a;-><init>()V

    .line 1003
    iget-object v4, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v4, :cond_e8

    .line 1004
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getMid()I

    move-result v4

    iput v4, v2, Lcom/mgmi/ads/api/e/i$a;->a:I

    .line 1005
    iget-object v4, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getPairid()I

    move-result v4

    iput v4, v2, Lcom/mgmi/ads/api/e/i$a;->b:I

    .line 1006
    iput v0, v2, Lcom/mgmi/ads/api/e/i$a;->c:I

    .line 1007
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e8

    .line 1008
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/mgmi/ads/api/e/i;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1c

    :catch_6
    move-exception v0

    .line 1010
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1c

    .line 1011
    :cond_cc
    const-string v2, "AutoLand"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1012
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1013
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 1014
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1015
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setAutoLand(I)V

    goto/16 :goto_1c

    .line 1016
    :cond_cd
    const-string v2, "SchGuideA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 1017
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1018
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 1019
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1020
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setSchGuideA(I)V

    goto/16 :goto_1c

    .line 1021
    :cond_ce
    const-string v2, "SchGuideM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 1022
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1023
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 1024
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1025
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setSchGuideM(I)V

    goto/16 :goto_1c

    .line 1026
    :cond_cf
    const-string v2, "UseAntle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1027
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1028
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v0, :cond_e8

    .line 1029
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1030
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->i(I)V

    goto/16 :goto_1c

    .line 1031
    :cond_d0
    const-string v2, "InteractType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1032
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1033
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v0, :cond_e8

    .line 1034
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1035
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mgmi/model/l;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->j(I)V

    goto/16 :goto_1c

    .line 1036
    :cond_d1
    const-string v2, "InteractJson"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 1037
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1038
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v0, :cond_e8

    .line 1039
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->k(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1041
    :cond_d2
    const-string v2, "OnlineAddr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 1042
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1043
    iget-object v0, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    if-eqz v0, :cond_e8

    .line 1044
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1045
    iget-object v1, v7, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->l(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1046
    :cond_d3
    const-string v2, "InteractJsonM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1047
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1048
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 1049
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1050
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setInteractJsonM(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1051
    :cond_d4
    const-string v2, "VoiceUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1052
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1053
    iget-object v0, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_e8

    .line 1054
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1055
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setVoiceSrc(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1056
    :cond_d5
    const-string v2, "AdTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1057
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1058
    :try_start_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 1059
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 1060
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setCid(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1c

    :catch_7
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1c

    .line 1062
    :cond_d6
    const-string v2, "ContLabel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 1063
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1064
    :try_start_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1065
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    .line 1066
    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setContLabel(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1c

    .line 1068
    :cond_d7
    const-string v2, "SspWinPrice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1069
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1070
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1071
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1072
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->setSspPrice(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1073
    :cond_d8
    const-string v2, "WinNotice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1074
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1075
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1076
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1077
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addWinNotices(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1078
    :cond_d9
    const-string v2, "LossNotice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1079
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1080
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_e8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1082
    iget-object v1, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/VASTAd;->addLossNotices(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1083
    :cond_da
    :goto_19
    invoke-direct {v7, v1}, Lcom/mgmi/g/a/a;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c

    .line 1084
    :goto_1a
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1087
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-direct {v7, v1, v2}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v2, :cond_db

    .line 1090
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/Clicks;->addClickTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_db
    iget-object v2, v7, Lcom/mgmi/g/a/a;->h:Lcom/mgmi/model/Clicks;

    if-eqz v2, :cond_e8

    .line 1092
    invoke-virtual {v2, v0, v1}, Lcom/mgmi/model/Clicks;->addClickTracking(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1093
    :cond_dc
    :goto_1b
    const-string v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v3, :cond_de

    if-nez v0, :cond_dd

    .line 1095
    const-string v0, "0"

    .line 1096
    :cond_dd
    invoke-virtual {v3, v0}, Lcom/mgmi/model/Clicks;->setExternal(Ljava/lang/String;)V

    .line 1097
    :cond_de
    const-string v0, "confirm"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v2, :cond_e0

    if-nez v0, :cond_df

    .line 1099
    const-string v0, "0"

    .line 1100
    :cond_df
    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mgmi/model/Clicks;->setSchemeNoticeConfirm(I)V

    .line 1101
    :cond_e0
    const-string v0, "action"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v2, v7, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_e1

    .line 1103
    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->setAction(Ljava/lang/String;)V

    .line 1104
    :cond_e1
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v2, :cond_e2

    .line 1105
    invoke-virtual {v2, v0}, Lcom/mgmi/model/Clicks;->setAction(Ljava/lang/String;)V

    .line 1106
    :cond_e2
    const-string v0, "click_style"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v3, :cond_e3

    .line 1108
    invoke-virtual {v3, v0}, Lcom/mgmi/model/Clicks;->setClickStyle(Ljava/lang/String;)V

    .line 1109
    :cond_e3
    const-string v0, "click_desc"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v3, :cond_e4

    .line 1111
    invoke-virtual {v3, v0}, Lcom/mgmi/model/Clicks;->setClickDesc(Ljava/lang/String;)V

    .line 1112
    :cond_e4
    const-string v0, "hid"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v3, :cond_e5

    .line 1114
    invoke-virtual {v3, v0}, Lcom/mgmi/model/Clicks;->setHid(Ljava/lang/String;)V

    .line 1115
    :cond_e5
    const-string v0, "vid"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    iget-object v3, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v3, :cond_e6

    .line 1117
    invoke-virtual {v3, v0}, Lcom/mgmi/model/Clicks;->setVid(Ljava/lang/String;)V

    .line 1118
    :cond_e6
    const-string v0, "pre_load"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    iget-object v2, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v2, :cond_e7

    .line 1120
    invoke-virtual {v2, v0}, Lcom/mgmi/model/Clicks;->setPre_load(Ljava/lang/String;)V

    .line 1121
    :cond_e7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1122
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget-object v1, v7, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    if-eqz v1, :cond_e8

    .line 1124
    invoke-virtual {v1, v0}, Lcom/mgmi/model/Clicks;->setClickThrough(Ljava/lang/String;)V

    :cond_e8
    :goto_1c
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/mgmi/platform/view/a;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1158
    const-string p0, "nt"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1160
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1161
    :goto_0
    invoke-virtual {p2, v1, v2}, Lcom/mgmi/platform/view/a;->a(J)V

    .line 1162
    const-string p0, "cnt"

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1163
    invoke-static {p0}, Lg4d;->j(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/mgmi/platform/view/a;->j(I)V

    .line 1164
    const-string p0, "gid"

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1165
    invoke-virtual {p2, p0}, Lcom/mgmi/platform/view/a;->b(Ljava/lang/String;)V

    .line 1166
    const-string p0, "req_rand"

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    .line 1167
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 1168
    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {p1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr v1, p0

    invoke-virtual {p2, v1, v2}, Lcom/mgmi/platform/view/a;->b(J)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getInnerVideo()Lcom/mgmi/model/h;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/mgmi/model/h;

    invoke-direct {v0}, Lcom/mgmi/model/h;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    iget-object p0, p0, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    invoke-virtual {v0, p0}, Lcom/mgmi/model/VASTFloatAd;->setInnerVideo(Lcom/mgmi/model/h;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/mgmi/model/o;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_0
    iget-object v3, p1, Lcom/mgmi/model/o;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 79
    iget-object v3, p1, Lcom/mgmi/model/o;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/p;

    .line 80
    iget-object v4, v3, Lcom/mgmi/model/p;->a:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mgmi/model/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 85
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mgmi/model/p;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/mgmi/g/a/a$2;

    invoke-direct {v5, p0}, Lcom/mgmi/g/a/a$2;-><init>(Lcom/mgmi/g/a/a;)V

    invoke-static {v4, v3, v5}, Ley4;->b(Landroid/content/Context;Ljava/lang/String;Lsed;)V

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mgmi/model/p;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mgmi/g/a/a$3;

    invoke-direct {v6, p0, v3}, Lcom/mgmi/g/a/a$3;-><init>(Lcom/mgmi/g/a/a;Lcom/mgmi/model/p;)V

    invoke-static {v4, v5, v6}, Ley4;->b(Landroid/content/Context;Ljava/lang/String;Lsed;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v4, v3, Lcom/mgmi/model/p;->a:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-static {}, Lcom/mgmi/ads/api/e/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mgmi/ads/api/e/c;->b()I

    move-result v5

    invoke-virtual {v3}, Lcom/mgmi/model/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lyld;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v4, v3, Lcom/mgmi/model/p;->a:Ljava/lang/String;

    const-string v5, "h5_zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_3
    new-instance v4, Lcom/mgmi/model/WebviewResourceBean;

    iget-object v5, v3, Lcom/mgmi/model/p;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/mgmi/model/p;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/mgmi/model/WebviewResourceBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 92
    new-instance p0, Lcom/mgmi/ads/api/a/k;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/mgmi/ads/api/a/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 93
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object p1

    invoke-virtual {p1}, Li4d;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    return-void
.end method

.method private b(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    const-string v0, "VAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    const/4 p1, 0x0

    const-string v0, "version"

    invoke-interface {p2, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/model/r;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v4, "t"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    const-string v5, "id"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    const-string v6, "fixed"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    const-string v7, "cls_req"

    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    const-string v8, "req"

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    const-string v9, "local"

    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    const-string v10, "lmid"

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    const-string v11, "float"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "ai_plan"

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    .line 12
    new-instance v2, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v2, v13, v4, v5, v8}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 13
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    .line 14
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iput-object v1, v2, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 17
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v6}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-static {v7}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->b(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 18
    :cond_0
    const-string v6, "live_float"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 19
    const-string v2, "nt"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_1

    move-wide v14, v11

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 22
    :goto_0
    new-instance v2, Lcom/mgmi/platform/view/a;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v20

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v21

    const/16 v17, 0x9

    move-object/from16 v16, v2

    move-wide/from16 v18, v14

    invoke-direct/range {v16 .. v21}, Lcom/mgmi/platform/view/a;-><init>(IJII)V

    cmp-long v4, v14, v11

    if-nez v4, :cond_2

    .line 23
    invoke-virtual {v2, v13}, Lcom/mgmi/platform/view/a;->d(Z)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v2, v7}, Lcom/mgmi/platform/view/a;->d(Z)V

    .line 25
    :goto_1
    invoke-virtual {v2, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v14, v15}, Lcom/mgmi/platform/view/a;->a(J)V

    .line 27
    invoke-virtual {v2, v13}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    .line 28
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    .line 29
    const-string v4, "req_rand"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 30
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 31
    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v3, v1

    sub-long/2addr v14, v3

    invoke-virtual {v2, v14, v15}, Lcom/mgmi/platform/view/a;->b(J)V

    .line 32
    :cond_3
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 33
    :cond_4
    const-string v6, "mid"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 34
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 35
    invoke-virtual {v1, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 37
    :cond_5
    const-string v6, "backend"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 38
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 39
    invoke-virtual {v1, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 41
    :cond_6
    const-string v6, "pause"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 42
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 43
    invoke-virtual {v1, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 45
    :cond_7
    const-string v6, "progress"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 46
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 47
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 48
    :cond_8
    const-string v6, "focus"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 49
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 50
    invoke-virtual {v1, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 52
    :cond_9
    const-string v6, "barrage"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 53
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 54
    invoke-virtual {v1, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 55
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 56
    :cond_a
    const-string v6, "rprain_video"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 57
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 58
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    .line 59
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto :goto_2

    .line 60
    :cond_b
    const-string v6, "ai_implant"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 61
    new-instance v2, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v4

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    invoke-direct {v2, v7, v4, v5, v6}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 62
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    .line 63
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v2, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 65
    iput-object v1, v2, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    .line 66
    iget-object v1, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v2}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    .line 67
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v13}, Lcom/mgmi/model/r;->b(Z)V

    goto :goto_2

    .line 68
    :cond_c
    const-string v6, "baike"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 69
    const-string v2, "extra"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v3

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 71
    iput-object v1, v2, Lcom/mgmi/platform/view/a;->A:Ljava/lang/String;

    .line 72
    invoke-virtual {v2, v10}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, v0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v2}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    :cond_d
    :goto_2
    return-void
.end method

.method private c()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getCaption()Lcom/mgmi/model/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mgmi/model/c;

    invoke-direct {v0}, Lcom/mgmi/model/c;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    iget-object p0, p0, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    invoke-virtual {v0, p0}, Lcom/mgmi/model/VASTFloatAd;->setCaption(Lcom/mgmi/model/c;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 85
    const-string v0, "Ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    iput-object v1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    .line 87
    iput-object v1, p0, Lcom/mgmi/g/a/a;->c:Lcom/mgmi/model/VASTAd;

    .line 88
    iput-object v1, p0, Lcom/mgmi/g/a/a;->d:Lcom/mgmi/model/IncentiveVastAd;

    .line 89
    iput-object v1, p0, Lcom/mgmi/g/a/a;->g:Lcom/mgmi/model/Clicks;

    .line 90
    iput-object v1, p0, Lcom/mgmi/g/a/a;->i:Lcom/mgmi/model/VASTStaticResource;

    return-void

    .line 91
    :cond_0
    const-string v0, "Companion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput-object v1, p0, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    .line 93
    iput-object v1, p0, Lcom/mgmi/g/a/a;->h:Lcom/mgmi/model/Clicks;

    .line 94
    iput-object v1, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    .line 95
    iput-object v1, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    .line 96
    iput-object v1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    return-void

    .line 97
    :cond_1
    const-string v0, "MultiChoose"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object p1, p0, Lcom/mgmi/g/a/a;->y:Lcom/mgmi/model/k;

    invoke-direct {p0, p1}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/model/k;)V

    .line 99
    iput-object v1, p0, Lcom/mgmi/g/a/a;->y:Lcom/mgmi/model/k;

    return-void

    .line 100
    :cond_2
    const-string v0, "Native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iput-object v1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    return-void

    .line 102
    :cond_3
    const-string v0, "PrevAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iput-object v1, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    goto/16 :goto_0

    .line 104
    :cond_4
    const-string v0, "Button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    iput-object v1, p0, Lcom/mgmi/g/a/a;->z:Lcom/mgmi/model/s;

    goto/16 :goto_0

    .line 106
    :cond_5
    const-string v0, "Extensions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    iget-object p1, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz p1, :cond_7

    const-string v0, "live_float"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object p1

    const-string v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_7

    return-void

    .line 108
    :cond_7
    iput-object v1, p0, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    .line 109
    iput-object v1, p0, Lcom/mgmi/g/a/a;->p:Lcom/mgmi/model/h;

    .line 110
    iput-object v1, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    return-void

    .line 111
    :cond_8
    const-string p2, "Options"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 112
    iput-object v1, p0, Lcom/mgmi/g/a/a;->m:Lcom/mgmi/model/a;

    return-void

    .line 113
    :cond_9
    const-string p2, "Vote"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    const-string p2, "VoteNative"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    .line 114
    :cond_a
    const-string p2, "VoteOption"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    iput-object v1, p0, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    return-void

    .line 116
    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 117
    iput-object v1, p0, Lcom/mgmi/g/a/a;->n:Lcom/mgmi/model/u;

    return-void

    .line 118
    :cond_c
    const-string p2, "AiFollow"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 119
    iput-object v1, p0, Lcom/mgmi/g/a/a;->o:Lcom/mgmi/model/b;

    return-void

    .line 120
    :cond_d
    const-string p2, "InnerFeed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    return-void

    .line 121
    :cond_e
    const-string p2, "Caption"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 122
    iput-object v1, p0, Lcom/mgmi/g/a/a;->q:Lcom/mgmi/model/c;

    return-void

    .line 123
    :cond_f
    const-string p2, "Resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 124
    iput-object v1, p0, Lcom/mgmi/g/a/a;->l:Lcom/mgmi/model/p;

    goto :goto_0

    .line 125
    :cond_10
    const-string p2, "BackUpResources"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 126
    iget-object p2, p0, Lcom/mgmi/g/a/a;->k:Lcom/mgmi/model/o;

    invoke-direct {p0, p2}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/model/o;)V

    .line 127
    iput-object v1, p0, Lcom/mgmi/g/a/a;->k:Lcom/mgmi/model/o;

    .line 128
    :cond_11
    :goto_0
    const-string p2, "HeadInfo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 129
    iput-object v1, p0, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    :cond_12
    return-void

    .line 130
    :cond_13
    :goto_1
    iput-object v1, p0, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    return-void
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    const-string v3, "t"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    const-string v4, "id"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    const-string v5, "fixed"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    const-string v7, "cls_req"

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    const-string v8, "req"

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    const-string v9, "local"

    invoke-interface {v0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    const-string v10, "pre_time"

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9
    const-string v11, "show_type"

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10
    const-string v12, "dao_time"

    invoke-interface {v0, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    const-string v13, "lmid"

    invoke-interface {v0, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 12
    const-string v14, "float"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "ai_plan"

    if-eqz v14, :cond_0

    .line 13
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v3

    float-to-long v10, v3

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v20

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v21

    const/16 v17, 0x1

    move-object/from16 v16, v1

    move-wide/from16 v18, v10

    invoke-direct/range {v16 .. v21}, Lcom/mgmi/platform/view/a;-><init>(IJII)V

    .line 14
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    .line 15
    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 18
    invoke-direct {v6, v0, v1}, Lcom/mgmi/g/a/a;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/mgmi/platform/view/a;)V

    .line 19
    iget-object v0, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-static {v7}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->b(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 20
    :cond_0
    const-string v14, "live_float"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v2, 0x1

    if-eqz v14, :cond_4

    .line 21
    const-string v1, "nt"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_1

    move-wide v14, v10

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 24
    :goto_0
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v21

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v22

    const/16 v18, 0x9

    move-object/from16 v17, v1

    move-wide/from16 v19, v14

    invoke-direct/range {v17 .. v22}, Lcom/mgmi/platform/view/a;-><init>(IJII)V

    cmp-long v3, v14, v10

    if-nez v3, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->d(Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3}, Lcom/mgmi/platform/view/a;->d(Z)V

    .line 27
    :goto_1
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v14, v15}, Lcom/mgmi/platform/view/a;->a(J)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    .line 30
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    .line 31
    const-string v2, "cnt"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Lg4d;->j(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->j(I)V

    .line 33
    const-string v2, "gid"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->b(Ljava/lang/String;)V

    .line 35
    const-string v2, "req_rand"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 36
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 37
    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr v14, v2

    invoke-virtual {v1, v14, v15}, Lcom/mgmi/platform/view/a;->b(J)V

    .line 38
    :cond_3
    iget-object v0, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 39
    :cond_4
    const-string v14, "paster"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 40
    const-string v1, "imp_tp"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v0

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/platform/view/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgmi/platform/view/a;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 43
    iget-object v1, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 44
    :cond_5
    const-string v10, "pause"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 45
    new-instance v0, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v1

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 46
    invoke-virtual {v0, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 47
    iget-object v1, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 48
    :cond_6
    const-string v10, "progress"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 49
    new-instance v0, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v1

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 50
    invoke-virtual {v0, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 51
    iget-object v1, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 52
    :cond_7
    const-string v10, "barrage"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 53
    new-instance v0, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v1

    float-to-long v1, v1

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v21

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v22

    const/16 v18, 0x5

    move-object/from16 v17, v0

    move-wide/from16 v19, v1

    invoke-direct/range {v17 .. v22}, Lcom/mgmi/platform/view/a;-><init>(IJII)V

    .line 54
    invoke-virtual {v0, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 55
    iget-object v1, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 56
    :cond_8
    const-string v10, "rprain_video"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 57
    new-instance v0, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v1

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 58
    invoke-virtual {v0, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    .line 60
    iget-object v1, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto/16 :goto_2

    .line 61
    :cond_9
    const-string v2, "ai_implant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 63
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    const/4 v2, 0x0

    .line 64
    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 66
    iput-object v0, v1, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    .line 67
    iget-object v0, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 68
    const-string v10, "baike"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 69
    const-string v1, "extra"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    .line 71
    iput-object v0, v1, Lcom/mgmi/platform/view/a;->A:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    goto :goto_2

    .line 74
    :cond_b
    const-string v2, "baike_float"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    new-instance v1, Lcom/mgmi/platform/view/a;

    invoke-static {v3}, Lcom/mgmi/model/l;->b(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    invoke-static {v4}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v21

    invoke-static {v8}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v22

    const/16 v18, 0xd

    move-object/from16 v17, v1

    move-wide/from16 v19, v2

    invoke-direct/range {v17 .. v22}, Lcom/mgmi/platform/view/a;-><init>(IJII)V

    .line 76
    invoke-static {v9}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->a(I)Lcom/mgmi/platform/view/a;

    const/4 v2, 0x0

    .line 77
    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object v0, v1, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v13}, Lcom/mgmi/platform/view/a;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, v6, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    invoke-static {v5}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->c(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-static {v7}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mgmi/platform/view/a;->b(I)Lcom/mgmi/platform/view/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/r;->a(Lcom/mgmi/platform/view/a;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private d()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getInnerFeed()Lcom/mgmi/model/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/mgmi/model/g;

    invoke-direct {v0}, Lcom/mgmi/model/g;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    iget-object p0, p0, Lcom/mgmi/g/a/a;->r:Lcom/mgmi/model/g;

    invoke-virtual {v0, p0}, Lcom/mgmi/model/VASTFloatAd;->setInnerFeed(Lcom/mgmi/model/g;)V

    :cond_1
    return-void
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v2, "t"

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "assetHeight"

    const-string v6, "assetWidth"

    const-string v7, "adSlotId"

    const-string v8, "id"

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "preview"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3
    iget-object v9, p0, Lcom/mgmi/g/a/a;->j:Ljava/util/List;

    if-nez v9, :cond_0

    .line 4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mgmi/g/a/a;->j:Ljava/util/List;

    .line 5
    iget-object v10, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v10, :cond_0

    .line 6
    invoke-virtual {v10, v9}, Lcom/mgmi/model/VASTAd;->setVastAdPres(Ljava/util/List;)V

    .line 7
    :cond_0
    new-instance v9, Lcom/mgmi/model/i;

    invoke-direct {v9}, Lcom/mgmi/model/i;-><init>()V

    iput-object v9, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    .line 8
    iget-object v10, p0, Lcom/mgmi/g/a/a;->j:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->b(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v8}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->d(I)V

    .line 18
    iget-object v0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v7}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->e(I)V

    .line 19
    iget-object v0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v6}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->g(I)V

    .line 20
    iget-object v0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v5}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->h(I)V

    .line 21
    iget-object v0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {p1}, Lg4d;->j(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/i;->f(I)V

    .line 22
    iget-object p1, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v4}, Lg4d;->j(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/i;->b(I)V

    .line 23
    iget-object p0, p0, Lcom/mgmi/g/a/a;->v:Lcom/mgmi/model/i;

    invoke-static {v3}, Lg4d;->j(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/model/i;->a(I)V

    goto/16 :goto_1

    .line 24
    :cond_1
    const-string v9, "showStyle"

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "poster"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 25
    new-instance v0, Lcom/mgmi/model/d;

    invoke-direct {v0}, Lcom/mgmi/model/d;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 26
    iget-object v2, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_d

    .line 27
    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    .line 28
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object v0

    invoke-static {p1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/e;->a(I)V

    .line 30
    iget-object p0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mgmi/model/e;->b(I)V

    goto/16 :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "multi_poster"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 32
    iget-object v0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_d

    .line 33
    new-instance v2, Lcom/mgmi/model/e;

    invoke-direct {v2}, Lcom/mgmi/model/e;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mgmi/model/VASTAd;->setmCompanions(Lcom/mgmi/model/e;)V

    .line 34
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object v0

    invoke-static {p1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/e;->a(I)V

    .line 36
    iget-object p0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/mgmi/model/e;->b(I)V

    goto/16 :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "button"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "interact"

    .line 38
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 39
    :cond_4
    iget-object v9, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v9, :cond_d

    .line 40
    invoke-virtual {v9}, Lcom/mgmi/model/VASTAd;->getInteractItemInfos()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_5

    .line 41
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v10, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v10, v9}, Lcom/mgmi/model/VASTAd;->setInteractItemInfos(Ljava/util/List;)V

    goto :goto_0

    .line 43
    :cond_5
    iget-object v9, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v9}, Lcom/mgmi/model/VASTAd;->getInteractItemInfos()Ljava/util/List;

    move-result-object v9

    .line 44
    :goto_0
    new-instance v10, Lcom/mgmi/model/i;

    invoke-direct {v10}, Lcom/mgmi/model/i;-><init>()V

    iput-object v10, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    .line 45
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-virtual {v1, v0}, Lcom/mgmi/model/i;->b(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v8}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->d(I)V

    .line 55
    iget-object v0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v7}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->e(I)V

    .line 56
    iget-object v0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v6}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->g(I)V

    .line 57
    iget-object v0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v5}, Lg4d;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->h(I)V

    .line 58
    iget-object v0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {p1}, Lg4d;->j(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/i;->f(I)V

    .line 59
    iget-object p1, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v4}, Lg4d;->j(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/i;->b(I)V

    .line 60
    iget-object p0, p0, Lcom/mgmi/g/a/a;->s:Lcom/mgmi/model/i;

    invoke-static {v3}, Lg4d;->j(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/model/i;->a(I)V

    goto/16 :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vote_native"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    new-instance v0, Lcom/mgmi/model/d;

    invoke-direct {v0}, Lcom/mgmi/model/d;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 63
    iget-object v2, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_d

    .line 64
    invoke-virtual {v2, v0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    .line 65
    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object v0

    invoke-static {p1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/e;->a(I)V

    .line 67
    iget-object p0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/mgmi/model/e;->b(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "float_windmill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    const-string v0, "close"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p1

    .line 70
    new-instance v0, Lcom/mgmi/model/Clicks;

    invoke-direct {v0}, Lcom/mgmi/model/Clicks;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->h:Lcom/mgmi/model/Clicks;

    .line 71
    new-instance v0, Lcom/mgmi/model/d;

    invoke-direct {v0}, Lcom/mgmi/model/d;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 72
    invoke-virtual {v0, p1}, Lcom/mgmi/model/d;->h(I)V

    .line 73
    iget-object p1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_d

    .line 74
    iget-object v0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    .line 75
    iget-object p1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz p1, :cond_d

    .line 76
    iget-object p0, p0, Lcom/mgmi/g/a/a;->h:Lcom/mgmi/model/Clicks;

    invoke-virtual {p1, p0}, Lcom/mgmi/model/d;->a(Lcom/mgmi/model/Clicks;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "thumbnail_pic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 78
    new-instance p1, Lcom/mgmi/model/d;

    invoke-direct {p1}, Lcom/mgmi/model/d;-><init>()V

    iput-object p1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 79
    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->j(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_d

    .line 81
    iget-object p0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_a

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "float_native"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 83
    new-instance v0, Lcom/mgmi/model/e;

    invoke-direct {v0}, Lcom/mgmi/model/e;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    .line 84
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    invoke-static {p1}, Lcom/mgmi/model/l;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgmi/model/e;->c(I)V

    .line 86
    iget-object p1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_d

    .line 87
    iget-object p0, p0, Lcom/mgmi/g/a/a;->x:Lcom/mgmi/model/e;

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->addCommonCompanionPlus(Lcom/mgmi/model/e;)V

    goto :goto_1

    .line 88
    :cond_a
    const-string p1, "zip_online"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 89
    new-instance p1, Lcom/mgmi/model/d;

    invoke-direct {p1}, Lcom/mgmi/model/d;-><init>()V

    iput-object p1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 90
    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->j(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_d

    .line 92
    iget-object p0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    goto :goto_1

    .line 93
    :cond_b
    const-string p1, "inner_feed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 94
    invoke-direct {p0}, Lcom/mgmi/g/a/a;->b()V

    goto :goto_1

    .line 95
    :cond_c
    const-string p1, "implant_img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 96
    new-instance p1, Lcom/mgmi/model/d;

    invoke-direct {p1}, Lcom/mgmi/model/d;-><init>()V

    iput-object p1, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    .line 97
    invoke-virtual {p1, v0}, Lcom/mgmi/model/d;->j(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_d

    .line 99
    iget-object p0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->addCompanionNative(Lcom/mgmi/model/d;)V

    :cond_d
    :goto_1
    return-void
.end method

.method private e()V
    .locals 1

    .line 6
    new-instance v0, Lcom/mgmi/model/HeadInfo;

    invoke-direct {v0}, Lcom/mgmi/model/HeadInfo;-><init>()V

    iput-object v0, p0, Lcom/mgmi/g/a/a;->B:Lcom/mgmi/model/HeadInfo;

    .line 7
    iget-object p0, p0, Lcom/mgmi/g/a/a;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTAd;->setHeadInfo(Lcom/mgmi/model/HeadInfo;)V

    :cond_0
    return-void
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/mgmi/model/t;

    invoke-direct {p1}, Lcom/mgmi/model/t;-><init>()V

    iput-object p1, p0, Lcom/mgmi/g/a/a;->t:Lcom/mgmi/model/t;

    .line 2
    iget-object v0, p0, Lcom/mgmi/g/a/a;->w:Lcom/mgmi/model/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/mgmi/model/d;->a(Lcom/mgmi/model/t;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgmi/g/a/a;->e:Lcom/mgmi/model/VASTFloatAd;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTFloatAd;->setVoteMessage(Lcom/mgmi/model/t;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VAST"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 8
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/mgmi/g/a/a;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mgmi/model/r;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p0, 0x186a0

    return p0

    :catch_0
    move-exception p1

    .line 11
    iput-object p1, p0, Lcom/mgmi/g/a/a;->C:Ljava/lang/Throwable;

    const p0, 0x19640

    return p0

    :cond_1
    :goto_0
    const p0, 0x19258

    return p0
.end method

.method public a()Lcom/mgmi/model/r;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/g/a/a;->a:Lcom/mgmi/model/r;

    return-object p0
.end method
