.class public final Lio/appmetrica/analytics/impl/xc;
.super Lio/appmetrica/analytics/impl/r5;
.source "SourceFile"


# instance fields
.field public final n:Lio/appmetrica/analytics/impl/Uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Uj;Lio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/k5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/impl/Zg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lio/appmetrica/analytics/impl/Uj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lio/appmetrica/analytics/impl/Kb;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lio/appmetrica/analytics/impl/y9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/r5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Kb;Lio/appmetrica/analytics/impl/y9;)V

    move-object/from16 v1, p9

    iput-object v1, v0, Lio/appmetrica/analytics/impl/xc;->n:Lio/appmetrica/analytics/impl/Uj;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/vc;)Lio/appmetrica/analytics/impl/l3;
    .locals 9
    .param p1    # Lio/appmetrica/analytics/impl/vc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v7, Lio/appmetrica/analytics/impl/l3;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xc;->n:Lio/appmetrica/analytics/impl/Uj;

    .line 2
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xc;->n:Lio/appmetrica/analytics/impl/Uj;

    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->f()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-string v4, "com.android.billingclient.BuildConfig"

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    const-string v5, "VERSION_NAME"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 7
    :goto_0
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_7

    .line 8
    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    const-string v5, "2."

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v4, v5, v6, v8, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    :goto_2
    move-object v4, v0

    goto :goto_4

    .line 10
    :cond_2
    const-string v5, "3."

    invoke-static {v4, v5, v6, v8, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 11
    :cond_3
    const-string v5, "4."

    invoke-static {v4, v5, v6, v8, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 12
    :cond_4
    const-string v5, "5."

    invoke-static {v4, v5, v6, v8, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 13
    :cond_5
    const-string v5, "6."

    invoke-static {v4, v5, v6, v8, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 14
    :cond_6
    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 15
    :cond_7
    :goto_3
    sget-object v0, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_2

    .line 16
    :goto_4
    new-instance v5, Lio/appmetrica/analytics/impl/h3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->c:Landroid/content/Context;

    .line 17
    const-class v0, Lio/appmetrica/analytics/impl/u2;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p0

    invoke-direct {v5, p0}, Lio/appmetrica/analytics/impl/h3;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;)V

    .line 18
    new-instance v6, Lio/appmetrica/analytics/impl/g3;

    .line 19
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Uj;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    .line 20
    invoke-direct {v6, p1, p0}, Lio/appmetrica/analytics/impl/g3;-><init>(Lio/appmetrica/analytics/impl/Wa;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/l3;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/BillingType;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;)V

    return-object v7
.end method

.method public final a(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/w9;
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/B9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/S6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/Fg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/impl/Le;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r5;->l:Lio/appmetrica/analytics/impl/y9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/appmetrica/analytics/impl/y9;->a(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)Lio/appmetrica/analytics/impl/x9;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/x9;->a()Lio/appmetrica/analytics/impl/w9;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/vc;)Lio/appmetrica/analytics/impl/eg;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/vc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/eg;

    new-instance v0, Lio/appmetrica/analytics/impl/ce;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/ce;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    new-instance v1, Lio/appmetrica/analytics/impl/uc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/uc;-><init>(Lio/appmetrica/analytics/impl/vc;)V

    invoke-direct {p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/eg;-><init>(Lio/appmetrica/analytics/impl/Ua;Lio/appmetrica/analytics/impl/Zf;Lio/appmetrica/analytics/impl/Sa;)V

    return-object p0
.end method
