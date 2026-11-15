.class public final Lcom/yandex/mobile/ads/impl/nb1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nb1$a;,
        Lcom/yandex/mobile/ads/impl/nb1$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xe2;

.field private final b:Lcom/yandex/mobile/ads/impl/rg2;

.field private final c:Lcom/yandex/mobile/ads/impl/jb1;

.field private final d:Lcom/yandex/mobile/ads/impl/yx1;

.field private final e:Lcom/yandex/mobile/ads/impl/ta1;

.field private final f:Lcom/yandex/mobile/ads/impl/nl1;

.field private final g:Lcom/yandex/mobile/ads/impl/zb1;

.field private final h:Lcom/yandex/mobile/ads/impl/xh1;

.field private final i:Lcom/yandex/mobile/ads/impl/xh1;

.field private final j:Lcom/yandex/mobile/ads/impl/gp1;

.field private final k:Lcom/yandex/mobile/ads/impl/nb1$a;

.field private final l:Lcom/yandex/mobile/ads/impl/it0;

.field private m:Lcom/yandex/mobile/ads/impl/xh1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/jb1;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    move-object/from16 v10, p7

    move-object/from16 v1, p11

    move-object/from16 v9, p12

    const-string v2, "context"

    invoke-static {v12, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adResponse"

    invoke-static {v13, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfiguration"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoAdPlayer"

    invoke-static {v14, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "video"

    invoke-static {v15, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoOptions"

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoViewAdapter"

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "playbackParametersProvider"

    move-object/from16 v8, p8

    invoke-static {v8, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoTracker"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "impressionTrackingListener"

    move-object/from16 v6, p10

    invoke-static {v6, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeVideoPlaybackEventListener"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imageProvider"

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v11, v0, Lcom/yandex/mobile/ads/impl/nb1;->a:Lcom/yandex/mobile/ads/impl/xe2;

    iput-object v10, v0, Lcom/yandex/mobile/ads/impl/nb1;->b:Lcom/yandex/mobile/ads/impl/rg2;

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/nb1;->c:Lcom/yandex/mobile/ads/impl/jb1;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->d:Lcom/yandex/mobile/ads/impl/yx1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/gp1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/nb1$b;

    invoke-direct {v3, v0}, Lcom/yandex/mobile/ads/impl/nb1$b;-><init>(Lcom/yandex/mobile/ads/impl/nb1;)V

    invoke-direct {v2, v10, v3}, Lcom/yandex/mobile/ads/impl/gp1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/mp1;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->j:Lcom/yandex/mobile/ads/impl/gp1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/nb1$a;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/nb1$a;-><init>(Lcom/yandex/mobile/ads/impl/nb1;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->k:Lcom/yandex/mobile/ads/impl/nb1$a;

    new-instance v2, Lcom/yandex/mobile/ads/impl/it0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/it0;-><init>()V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->l:Lcom/yandex/mobile/ads/impl/it0;

    new-instance v5, Lcom/yandex/mobile/ads/impl/cc1;

    invoke-direct {v5, v10}, Lcom/yandex/mobile/ads/impl/cc1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/ta1;

    invoke-direct {v2, v14}, Lcom/yandex/mobile/ads/impl/ta1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->e:Lcom/yandex/mobile/ads/impl/ta1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/zb1;

    invoke-direct {v2, v14}, Lcom/yandex/mobile/ads/impl/zb1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/nb1;->g:Lcom/yandex/mobile/ads/impl/zb1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/dd2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/dd2;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/xa1;

    invoke-direct {v2, v10, v14, v5, v1}, Lcom/yandex/mobile/ads/impl/xa1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/jb1;)V

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/xa1;->a(Lcom/yandex/mobile/ads/impl/dd2;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/ib1;

    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v16

    move-object v1, v2

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 p11, v3

    move-object/from16 v3, p2

    move-object/from16 v18, v5

    move-object/from16 v5, p4

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object v0, v9

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object v15, v11

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/ib1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/dd2;Lcom/yandex/mobile/ads/impl/ue2;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/np1;

    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v2

    move-object/from16 v3, p11

    invoke-direct {v1, v14, v2, v3}, Lcom/yandex/mobile/ads/impl/np1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/dd2;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/ac1;

    invoke-direct {v2, v14, v15}, Lcom/yandex/mobile/ads/impl/ac1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/xe2;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v4, Lcom/yandex/mobile/ads/impl/d91;

    invoke-direct {v4, v13}, Lcom/yandex/mobile/ads/impl/d91;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    invoke-direct {v3, v12, v4, v0}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/nl1;

    move-object/from16 v4, p5

    invoke-direct {v0, v4, v3}, Lcom/yandex/mobile/ads/impl/nl1;-><init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/jj0;)V

    move-object/from16 v3, p0

    iput-object v0, v3, Lcom/yandex/mobile/ads/impl/nb1;->f:Lcom/yandex/mobile/ads/impl/nl1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/xh1;

    move-object/from16 v5, p7

    move-object/from16 v6, v17

    invoke-direct {v4, v5, v6, v2, v0}, Lcom/yandex/mobile/ads/impl/xh1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/nc2;Lcom/yandex/mobile/ads/impl/ac1;Lcom/yandex/mobile/ads/impl/nl1;)V

    iput-object v4, v3, Lcom/yandex/mobile/ads/impl/nb1;->i:Lcom/yandex/mobile/ads/impl/xh1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/xh1;

    invoke-direct {v4, v5, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/xh1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/nc2;Lcom/yandex/mobile/ads/impl/ac1;Lcom/yandex/mobile/ads/impl/nl1;)V

    iput-object v4, v3, Lcom/yandex/mobile/ads/impl/nb1;->h:Lcom/yandex/mobile/ads/impl/xh1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/jb1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->c:Lcom/yandex/mobile/ads/impl/jb1;

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/nb1;Lcom/yandex/mobile/ads/impl/xh1;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->k:Lcom/yandex/mobile/ads/impl/nb1$a;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/xh1;->a(Lcom/yandex/mobile/ads/impl/tc2;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xh1;->a()V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/gp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->j:Lcom/yandex/mobile/ads/impl/gp1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/xh1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->h:Lcom/yandex/mobile/ads/impl/xh1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/yx1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->d:Lcom/yandex/mobile/ads/impl/yx1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/it0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->l:Lcom/yandex/mobile/ads/impl/it0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/rg2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->b:Lcom/yandex/mobile/ads/impl/rg2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->b:Lcom/yandex/mobile/ads/impl/rg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/yb1;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 2

    .line 7
    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->e:Lcom/yandex/mobile/ads/impl/ta1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nb1;->a:Lcom/yandex/mobile/ads/impl/xe2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ta1;->a(Lcom/yandex/mobile/ads/impl/xe2;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->g:Lcom/yandex/mobile/ads/impl/zb1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/zb1;->a(Lcom/yandex/mobile/ads/impl/yb1;)V

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->f:Lcom/yandex/mobile/ads/impl/nl1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/nl1;->a(Lcom/yandex/mobile/ads/impl/af2;)V

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nb1;->i:Lcom/yandex/mobile/ads/impl/xh1;

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->k:Lcom/yandex/mobile/ads/impl/nb1$a;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/xh1;->a(Lcom/yandex/mobile/ads/impl/tc2;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xh1;->a()V

    :cond_1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 1

    .line 2
    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1;->m:Lcom/yandex/mobile/ads/impl/xh1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/xh1;->a(Lcom/yandex/mobile/ads/impl/yb1;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1;->g:Lcom/yandex/mobile/ads/impl/zb1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zb1;->b(Lcom/yandex/mobile/ads/impl/yb1;)V

    return-void
.end method
