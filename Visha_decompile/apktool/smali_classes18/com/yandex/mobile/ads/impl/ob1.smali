.class public final Lcom/yandex/mobile/ads/impl/ob1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rg2;

.field private final b:Lcom/yandex/mobile/ads/impl/xe2;

.field private final c:Lcom/yandex/mobile/ads/impl/o3;

.field private final d:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/ue2;

.field private final f:Lcom/yandex/mobile/ads/impl/jb1;

.field private final g:Lcom/yandex/mobile/ads/impl/sj0;

.field private final h:Lcom/yandex/mobile/ads/impl/yx1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V
    .locals 1

    const-string v0, "videoViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoOptions"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoImpressionListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoPlaybackEventListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ob1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ob1;->b:Lcom/yandex/mobile/ads/impl/xe2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ob1;->c:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ob1;->d:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ob1;->e:Lcom/yandex/mobile/ads/impl/ue2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ob1;->f:Lcom/yandex/mobile/ads/impl/jb1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ob1;->g:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ob1;->h:Lcom/yandex/mobile/ads/impl/yx1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/ng2;)Lcom/yandex/mobile/ads/impl/nb1;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdPlayer"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "video"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoTracker"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/uc2;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ob1;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ob1;->d:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v10, v1, v2}, Lcom/yandex/mobile/ads/impl/uc2;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/nb1;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ob1;->d:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/ob1;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/ob1;->b:Lcom/yandex/mobile/ads/impl/xe2;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/ob1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/ob1;->e:Lcom/yandex/mobile/ads/impl/ue2;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/ob1;->f:Lcom/yandex/mobile/ads/impl/jb1;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/ob1;->g:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/ob1;->h:Lcom/yandex/mobile/ads/impl/yx1;

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/yandex/mobile/ads/impl/nb1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/jb1;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V

    return-object v1
.end method
