.class public final Lcom/yandex/mobile/ads/impl/dd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bd1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/bd1<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final k:J


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/br1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/br1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/s80;

.field private final d:Lcom/yandex/mobile/ads/impl/iz0;

.field private final e:Lcom/yandex/mobile/ads/impl/wr1;

.field private final f:Lcom/yandex/mobile/ads/impl/js;

.field private final g:Lcom/yandex/mobile/ads/impl/og0;

.field private final h:Lcom/yandex/mobile/ads/impl/us0;

.field private final i:Lcom/yandex/mobile/ads/impl/md;

.field private final j:Lcom/yandex/mobile/ads/impl/p8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/dd1;->k:J

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/br1;Lcom/yandex/mobile/ads/impl/s80;Lcom/yandex/mobile/ads/impl/iz0;Lcom/yandex/mobile/ads/impl/wr1;Lcom/yandex/mobile/ads/impl/js;Lcom/yandex/mobile/ads/impl/og0;Lcom/yandex/mobile/ads/impl/us0;Lcom/yandex/mobile/ads/impl/md;Lcom/yandex/mobile/ads/impl/p8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/br1<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/s80;",
            "Lcom/yandex/mobile/ads/impl/iz0;",
            "Lcom/yandex/mobile/ads/impl/wr1;",
            "Lcom/yandex/mobile/ads/impl/js;",
            "Lcom/yandex/mobile/ads/impl/og0;",
            "Lcom/yandex/mobile/ads/impl/us0;",
            "Lcom/yandex/mobile/ads/impl/md;",
            "Lcom/yandex/mobile/ads/impl/p8;",
            ")V"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseBodyParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falseClickParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationDataParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardDataParser"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentTypeHeaderParser"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlAdImpressionDataParser"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeParser"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsParametersParser"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseAbExperimentDataParser"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dd1;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dd1;->b:Lcom/yandex/mobile/ads/impl/br1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->c:Lcom/yandex/mobile/ads/impl/s80;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dd1;->d:Lcom/yandex/mobile/ads/impl/iz0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dd1;->e:Lcom/yandex/mobile/ads/impl/wr1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/dd1;->f:Lcom/yandex/mobile/ads/impl/js;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/dd1;->g:Lcom/yandex/mobile/ads/impl/og0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/dd1;->h:Lcom/yandex/mobile/ads/impl/us0;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/dd1;->i:Lcom/yandex/mobile/ads/impl/md;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/dd1;->j:Lcom/yandex/mobile/ads/impl/p8;

    return-void
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 158
    const-string v0, "value"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/oa;->b:I

    if-eqz p0, :cond_0

    .line 160
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/oa;->b:I

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dd1;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dd1;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wq1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/o8;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/wq1;",
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

    const/4 v0, 0x1

    .line 1
    const-string v1, "networkResponse"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "responseAdType"

    invoke-static {p3, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/o8$a;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/o8$a;-><init>()V

    .line 3
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/dd1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/o8$a;->f(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/ts;)V

    .line 5
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->d:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result p3

    .line 6
    sget-object v4, Lcom/yandex/mobile/ads/impl/vh0;->e:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, v4}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result v4

    .line 7
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->e(I)V

    .line 8
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/o8$a;->b(I)V

    .line 9
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->R:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 10
    sget-object v4, Lcom/yandex/mobile/ads/impl/vh0;->S:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, v4}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->e(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/o8$a;->k(Ljava/lang/String;)V

    .line 13
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->h:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->b(Ljava/lang/String;)V

    .line 15
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->W:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 16
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/dd1;->i:Lcom/yandex/mobile/ads/impl/md;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string v4, "analyticsParametersValue"

    invoke-static {p3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 19
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    .line 21
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 22
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 24
    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    :cond_0
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/util/HashMap;)V

    .line 26
    :cond_1
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p3

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 27
    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v4

    .line 28
    :goto_1
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/gz1$a;)V

    .line 29
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->i:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->c(Ljava/util/ArrayList;)V

    .line 30
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->r:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->f(Ljava/util/ArrayList;)V

    .line 31
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->j:Lcom/yandex/mobile/ads/impl/p8;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/p8;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/f;)V

    .line 32
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->u:Lcom/yandex/mobile/ads/impl/vh0;

    new-instance v5, Ldad;

    invoke-direct {v5}, Ldad;-><init>()V

    .line 33
    invoke-static {p2, p3, v5}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Lcom/yandex/mobile/ads/impl/nf0$a;)Ljava/util/ArrayList;

    move-result-object p3

    .line 34
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/util/ArrayList;)V

    .line 35
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->P:Lcom/yandex/mobile/ads/impl/vh0;

    new-instance v5, Lead;

    invoke-direct {v5}, Lead;-><init>()V

    .line 36
    invoke-static {p2, p3, v5}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Lcom/yandex/mobile/ads/impl/nf0$a;)Ljava/util/ArrayList;

    move-result-object p3

    .line 37
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->d(Ljava/util/ArrayList;)V

    .line 38
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->j:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->e(Ljava/util/ArrayList;)V

    .line 39
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->k:Lcom/yandex/mobile/ads/impl/vh0;

    .line 40
    const-string v5, "responseHeaders"

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "httpHeader"

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 42
    sget v7, Lcom/yandex/mobile/ads/impl/oa;->b:I

    if-eqz p3, :cond_3

    .line 43
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    move-object p3, v4

    :goto_2
    if-eqz p3, :cond_4

    .line 44
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v7, p3

    sget-wide v9, Lcom/yandex/mobile/ads/impl/dd1;->k:J

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, v4

    .line 45
    :goto_3
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/lang/Long;)V

    .line 46
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->D:Lcom/yandex/mobile/ads/impl/vh0;

    .line 47
    sget v7, Lcom/yandex/mobile/ads/impl/nf0;->b:I

    .line 48
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 50
    sget v7, Lcom/yandex/mobile/ads/impl/oa;->b:I

    if-eqz p3, :cond_5

    .line 51
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    :cond_5
    move-object p3, v4

    :goto_4
    if-eqz p3, :cond_6

    .line 52
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v7, p3

    sget-wide v9, Lcom/yandex/mobile/ads/impl/dd1;->k:J

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_5

    :cond_6
    move-object p3, v4

    .line 53
    :goto_5
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->b(Ljava/lang/Long;)V

    .line 54
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->p:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->g(Ljava/lang/String;)V

    .line 55
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->h:Lcom/yandex/mobile/ads/impl/us0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->q:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 58
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v7

    .line 59
    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_6
    if-ge v10, v8, :cond_8

    aget-object v11, v7, v10

    .line 60
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 61
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    add-int/2addr v10, v0

    goto :goto_6

    :cond_8
    move-object v7, v4

    .line 62
    :goto_7
    invoke-virtual {v3, v7}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/util/Locale;)V

    .line 63
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->o:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object p3

    .line 64
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->b(Ljava/util/ArrayList;)V

    .line 65
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->z:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->f(I)V

    .line 66
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->A:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->c(I)V

    .line 67
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->B:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->d(I)V

    .line 68
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->G:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I

    move-result p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(I)V

    .line 69
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->y:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->l(Ljava/lang/String;)V

    .line 70
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->m:Lcom/yandex/mobile/ads/impl/vh0;

    .line 71
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    move p3, v9

    goto :goto_8

    .line 73
    :cond_9
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 74
    :goto_8
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->i(Z)V

    .line 75
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->Z:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->h(Ljava/lang/String;)V

    .line 76
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->a0:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->j(Ljava/lang/String;)V

    .line 78
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->b0:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    .line 79
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->i(Ljava/lang/String;)V

    .line 80
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->H:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->c(Ljava/lang/String;)V

    .line 81
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->f:Lcom/yandex/mobile/ads/impl/js;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/js;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/is;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/is;)V

    .line 82
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->e:Lcom/yandex/mobile/ads/impl/wr1;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/wr1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Lcom/yandex/mobile/ads/impl/ur1;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/ur1;)V

    .line 83
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->c:Lcom/yandex/mobile/ads/impl/s80;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->b()Ljava/util/Map;

    move-result-object p3

    .line 86
    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->w:Lcom/yandex/mobile/ads/impl/vh0;

    .line 87
    invoke-static {p3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "header"

    invoke-static {v1, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p3, v1}, Lcom/yandex/mobile/ads/impl/nf0;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    sget-object v7, Lcom/yandex/mobile/ads/impl/vh0;->x:Lcom/yandex/mobile/ads/impl/vh0;

    .line 91
    invoke-static {p3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p3, v7}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 93
    :try_start_3
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    :cond_a
    move-object p3, v4

    :goto_9
    if-eqz v1, :cond_b

    if-eqz p3, :cond_b

    .line 94
    new-instance v7, Lcom/yandex/mobile/ads/impl/m80;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v7, v1, v10, v11}, Lcom/yandex/mobile/ads/impl/m80;-><init>(Ljava/lang/String;J)V

    goto :goto_a

    :cond_b
    move-object v7, v4

    .line 95
    :goto_a
    invoke-virtual {v3, v7}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/m80;)V

    .line 96
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dd1;->g:Lcom/yandex/mobile/ads/impl/og0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->l:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 100
    new-instance v1, Lcom/yandex/mobile/ads/impl/t4;

    invoke-direct {v1, p3}, Lcom/yandex/mobile/ads/impl/t4;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    move-object v1, v4

    .line 101
    :goto_b
    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    .line 102
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->I:Lcom/yandex/mobile/ads/impl/vh0;

    .line 103
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_d

    move p3, v9

    goto :goto_c

    .line 105
    :cond_d
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 106
    :goto_c
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->j(Z)V

    .line 107
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->Q:Lcom/yandex/mobile/ads/impl/vh0;

    .line 108
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_e

    move p3, v9

    goto :goto_d

    .line 110
    :cond_e
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 111
    :goto_d
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->f(Z)V

    .line 112
    sget-object p3, Lcom/yandex/mobile/ads/impl/vh0;->t:Lcom/yandex/mobile/ads/impl/vh0;

    .line 113
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_f

    move p3, v9

    goto :goto_e

    .line 115
    :cond_f
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 116
    :goto_e
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/o8$a;->e(Z)V

    if-eqz p3, :cond_10

    .line 117
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd1;->d:Lcom/yandex/mobile/ads/impl/iz0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/iz0;->b(Lcom/yandex/mobile/ads/impl/wq1;)Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object p0

    .line 118
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/hz0;)V

    goto :goto_f

    .line 119
    :cond_10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dd1;->b:Lcom/yandex/mobile/ads/impl/br1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/br1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/Object;

    move-result-object p0

    .line 120
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/o8$a;

    .line 121
    :goto_f
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->T:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->d(Ljava/lang/String;)V

    .line 123
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->g:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/lang/String;)V

    .line 125
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->X:Lcom/yandex/mobile/ads/impl/vh0;

    .line 126
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    move p0, v9

    goto :goto_10

    .line 128
    :cond_11
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 129
    :goto_10
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->c(Z)V

    .line 130
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->M:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 131
    new-instance v4, Lcom/yandex/mobile/ads/impl/ka0;

    invoke-direct {v4, p0}, Lcom/yandex/mobile/ads/impl/ka0;-><init>(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Lcom/yandex/mobile/ads/impl/ka0;)V

    .line 132
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->n:Lcom/yandex/mobile/ads/impl/vh0;

    .line 133
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    move p0, v0

    goto :goto_11

    .line 135
    :cond_13
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 136
    :goto_11
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->h(Z)V

    .line 137
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->d0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 138
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_12

    .line 140
    :cond_14
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 141
    :goto_12
    invoke-virtual {v3, v9}, Lcom/yandex/mobile/ads/impl/o8$a;->g(Z)V

    .line 142
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->e0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 143
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    move p0, v0

    goto :goto_13

    .line 145
    :cond_15
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 146
    :goto_13
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Z)V

    .line 147
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->f0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 148
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    move p0, v0

    goto :goto_14

    .line 150
    :cond_16
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 151
    :goto_14
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/o8$a;->d(Z)V

    .line 152
    sget-object p0, Lcom/yandex/mobile/ads/impl/vh0;->g0:Lcom/yandex/mobile/ads/impl/vh0;

    .line 153
    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_15

    .line 155
    :cond_17
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 156
    :goto_15
    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/impl/o8$a;->b(Z)V

    .line 157
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o8$a;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    return-object p0
.end method
