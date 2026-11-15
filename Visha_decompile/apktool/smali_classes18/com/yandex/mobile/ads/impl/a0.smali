.class public final Lcom/yandex/mobile/ads/impl/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/tp1;

.field private final d:Lcom/yandex/mobile/ads/impl/s91;

.field private final e:Lcom/yandex/mobile/ads/impl/g71;

.field private final f:Lcom/yandex/mobile/ads/impl/p51;

.field private final g:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ep;Lcom/yandex/mobile/ads/impl/s91;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeOpenUrlHandlerCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/a0;->d:Lcom/yandex/mobile/ads/impl/s91;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/a0;->e:Lcom/yandex/mobile/ads/impl/g71;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/a0;->g:Lcom/yandex/mobile/ads/impl/x71;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/x;)Lcom/yandex/mobile/ads/impl/z;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/x;",
            ")",
            "Lcom/yandex/mobile/ads/impl/z<",
            "+",
            "Lcom/yandex/mobile/ads/impl/x;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/a0;->d:Lcom/yandex/mobile/ads/impl/s91;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/s91;->a(Lcom/yandex/mobile/ads/impl/tp1;)Lcom/yandex/mobile/ads/impl/r91;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/yy;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/a0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    new-instance v10, Lcom/yandex/mobile/ads/impl/dk1;

    invoke-direct {v10, v5, v6}, Lcom/yandex/mobile/ads/impl/dk1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/yy;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/r91;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/dk1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/vy;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/vy;-><init>(Lcom/yandex/mobile/ads/impl/yy;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/mp;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/mp;-><init>(Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/p51;)V

    move-object v0, v1

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ya0;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/a0;->e:Lcom/yandex/mobile/ads/impl/g71;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    new-instance v7, Lcom/yandex/mobile/ads/impl/xa0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/xa0;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/ya0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/xa0;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/pa0;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/pa0;-><init>(Lcom/yandex/mobile/ads/impl/ya0;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "adtune"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/yandex/mobile/ads/impl/yb;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    invoke-direct {v1, v2, v8}, Lcom/yandex/mobile/ads/impl/yb;-><init>(Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/v9;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v2, p1, v3}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/kb;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/a0;->c:Lcom/yandex/mobile/ads/impl/tp1;

    invoke-direct {v3, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/kb;-><init>(Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/tp1;)V

    move-object v0, v3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "social_action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v9, Lcom/yandex/mobile/ads/impl/hy1;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/a0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/a0;->g:Lcom/yandex/mobile/ads/impl/x71;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v1, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v6

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/hy1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/x71;Lcom/yandex/mobile/ads/impl/sp1;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/y41;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/a0;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "getApplicationContext(...)"

    invoke-static {v3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/y41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Landroid/content/Context;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/f12;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/a0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/a0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/a0;->f:Lcom/yandex/mobile/ads/impl/p51;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/a0;->e:Lcom/yandex/mobile/ads/impl/g71;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/a0;->d:Lcom/yandex/mobile/ads/impl/s91;

    new-instance v11, Lcom/yandex/mobile/ads/impl/k12;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/d91;

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/impl/d91;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/g71;->d()Lcom/yandex/mobile/ads/impl/sj0;

    move-result-object v12

    sget-object v13, Lcom/yandex/mobile/ads/impl/id1;->c:Lcom/yandex/mobile/ads/impl/id1$a;

    invoke-virtual {v13, p1}, Lcom/yandex/mobile/ads/impl/id1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/id1;

    move-result-object v13

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/id1;->b()Lcom/yandex/mobile/ads/impl/jz1;

    move-result-object v13

    invoke-direct {v0, p1, v1, v12, v13}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/oj0;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/lj1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/lj1;-><init>()V

    invoke-direct {v11, v0, v1}, Lcom/yandex/mobile/ads/impl/k12;-><init>(Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/lj1;)V

    move-object v0, v10

    move-object v1, p1

    move-object v7, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/f12;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y41;Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/s91;Lcom/yandex/mobile/ads/impl/k12;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/x02;

    invoke-direct {v0, v9, v10}, Lcom/yandex/mobile/ads/impl/x02;-><init>(Lcom/yandex/mobile/ads/impl/hy1;Lcom/yandex/mobile/ads/impl/f12;)V

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x710060b8 -> :sswitch_4
        -0x54c23d65 -> :sswitch_3
        -0xb6a147b -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x258156e6 -> :sswitch_0
    .end sparse-switch
.end method
