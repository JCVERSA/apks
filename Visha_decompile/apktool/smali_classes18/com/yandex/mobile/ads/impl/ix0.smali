.class public final Lcom/yandex/mobile/ads/impl/ix0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vg;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/pk0;

.field private final d:Lcom/yandex/mobile/ads/impl/jx0;

.field private final e:Lcom/yandex/mobile/ads/impl/e51;

.field private final f:Lcom/yandex/mobile/ads/impl/ox0;

.field private final g:Lcom/yandex/mobile/ads/impl/aw0;

.field private final h:Lcom/yandex/mobile/ads/impl/yx1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vg;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/jx0;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/pj2;Lcom/yandex/mobile/ads/impl/yx1;)V
    .locals 1

    const-string v0, "assetValueProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionEventsObservable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControllers"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewRenderController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ix0;->a:Lcom/yandex/mobile/ads/impl/vg;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ix0;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ix0;->c:Lcom/yandex/mobile/ads/impl/pk0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ix0;->d:Lcom/yandex/mobile/ads/impl/jx0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ix0;->e:Lcom/yandex/mobile/ads/impl/e51;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ix0;->f:Lcom/yandex/mobile/ads/impl/ox0;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ix0;->g:Lcom/yandex/mobile/ads/impl/aw0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ix0;->h:Lcom/yandex/mobile/ads/impl/yx1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;)Lcom/yandex/mobile/ads/impl/hx0;
    .locals 14

    move-object v0, p0

    const-string v1, "mediaView"

    move-object v3, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeMediaContent"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeForcePauseObserver"

    move-object/from16 v9, p4

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ix0;->a:Lcom/yandex/mobile/ads/impl/vg;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vg;->a()Lcom/yandex/mobile/ads/impl/ex0;

    move-result-object v13

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ix0;->d:Lcom/yandex/mobile/ads/impl/jx0;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ix0;->b:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/ix0;->g:Lcom/yandex/mobile/ads/impl/aw0;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/ix0;->c:Lcom/yandex/mobile/ads/impl/pk0;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/ix0;->e:Lcom/yandex/mobile/ads/impl/e51;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/ix0;->f:Lcom/yandex/mobile/ads/impl/ox0;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/ix0;->h:Lcom/yandex/mobile/ads/impl/yx1;

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v13}, Lcom/yandex/mobile/ads/impl/jx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
