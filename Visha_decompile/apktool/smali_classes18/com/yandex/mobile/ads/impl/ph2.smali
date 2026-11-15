.class public final Lcom/yandex/mobile/ads/impl/ph2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c8;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/of1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/yandex/mobile/ads/impl/of1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/of1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ph2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/of1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/of1;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adRequestReportDataProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "orientationNameProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ph2;->a:Lcom/yandex/mobile/ads/impl/c8;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ph2;->b:Lcom/yandex/mobile/ads/impl/sp1;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ph2;->c:Lcom/yandex/mobile/ads/impl/of1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/nh2;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 4

    const-string v0, "viewSizeInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ph2;->a:Lcom/yandex/mobile/ads/impl/c8;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    :goto_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ph2;->a:Lcom/yandex/mobile/ads/impl/c8;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_unit_id"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "block_id"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ph2;->c:Lcom/yandex/mobile/ads/impl/of1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->o()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const-string v2, "undefined"

    goto :goto_1

    :cond_2
    const-string v2, "landscape"

    goto :goto_1

    :cond_3
    const-string v2, "portrait"

    :goto_1
    const-string v3, "orientation"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    const-string v3, "size_info_width"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    const-string p2, "size_info_height"

    invoke-virtual {v0, v1, p2}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->d()Lcom/yandex/mobile/ads/impl/mh2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/mh2;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "view_width"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->d()Lcom/yandex/mobile/ads/impl/mh2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/mh2;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "view_height"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->b()Lcom/yandex/mobile/ads/impl/nr0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nr0;->b()Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "layout_width"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->b()Lcom/yandex/mobile/ads/impl/nr0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nr0;->a()Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "layout_height"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tu0;->b()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uu0;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "measured_width"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tu0;->b()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uu0;->a()Lcom/yandex/mobile/ads/impl/vu0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "toLowerCase(...)"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "measured_width_mode"

    invoke-virtual {v0, p2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tu0;->a()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uu0;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "measured_height"

    invoke-virtual {v0, p2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/tu0;->a()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/uu0;->a()Lcom/yandex/mobile/ads/impl/vu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "measured_height_mode"

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->Q:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "reportType"

    const-string v3, "reportData"

    invoke-static {v0, p2, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ph2;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
