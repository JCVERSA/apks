.class public final Lcom/yandex/mobile/ads/impl/ec2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ec2$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/yandex/mobile/ads/impl/ec2;

.field public static final synthetic d:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/iq1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ec2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/iq1;)V
    .locals 1

    const-string v0, "requestQueue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ec2;->a:Lcom/yandex/mobile/ads/impl/iq1;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/ec2;
    .locals 1

    .line 29
    sget-object v0, Lcom/yandex/mobile/ads/impl/ec2;->c:Lcom/yandex/mobile/ads/impl/ec2;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ec2;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/ec2;->c:Lcom/yandex/mobile/ads/impl/ec2;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/ec2;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/aa2;)V
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "adConfiguration"

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestConfiguration"

    invoke-static {p3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestConfigurationParametersProvider"

    invoke-static {v4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "requestTag"

    invoke-static {v5, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "requestListener"

    invoke-static {v6, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/ja2;

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/pa2;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/pa2;-><init>()V

    .line 6
    invoke-direct {v0, v7}, Lcom/yandex/mobile/ads/impl/ja2;-><init>(Lcom/yandex/mobile/ads/impl/pa2;)V

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ja2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/aa2;)Lcom/yandex/mobile/ads/impl/w92;

    move-result-object v0

    move-object v1, p0

    .line 8
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ec2;->a:Lcom/yandex/mobile/ads/impl/iq1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/qk2;)V
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "adConfiguration"

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestConfigurationParametersProvider"

    invoke-static {p3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "wrapperAd"

    invoke-static {v4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "reportParametersProvider"

    invoke-static {v5, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "requestListener"

    invoke-static {v6, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/yandex/mobile/ads/impl/yk2;

    .line 12
    new-instance v7, Lcom/yandex/mobile/ads/impl/pa2;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/pa2;-><init>()V

    .line 13
    new-instance v8, Lcom/yandex/mobile/ads/impl/rn0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/rn0;-><init>()V

    .line 14
    invoke-direct {v0, v7, v8}, Lcom/yandex/mobile/ads/impl/yk2;-><init>(Lcom/yandex/mobile/ads/impl/pa2;Lcom/yandex/mobile/ads/impl/rn0;)V

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/yk2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/qk2;)Lcom/yandex/mobile/ads/impl/ta2;

    move-result-object v0

    move-object v1, p0

    .line 16
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ec2;->a:Lcom/yandex/mobile/ads/impl/iq1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/qi2;)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 17
    const-string v0, "context"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adConfiguration"

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "requestConfiguration"

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestTag"

    invoke-static {v4, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestListener"

    invoke-static {v5, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/yandex/mobile/ads/impl/pi2;

    .line 20
    new-instance v11, Lcom/yandex/mobile/ads/impl/b8;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/b8;-><init>()V

    .line 21
    new-instance v12, Lcom/yandex/mobile/ads/impl/ri2;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/ri2;-><init>()V

    .line 22
    new-instance v13, Lcom/yandex/mobile/ads/impl/bq1;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/bq1;-><init>()V

    .line 23
    new-instance v14, Lcom/yandex/mobile/ads/impl/hq;

    invoke-direct {v14, v13}, Lcom/yandex/mobile/ads/impl/hq;-><init>(Lcom/yandex/mobile/ads/impl/bq1;)V

    .line 24
    new-instance v15, Lcom/yandex/mobile/ads/impl/k50;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/k50;-><init>()V

    .line 25
    new-instance v16, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    move-object v10, v0

    .line 26
    invoke-direct/range {v10 .. v16}, Lcom/yandex/mobile/ads/impl/pi2;-><init>(Lcom/yandex/mobile/ads/impl/b8;Lcom/yandex/mobile/ads/impl/ri2;Lcom/yandex/mobile/ads/impl/bq1;Lcom/yandex/mobile/ads/impl/hq;Lcom/yandex/mobile/ads/impl/k50;Lcom/yandex/mobile/ads/impl/kx1;)V

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/pi2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/qi2;)Lcom/yandex/mobile/ads/impl/ni2;

    move-result-object v0

    move-object/from16 v1, p0

    .line 28
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ec2;->a:Lcom/yandex/mobile/ads/impl/iq1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V

    return-void
.end method
