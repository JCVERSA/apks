.class public final Lcom/yandex/mobile/ads/impl/d52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/b52;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/rg1;

.field private final c:Lcom/yandex/mobile/ads/impl/qj1;

.field private final d:Lcom/yandex/mobile/ads/impl/e52;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/rg1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rg1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/qj1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/qj1;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/e52;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/e52;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/d52;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/rg1;Lcom/yandex/mobile/ads/impl/qj1;Lcom/yandex/mobile/ads/impl/e52;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/rg1;Lcom/yandex/mobile/ads/impl/qj1;Lcom/yandex/mobile/ads/impl/e52;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/yandex/mobile/ads/impl/b52;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/rg1;",
            "Lcom/yandex/mobile/ads/impl/qj1;",
            "Lcom/yandex/mobile/ads/impl/e52;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "allowedFormats"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "percentageParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d52;->b:Lcom/yandex/mobile/ads/impl/rg1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/d52;->c:Lcom/yandex/mobile/ads/impl/qj1;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/d52;->d:Lcom/yandex/mobile/ads/impl/e52;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/na2;
    .locals 8

    const-string v0, "rawValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->d:Lcom/yandex/mobile/ads/impl/b52;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "start"

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/na2;

    sget-object p1, Lcom/yandex/mobile/ads/impl/na2$b;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-direct {p0, p1, v2}, Lcom/yandex/mobile/ads/impl/na2;-><init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->e:Lcom/yandex/mobile/ads/impl/b52;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    const-string v1, "end"

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/yandex/mobile/ads/impl/na2;

    sget-object p1, Lcom/yandex/mobile/ads/impl/na2$b;->c:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-direct {p0, p1, v3}, Lcom/yandex/mobile/ads/impl/na2;-><init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->c:Lcom/yandex/mobile/ads/impl/b52;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "substring(...)"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    const-string v1, "%"

    invoke-static {p1, v1, v6, v5, v7}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d52;->b:Lcom/yandex/mobile/ads/impl/rg1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lj1a;->g0(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-virtual {p1, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le1a;->p(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v2, p1

    if-gtz v0, :cond_2

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_2

    goto :goto_0

    :catchall_0
    :cond_2
    move-object p0, v7

    :goto_0
    if-eqz p0, :cond_6

    new-instance p1, Lcom/yandex/mobile/ads/impl/na2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/na2$b;->c:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/na2;-><init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V

    :goto_1
    move-object p0, p1

    goto/16 :goto_4

    :cond_3
    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->f:Lcom/yandex/mobile/ads/impl/b52;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "#"

    invoke-static {p1, v1, v6, v5, v7}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d52;->c:Lcom/yandex/mobile/ads/impl/qj1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :cond_4
    move-object p0, v7

    :goto_2
    if-eqz p0, :cond_6

    new-instance p1, Lcom/yandex/mobile/ads/impl/na2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/na2$b;->d:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/na2;-><init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/yandex/mobile/ads/impl/b52;->b:Lcom/yandex/mobile/ads/impl/b52;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d52;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d52;->d:Lcom/yandex/mobile/ads/impl/e52;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "00:00:00"

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-object p0, v7

    :goto_3
    if-eqz p0, :cond_6

    new-instance p1, Lcom/yandex/mobile/ads/impl/na2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/na2$b;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/na2;-><init>(Lcom/yandex/mobile/ads/impl/na2$b;F)V

    goto/16 :goto_1

    :cond_6
    move-object p0, v7

    :goto_4
    return-object p0
.end method
