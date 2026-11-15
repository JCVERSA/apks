.class public abstract Lcom/yandex/mobile/ads/impl/ak;
.super Lcom/yandex/mobile/ads/impl/i62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/i62<",
        "Lcom/yandex/mobile/ads/impl/o3;",
        "Lcom/yandex/mobile/ads/impl/o8<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final C:Lcom/yandex/mobile/ads/impl/o3;

.field private final D:Ljava/lang/String;

.field private final E:Lcom/yandex/mobile/ads/impl/cd1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cd1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final F:Lcom/yandex/mobile/ads/impl/sx1;

.field private final G:Lcom/yandex/mobile/ads/impl/o4;

.field private final H:Lcom/yandex/mobile/ads/impl/e8;

.field private final I:Landroid/content/Context;

.field private final J:Lcom/yandex/mobile/ads/impl/mq1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/sx1;I)V
    .locals 13

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/sx1;->a:Lcom/yandex/mobile/ads/impl/sx1$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sx1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sx1;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    .line 2
    :goto_0
    new-instance v11, Lcom/yandex/mobile/ads/impl/o4;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/o4;-><init>()V

    .line 3
    new-instance v12, Lcom/yandex/mobile/ads/impl/e8;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/e8;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 4
    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/ak;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/sx1;Lcom/yandex/mobile/ads/impl/o4;Lcom/yandex/mobile/ads/impl/e8;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/sx1;Lcom/yandex/mobile/ads/impl/o4;Lcom/yandex/mobile/ads/impl/e8;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/cd1<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/eq1;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;>;",
            "Lcom/yandex/mobile/ads/impl/lq1<",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;>;",
            "Lcom/yandex/mobile/ads/impl/sx1;",
            "Lcom/yandex/mobile/ads/impl/o4;",
            "Lcom/yandex/mobile/ads/impl/e8;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v9, p11

    .line 5
    const-string v0, "context"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseParserCreator"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestReporter"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionStorage"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adIdHeaderProvider"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestRetryPolicyCreator"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/16 v16, 0x700

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    move/from16 v9, v16

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/i62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;I)V

    .line 8
    iput-object v11, v10, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    .line 9
    iput-object v12, v10, Lcom/yandex/mobile/ads/impl/ak;->D:Ljava/lang/String;

    .line 10
    iput-object v13, v10, Lcom/yandex/mobile/ads/impl/ak;->E:Lcom/yandex/mobile/ads/impl/cd1;

    .line 11
    iput-object v14, v10, Lcom/yandex/mobile/ads/impl/ak;->F:Lcom/yandex/mobile/ads/impl/sx1;

    .line 12
    iput-object v15, v10, Lcom/yandex/mobile/ads/impl/ak;->G:Lcom/yandex/mobile/ads/impl/o4;

    move-object/from16 v0, p11

    .line 13
    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/ak;->H:Lcom/yandex/mobile/ads/impl/e8;

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/ak;->I:Landroid/content/Context;

    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/yandex/mobile/ads/impl/ak;->a(Landroid/content/Context;)V

    .line 17
    sget-object v0, Lcom/yandex/mobile/ads/impl/mq1;->e:Lcom/yandex/mobile/ads/impl/mq1;

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/ak;->J:Lcom/yandex/mobile/ads/impl/mq1;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/xc1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ts;",
            ")",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak;->E:Lcom/yandex/mobile/ads/impl/cd1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->I:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/cd1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/xi2;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->L:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak;->F:Lcom/yandex/mobile/ads/impl/sx1;

    invoke-interface {p0, v2}, Lcom/yandex/mobile/ads/impl/sx1;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/xi2;->a(Lcom/yandex/mobile/ads/impl/xc1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 2

    .line 21
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->R()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->h()I

    move-result v0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->H:Lcom/yandex/mobile/ads/impl/e8;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/e8;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/m00;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/m00;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;I)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "I)",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;>;"
        }
    .end annotation

    .line 6
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qk;->a(Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ak;->b(Lcom/yandex/mobile/ads/impl/xc1;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qk;->a(Ljava/util/Map;)V

    .line 11
    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->f:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 12
    :cond_1
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->c:Lcom/yandex/mobile/ads/impl/ts$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "value"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ts;->values()[Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v2

    .line 14
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 15
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v1

    if-ne v5, v1, :cond_5

    .line 17
    invoke-direct {p0, p1, v0, v5}, Lcom/yandex/mobile/ads/impl/ak;->a(Lcom/yandex/mobile/ads/impl/xc1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    const/16 v0, 0xcc

    if-ne v0, p2, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh0;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/tm$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    const-string p1, "success(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 19
    :cond_5
    :goto_2
    sget p0, Lcom/yandex/mobile/ads/impl/r3;->d:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/r3$a;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/r3;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 1

    .line 5
    const-string v0, "requestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 7
    sget v0, Lcom/yandex/mobile/ads/impl/r3;->d:I

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/si2;->b:Lcom/yandex/mobile/ads/impl/xc1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/r3$a;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/r3;

    move-result-object p1

    .line 8
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/i62;->b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/yandex/mobile/ads/impl/xc1;I)Z
    .locals 2

    .line 9
    const-string p0, "networkResponse"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    .line 10
    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    xor-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public final b()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/ai;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak;->D:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 3
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->F:Lcom/yandex/mobile/ads/impl/sx1;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/sx1;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    sget-object v2, Lcom/yandex/mobile/ads/impl/vh0;->L:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->N:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ak;->G:Lcom/yandex/mobile/ads/impl/o4;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ak;->I:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/o4;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->O:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ak;->G:Lcom/yandex/mobile/ads/impl/o4;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ak;->I:Landroid/content/Context;

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/o4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o50;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ak;->C:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v8, Lcom/yandex/mobile/ads/impl/ak$a;->b:Lcom/yandex/mobile/ads/impl/ak$a;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, "&"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lcom/yandex/mobile/ads/impl/mq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ak;->J:Lcom/yandex/mobile/ads/impl/mq1;

    return-object p0
.end method
