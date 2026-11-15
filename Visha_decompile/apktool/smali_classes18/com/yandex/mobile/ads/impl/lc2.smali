.class public final Lcom/yandex/mobile/ads/impl/lc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lcom/yandex/mobile/ads/impl/ec2;

.field private final d:Lcom/yandex/mobile/ads/impl/ba2;

.field private final e:Lcom/yandex/mobile/ads/impl/ov1;

.field private final f:Lcom/yandex/mobile/ads/impl/tb2;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 16

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ec2;->d:I

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ec2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ec2;

    move-result-object v5

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/ba2;

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    invoke-direct {v6, v0, v4}, Lcom/yandex/mobile/ads/impl/ba2;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/su;->a()Lnk1;

    move-result-object v10

    .line 4
    new-instance v15, Lcom/yandex/mobile/ads/impl/ov1;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v9

    const/4 v13, 0x0

    const v14, 0x1ffff0

    const/4 v12, 0x0

    move-object v7, v15

    move-object/from16 v8, p1

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v14}, Lcom/yandex/mobile/ads/impl/ov1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;I)V

    .line 5
    new-instance v8, Lcom/yandex/mobile/ads/impl/tb2;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/tb2;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v1, "getApplicationContext(...)"

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/lc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ec2;Lcom/yandex/mobile/ads/impl/ba2;Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/tb2;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ec2;Lcom/yandex/mobile/ads/impl/ba2;Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/tb2;Landroid/content/Context;)V
    .locals 1

    .line 8
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdLoadNetwork"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastDataRequestListenerFactory"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkInitializer"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdErrorProvider"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 11
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lc2;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/lc2;->c:Lcom/yandex/mobile/ads/impl/ec2;

    .line 13
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/lc2;->d:Lcom/yandex/mobile/ads/impl/ba2;

    .line 14
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/lc2;->e:Lcom/yandex/mobile/ads/impl/ov1;

    .line 15
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/lc2;->f:Lcom/yandex/mobile/ads/impl/tb2;

    .line 16
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/lc2;->g:Landroid/content/Context;

    .line 17
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lc2;->h:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/jc;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/o50;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/g5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->b:Lcom/yandex/mobile/ads/impl/g5;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/lc2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/lc2;)Ljava/util/LinkedHashSet;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->h:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/ba2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->d:Lcom/yandex/mobile/ads/impl/ba2;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/tb2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->f:Lcom/yandex/mobile/ads/impl/tb2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/ec2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc2;->c:Lcom/yandex/mobile/ads/impl/ec2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/ka2;)V
    .locals 7

    .line 5
    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationParametersProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTag"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/hc2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/hc2;-><init>(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Lcom/yandex/mobile/ads/impl/ka2;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/ic2;

    invoke-direct {p1, p4}, Lcom/yandex/mobile/ads/impl/ic2;-><init>(Lcom/yandex/mobile/ads/impl/ka2;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/lc2;->h:Ljava/util/LinkedHashSet;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hc2;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/lc2;->e:Lcom/yandex/mobile/ads/impl/ov1;

    sget-object p4, Lcom/yandex/mobile/ads/impl/gl0;->e:Lcom/yandex/mobile/ads/impl/gl0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/gc2;

    invoke-direct {v1, p0, p3, v0, p1}, Lcom/yandex/mobile/ads/impl/gc2;-><init>(Lcom/yandex/mobile/ads/impl/lc2;Ljava/lang/Object;Lc74;Le74;)V

    invoke-virtual {p2, p4, v1}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/sm0;)V
    .locals 3

    .line 10
    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTag"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/yandex/mobile/ads/impl/jc2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/yandex/mobile/ads/impl/jc2;-><init>(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/sm0;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/yandex/mobile/ads/impl/kc2;

    invoke-direct {p1, p3}, Lcom/yandex/mobile/ads/impl/kc2;-><init>(Lcom/yandex/mobile/ads/impl/sm0;)V

    .line 13
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/lc2;->h:Ljava/util/LinkedHashSet;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc2;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/lc2;->e:Lcom/yandex/mobile/ads/impl/ov1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/gl0;->e:Lcom/yandex/mobile/ads/impl/gl0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/gc2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/yandex/mobile/ads/impl/gc2;-><init>(Lcom/yandex/mobile/ads/impl/lc2;Ljava/lang/Object;Lc74;Le74;)V

    invoke-virtual {p3, v1, v2}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;)V

    :goto_0
    return-void
.end method
