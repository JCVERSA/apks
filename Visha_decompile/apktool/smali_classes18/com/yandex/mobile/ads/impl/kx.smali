.class public final Lcom/yandex/mobile/ads/impl/kx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/fz0;

.field private final c:Lcom/yandex/mobile/ads/impl/tz0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/fz0;Lcom/yandex/mobile/ads/impl/tz0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkErrorMapper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kx;->b:Lcom/yandex/mobile/ads/impl/fz0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kx;->c:Lcom/yandex/mobile/ads/impl/tz0;

    return-void
.end method

.method private final a(Ljava/lang/Boolean;)Lcom/yandex/mobile/ads/impl/cy;
    .locals 14

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    new-instance p1, Lcom/yandex/mobile/ads/impl/cy;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$string;->yes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/yandex/mobile/ads/impl/cy;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$string;->no:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 25
    new-instance p1, Lcom/yandex/mobile/ads/impl/cy;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$string;->no_value_set:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    :goto_0
    return-object p1

    .line 26
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/rw;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/iy;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/rw;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->a()Lcom/yandex/mobile/ads/impl/rw$a;

    move-result-object v1

    instance-of v1, v1, Lcom/yandex/mobile/ads/impl/rw$a$c;

    const-string v2, "getString(...)"

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/cy;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v4, Lcom/yandex/mobile/ads/R$string;->not_integrated:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    :goto_0
    move-object/from16 v18, v1

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/cy;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->f()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/cy;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v4, Lcom/yandex/mobile/ads/R$string;->sdk_undefined:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    .line 5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->a()Lcom/yandex/mobile/ads/impl/rw$a;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/mobile/ads/impl/rw$a$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lcom/yandex/mobile/ads/impl/rw$a$b;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw$a$b;->a()Lcom/yandex/mobile/ads/impl/sz0;

    move-result-object v3

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Latest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/kx;->b:Lcom/yandex/mobile/ads/impl/fz0;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/yandex/mobile/ads/impl/fz0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    sget v2, Lcom/yandex/mobile/ads/R$attr;->debug_panel_color_orange:I

    goto :goto_5

    .line 15
    :cond_9
    :goto_4
    sget v2, Lcom/yandex/mobile/ads/R$attr;->debug_panel_label_secondary:I

    .line 16
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->e()Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->d()Ljava/lang/String;

    move-result-object v17

    .line 18
    new-instance v4, Lcom/yandex/mobile/ads/impl/zw;

    invoke-direct {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/zw;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rw;->f()Ljava/lang/String;

    move-result-object v26

    .line 20
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/kx;->c:Lcom/yandex/mobile/ads/impl/tz0;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/tz0;->a(Lcom/yandex/mobile/ads/impl/sz0;)Ljava/lang/String;

    move-result-object v20

    .line 21
    new-instance v0, Lcom/yandex/mobile/ads/impl/iy$g;

    const/16 v25, 0x0

    const/16 v27, 0x3e0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v0

    move-object/from16 v19, v4

    invoke-direct/range {v15 .. v27}, Lcom/yandex/mobile/ads/impl/iy$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/sw;Ljava/lang/String;I)V

    move-object/from16 v1, p1

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ix;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ix;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/iy;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 27
    const-string v1, "debugPanelData"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->c()Lcom/yandex/mobile/ads/impl/xw;

    move-result-object v3

    .line 30
    sget-object v4, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v7, Lcom/yandex/mobile/ads/R$string;->application_info:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xw;->b()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Application ID"

    invoke-direct {v5, v8, v6}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->app_version:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xw;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->system:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xw;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->api_level:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->f()Lcom/yandex/mobile/ads/impl/zx;

    move-result-object v3

    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->sdk_integration:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->ads_sdk_version:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zx;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zx;->a()Lcom/yandex/mobile/ads/impl/ay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ay;->b()Lcom/yandex/mobile/ads/impl/ay$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 41
    new-instance v5, Lcom/yandex/mobile/ads/impl/cy;

    .line 42
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->integration_errors:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/yandex/mobile/ads/R$attr;->debug_panel_color_red:I

    .line 43
    sget v6, Lcom/yandex/mobile/ads/R$drawable;->debug_panel_icon_error:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object v8, v5

    .line 44
    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 45
    :cond_1
    new-instance v5, Lcom/yandex/mobile/ads/impl/cy;

    .line 46
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->integrated:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/yandex/mobile/ads/R$attr;->debug_panel_color_red:I

    sget v6, Lcom/yandex/mobile/ads/R$drawable;->debug_panel_icon_error:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object v8, v5

    .line 47
    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_0

    .line 48
    :cond_2
    new-instance v5, Lcom/yandex/mobile/ads/impl/cy;

    .line 49
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->integrated:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v16, Lcom/yandex/mobile/ads/R$attr;->debug_panel_color_green:I

    .line 50
    sget v6, Lcom/yandex/mobile/ads/R$drawable;->debug_panel_icon_success:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x8

    move-object v14, v5

    .line 51
    invoke-direct/range {v14 .. v19}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    .line 52
    :goto_0
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zx;->a()Lcom/yandex/mobile/ads/impl/ay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ay;->b()Lcom/yandex/mobile/ads/impl/ay$a;

    move-result-object v6

    sget-object v8, Lcom/yandex/mobile/ads/impl/ay$a;->b:Lcom/yandex/mobile/ads/impl/ay$a;

    if-ne v6, v8, :cond_3

    .line 53
    sget v6, Lcom/yandex/mobile/ads/R$attr;->debug_panel_label_primary:I

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/cy;->a()I

    move-result v6

    .line 55
    :goto_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zx;->a()Lcom/yandex/mobile/ads/impl/ay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ay;->a()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 56
    new-instance v15, Lcom/yandex/mobile/ads/impl/zw;

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const-string v9, "\n"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v8 .. v16}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 57
    sget v9, Lcom/yandex/mobile/ads/R$style;->DebugPanelText_Body2:I

    .line 58
    invoke-direct {v3, v6, v9, v8}, Lcom/yandex/mobile/ads/impl/zw;-><init>(IILjava/lang/String;)V

    move-object v15, v3

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    .line 59
    :goto_2
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->sdk_integration_status:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v5, v15}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->a()Lcom/yandex/mobile/ads/impl/gw;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 62
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->advertisement_network_settings:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Lcom/yandex/mobile/ads/impl/iy$f;

    const-string v8, "Page ID"

    invoke-direct {v6, v8, v5}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_6
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v9, Lcom/yandex/mobile/ads/R$string;->app_review_status:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v8, v5}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_7
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gw;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    const-string v6, "app-ads.txt"

    invoke-direct {v5, v6, v3}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_8
    sget-object v3, Lcom/yandex/mobile/ads/impl/iy$b;->a:Lcom/yandex/mobile/ads/impl/iy$b;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->b()Lcom/yandex/mobile/ads/impl/tw;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tw;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tw;->a()Ljava/util/List;

    move-result-object v3

    .line 72
    new-instance v4, Lcom/yandex/mobile/ads/impl/jx;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/jx;-><init>()V

    invoke-static {v3, v4}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/yandex/mobile/ads/impl/rw;

    .line 75
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/rw;->a()Lcom/yandex/mobile/ads/impl/rw$a;

    move-result-object v8

    instance-of v8, v8, Lcom/yandex/mobile/ads/impl/rw$a$a;

    if-eqz v8, :cond_a

    .line 76
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 77
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/yandex/mobile/ads/impl/rw;

    .line 79
    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/rw;->a()Lcom/yandex/mobile/ads/impl/rw$a;

    move-result-object v9

    instance-of v9, v9, Lcom/yandex/mobile/ads/impl/rw$a$b;

    if-eqz v9, :cond_c

    .line 80
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 81
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/yandex/mobile/ads/impl/rw;

    .line 83
    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/rw;->a()Lcom/yandex/mobile/ads/impl/rw$a;

    move-result-object v9

    instance-of v9, v9, Lcom/yandex/mobile/ads/impl/rw$a$c;

    if-eqz v9, :cond_e

    .line 84
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 85
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 86
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v9, Lcom/yandex/mobile/ads/R$string;->completed_integration:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/rw;

    .line 88
    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/rw;)V

    goto :goto_6

    .line 89
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 90
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->invalid_integration:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/rw;

    .line 92
    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/rw;)V

    goto :goto_7

    .line 93
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 94
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v5, Lcom/yandex/mobile/ads/R$string;->missing_integration:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/rw;

    .line 96
    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/rw;)V

    goto :goto_8

    .line 97
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->d()Lcom/yandex/mobile/ads/impl/ax;

    move-result-object v3

    .line 98
    sget-object v4, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->user_privacy:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->age_restricted_user:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ax;->a()Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/lang/Boolean;)Lcom/yandex/mobile/ads/impl/cy;

    move-result-object v8

    const/4 v9, 0x0

    .line 101
    invoke-direct {v5, v6, v8, v9}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    .line 102
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->has_location_consent:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ax;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/lang/Boolean;)Lcom/yandex/mobile/ads/impl/cy;

    move-result-object v8

    .line 104
    invoke-direct {v5, v6, v8, v9}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    .line 105
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->has_user_consent:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ax;->d()Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/kx;->a(Ljava/lang/Boolean;)Lcom/yandex/mobile/ads/impl/cy;

    move-result-object v8

    .line 107
    invoke-direct {v5, v6, v8, v9}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    .line 108
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v8, Lcom/yandex/mobile/ads/R$string;->tcf_consent:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ax;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 110
    new-instance v3, Lcom/yandex/mobile/ads/impl/cy;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v9, Lcom/yandex/mobile/ads/R$string;->provided:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    :goto_9
    const/4 v8, 0x0

    goto :goto_a

    .line 111
    :cond_13
    new-instance v3, Lcom/yandex/mobile/ads/impl/cy;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v9, Lcom/yandex/mobile/ads/R$string;->no_value_set:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0xe

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v24}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    goto :goto_9

    .line 112
    :goto_a
    invoke-direct {v5, v6, v3, v8}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    .line 113
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ix;->e()Lcom/yandex/mobile/ads/impl/hx;

    move-result-object v2

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$e;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/kx;->a:Landroid/content/Context;

    sget v4, Lcom/yandex/mobile/ads/R$string;->features:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/yandex/mobile/ads/impl/iy$h;

    sget-object v3, Lcom/yandex/mobile/ads/impl/iy$h$a;->b:Lcom/yandex/mobile/ads/impl/iy$h$a;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/hx;->a()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/iy$h;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v1}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
