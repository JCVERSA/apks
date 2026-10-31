.class public Lo/nc6;
.super Lo/u25;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nc6$f;
    }
.end annotation


# instance fields
.field public final d:Ljava/util/HashSet;

.field public e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

.field f:Lo/b7;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lo/sd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lo/y93;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lo/gb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lo/rh3;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/u25;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/nc6;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nc6$f;

    invoke-interface {p1, p0}, Lo/nc6$f;->k(Lo/nc6;)V

    new-instance p1, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    invoke-direct {p1}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;-><init>()V

    iput-object p1, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    return-void
.end method

.method public static synthetic F(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lo/nc6;->i0(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    return-void
.end method

.method public static synthetic G(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p1, p2, p3, p4}, Lo/nc6;->j0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V

    const/4 v0, 0x5

    return-void
.end method

.method public static synthetic H(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lo/nc6;->k0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    const/4 v0, 0x5

    return-void
.end method

.method public static bridge synthetic I(Lo/nc6;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lo/nc6;->g0(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    return-void
.end method

.method public static bridge synthetic J(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lo/nc6;->m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    return-void
.end method

.method public static bridge synthetic K(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lo/nc6;->n0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    const/4 v0, 0x3

    return-void
.end method

.method public static bridge synthetic L(Lo/nc6;Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2}, Lo/nc6;->p0(Landroid/view/ViewGroup;Z)V

    const/4 v0, 0x2

    return-void
.end method

.method public static bridge synthetic M(Lo/nc6;Landroid/view/ViewGroup;JLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/nc6;->q0(Landroid/view/ViewGroup;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic N(Lo/nc6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lo/aa;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    return-void
.end method

.method public static synthetic O(Lo/nc6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lo/aa;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P(Lo/nc6;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    const/4 v0, 0x2

    return-void
.end method

.method public static synthetic Q(Lo/nc6;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    return-void
.end method

.method public static synthetic R(Lo/nc6;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    const/4 v0, 0x4

    return-void
.end method

.method public static synthetic S(Lo/nc6;Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void
.end method

.method public static synthetic T(Lo/nc6;Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void
.end method

.method public static synthetic U(Lo/nc6;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lo/aa;->p(Ljava/lang/String;)V

    const/4 v0, 0x1

    return-void
.end method

.method public static synthetic V(Lo/nc6;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lo/aa;->t(Ljava/lang/String;)V

    const/4 v0, 0x1

    return-void
.end method

.method public static synthetic W(Lo/nc6;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Lo/aa;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic X(Lo/nc6;Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    const/4 v0, 0x6

    return-void
.end method

.method public static synthetic Y(Lo/nc6;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    return-void
.end method

.method public static synthetic Z(Lo/nc6;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    const/4 v0, 0x2

    return-void
.end method

.method public static synthetic a0(Lo/nc6;Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void
.end method

.method public static synthetic b0(Lo/nc6;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lo/aa;->s(I)V

    return-void
.end method

.method public static e0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->stopTracking()V

    const/4 v1, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setListener(Lnet/pubnative/mediation/request/model/PubnativeAdModel$Listener;)V

    const/4 v1, 0x2

    return-void
.end method

.method public static synthetic i0(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBlurBackground:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x1

    check-cast p0, Landroid/widget/ImageView;

    const/4 v2, 0x7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x5

    if-nez v0, :cond_0

    const/16 v0, 0x19

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBlurImage(Landroid/view/View;Landroid/graphics/Bitmap;II)V

    :cond_0
    return-void
.end method

.method public static synthetic j0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setEndLoadingTime(J)V

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x3

    const-string v2, "nrsieutieqettse_cml"

    const-string v2, "client_request_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    sub-long/2addr p1, p3

    const/4 v3, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x6

    const-string p2, "black_screen_elapsed"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    sget-object p1, Lcom/snaptube/ads_log_v2/AdLogV2Action;->SPLASH_BLACK_SCREEN_END:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {p1}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p1

    new-instance p2, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    invoke-direct {p2, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {p1, p2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    const/4 v3, 0x2

    return-void
.end method

.method public static synthetic k0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setStartLoadingTime(J)V

    const/4 v1, 0x1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x7

    const-string p2, "client_request_time"

    const/4 v1, 0x7

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    sget-object p1, Lcom/snaptube/ads_log_v2/AdLogV2Action;->SPLASH_BLACK_SCREEN_START:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {p1}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p1

    const/4 v1, 0x0

    new-instance p2, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    const/4 v1, 0x1

    invoke-direct {p2, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    const/4 v1, 0x3

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return-void

    :cond_0
    const/4 v0, 0x3

    check-cast p2, Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    invoke-static {p2}, Lo/nc6;->e0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lo/nc6;->i:Lo/gb;

    invoke-interface {v0, p1}, Lo/gb;->e(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c0(Lo/db;)V
    .locals 14

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v10

    const/4 v13, 0x3

    invoke-virtual {p1}, Lo/db;->j()J

    move-result-wide v7

    const/4 v13, 0x1

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x5

    if-eqz v1, :cond_1

    const/4 v13, 0x7

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVastUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x4

    if-nez v1, :cond_0

    const/4 v13, 0x5

    goto :goto_0

    :cond_0
    sget p1, Lcom/snaptube/premium/base/ui/R$id;->nativeAdPlayerContainer:I

    const/4 v13, 0x6

    invoke-virtual {v9, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v13, 0x5

    check-cast p1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x2

    if-eqz p1, :cond_6

    const/4 v13, 0x7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->H0(Z)V

    const/4 v13, 0x2

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v13, 0x6

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    const/4 v13, 0x7

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->k(Lo/ga8;)V

    sget v1, Lcom/snaptube/premium/base/ui/R$id;->nativeAdPlayerContainer:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x2

    if-eqz v2, :cond_2

    const/4 v13, 0x4

    check-cast v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    :goto_1
    move-object v11, v1

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    new-instance v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x6

    invoke-direct {v1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    new-instance v0, Lo/kc6;

    invoke-direct {v0, v9}, Lo/kc6;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v11, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->setAdPlayerViewListener(Lcom/snaptube/ads/view/AdPlayerView$b;)V

    const/4 v13, 0x2

    const/4 v0, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x7

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x5

    invoke-virtual {v11, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->setPlacement(Ljava/lang/String;)V

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/snaptube/ads/view/SplashAdView;

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    new-instance v12, Lo/nc6$e;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v2, v11

    move-object v4, v9

    move-object v4, v9

    move-object v5, v10

    move-object v5, v10

    move-object v6, p1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v8}, Lo/nc6$e;-><init>(Lo/nc6;Lcom/snaptube/ads/view/AdPlayerContainer;Ljava/lang/String;Landroid/view/ViewGroup;Lnet/pubnative/mediation/request/model/PubnativeAdModel;Lo/db;J)V

    invoke-virtual {v11, v12}, Lcom/snaptube/ads/view/AdPlayerContainer;->c0(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V

    const/4 v13, 0x6

    goto :goto_3

    :cond_3
    const/4 v13, 0x6

    instance-of v0, v10, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v0, :cond_4

    move-object v0, v10

    move-object v0, v10

    check-cast v0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    invoke-virtual {v0}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->isVastVideo()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    instance-of v0, v9, Lcom/snaptube/ads/nativead/AdView;

    const/4 v13, 0x2

    if-eqz v0, :cond_4

    move-object v0, v9

    move-object v0, v9

    const/4 v13, 0x1

    check-cast v0, Lcom/snaptube/ads/nativead/AdView;

    invoke-virtual {p1}, Lo/db;->b()I

    move-result p1

    const/4 v13, 0x3

    int-to-float p1, p1

    const/4 v13, 0x0

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :cond_4
    :goto_3
    sget p1, Lcom/snaptube/ads/R$id;->nativeAdCover:I

    invoke-virtual {v9, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, v9, Lcom/snaptube/ads/nativead/AdView;

    const/4 v13, 0x4

    if-eqz v0, :cond_5

    const/4 v13, 0x4

    check-cast v9, Lcom/snaptube/ads/nativead/AdView;

    goto :goto_4

    :cond_5
    const/4 v13, 0x4

    const/4 v9, 0x0

    :goto_4
    const/4 v13, 0x6

    invoke-virtual {v11, v10, p1, v9}, Lcom/snaptube/ads/view/AdPlayerContainer;->d0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;Landroid/view/View;Lcom/snaptube/ads/nativead/AdView;)V

    :cond_6
    :goto_5
    return-void
.end method

.method public final d0(Landroid/content/Context;Lo/db;)V
    .locals 13

    invoke-virtual {p2}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v12, 0x6

    invoke-virtual {p2}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v8

    invoke-virtual {p2}, Lo/db;->k()Z

    move-result v9

    const/4 v12, 0x5

    invoke-virtual {p2}, Lo/db;->i()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x6

    instance-of v11, v7, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v11, :cond_0

    const/4 v12, 0x7

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdxBannerHtml()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v12, 0x4

    new-instance p1, Lnet/pubnative/mediation/exception/AdPosRequestException;

    const/4 v12, 0x1

    const-string p2, "format_error"

    const/4 v0, 0x3

    const/4 v12, 0x7

    invoke-direct {p1, p2, v0}, Lnet/pubnative/mediation/exception/AdPosRequestException;-><init>(Ljava/lang/String;I)V

    const/4 v12, 0x0

    invoke-virtual {p0, v10, p1}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    const/4 v12, 0x7

    invoke-virtual {v0, v7}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->e(Landroid/view/ViewGroup;)V

    :cond_1
    const/4 v12, 0x3

    invoke-virtual {p0, v8}, Lo/nc6;->l0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    const/4 v12, 0x2

    invoke-virtual {p2}, Lo/db;->g()I

    move-result v0

    const/4 v12, 0x3

    invoke-virtual {p2}, Lo/db;->h()I

    move-result v1

    const/4 v12, 0x7

    invoke-virtual {p2}, Lo/db;->f()I

    move-result v2

    invoke-virtual {p2}, Lo/db;->e()I

    move-result v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerMargin(IIII)V

    invoke-virtual {p2}, Lo/db;->a()I

    move-result v0

    const/4 v12, 0x1

    invoke-virtual {v8, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerWidth(I)V

    const/4 v12, 0x1

    invoke-virtual {p2}, Lo/db;->b()I

    move-result v0

    const/4 v12, 0x3

    invoke-virtual {v8, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerRadius(I)V

    const/4 v12, 0x7

    invoke-virtual {v8, p1, v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->interceptBindData(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v12, 0x6

    if-eqz v0, :cond_2

    const/4 v12, 0x2

    return-void

    :cond_2
    invoke-virtual {v8, v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->bindAdxBanner(Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v12, 0x3

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    iget-object p2, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    if-eqz p2, :cond_3

    const/4 v12, 0x3

    invoke-virtual {p2, p1, v7, v10, v8}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->b(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_3
    invoke-static {v7, v8}, Lcom/snaptube/ad/tracker/TrackManager;->i(Landroid/view/View;Lo/ji3;)V

    const/4 v12, 0x2

    invoke-static {}, Lcom/PinkiePie;->DianePie()V

    const/4 v12, 0x2

    invoke-virtual {v8, p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->trackLifecycle(Landroid/content/Context;)V

    const/4 v12, 0x3

    return-void

    :cond_4
    invoke-static {v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->findAdxBanner(Landroid/view/ViewGroup;)Lcom/snaptube/base/view/AdxBannerContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/snaptube/base/view/AdxBannerContainer;->unbind()V

    :cond_5
    sget v0, Lcom/snaptube/ads/R$id;->adchoice_container:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v12, 0x3

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v12, 0x7

    if-eqz v0, :cond_6

    const/4 v12, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v12, 0x6

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v12, 0x6

    invoke-virtual {v8, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdvertisingDisclosureView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/4 v12, 0x7

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v0

    const/4 v12, 0x3

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->NATIVE:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v12, 0x3

    if-eq v0, v1, :cond_7

    const/4 v12, 0x0

    instance-of v0, v8, Lo/nc3;

    if-eqz v0, :cond_8

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v2, p2

    move-object v3, v7

    const/4 v12, 0x6

    move v4, v11

    move v4, v11

    move-object v5, v8

    move-object v6, v10

    const/4 v12, 0x2

    invoke-virtual/range {v0 .. v6}, Lo/nc6;->o0(Landroid/content/Context;Lo/db;Landroid/view/ViewGroup;ZLnet/pubnative/mediation/request/model/PubnativeAdModel;Ljava/lang/String;)V

    :cond_8
    const/4 v12, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x7

    const-string v1, "shouldTrack="

    const/4 v12, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    const-string v1, "PubNativeAdManager"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x6

    if-eqz v9, :cond_a

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    const/4 v12, 0x6

    instance-of v0, v8, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v0, :cond_9

    move-object v0, v8

    move-object v0, v8

    const/4 v12, 0x0

    check-cast v0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    const/4 v12, 0x2

    new-instance v1, Lo/nc6$b;

    invoke-direct {v1, p0, v8, p2}, Lo/nc6$b;-><init>(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;Lo/db;)V

    const/4 v12, 0x2

    invoke-virtual {v0, v1}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->setSnaptubeAdListener(Lcom/snaptube/ads/selfbuild/request/model/SnaptubeAdModel$f;)V

    :cond_9
    invoke-static {v7, v8}, Lcom/snaptube/ad/tracker/TrackManager;->i(Landroid/view/View;Lo/ji3;)V

    const/4 v12, 0x5

    invoke-static {}, Lcom/PinkiePie;->DianePie()V

    invoke-virtual {v8, p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->trackLifecycle(Landroid/content/Context;)V

    :cond_a
    sget p1, Lcom/snaptube/ads/R$id;->btn_remove_ad:I

    const/4 v12, 0x7

    invoke-virtual {v7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    const/4 v12, 0x5

    invoke-virtual {p2, p1, v10, v8}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->c(Landroid/view/View;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_b
    const/4 v12, 0x2

    return-void
.end method

.method public e(Lo/db;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Lo/nc6;->f0(Lo/db;)V

    const/4 v0, 0x4

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lnet/pubnative/mediation/exception/AdPosRequestException;

    const/4 v0, 0x3

    const-string p3, "pos_no_config"

    const/4 p4, 0x3

    invoke-direct {p2, p3, p4}, Lnet/pubnative/mediation/exception/AdPosRequestException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    iget-object p2, p0, Lo/nc6;->i:Lo/gb;

    const/4 v0, 0x3

    invoke-static {p1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p1

    const/4 v0, 0x7

    invoke-interface {p2, p1}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method

.method public final f0(Lo/db;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRenderAd params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    const-string v1, "bNamguavtAiMernaed"

    const-string v1, "PubNativeAdManager"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    const/4 v3, 0x7

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIsRendered()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    const-string p1, "pe booip.rers  caerdi s en sdakuerdatSre sndcead"

    const-string p1, "Skip render process because ad data is rendered."

    const/4 v3, 0x5

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setIsRendered(Z)Z

    invoke-virtual {p1}, Lo/db;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-instance v2, Lo/nc6$a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1}, Lo/nc6$a;-><init>(Lo/nc6;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setListener(Lnet/pubnative/mediation/request/model/PubnativeAdModel$Listener;)V

    iget-object v0, p0, Lo/u25;->c:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v0, p1}, Lo/nc6;->d0(Landroid/content/Context;Lo/db;)V

    const/4 v3, 0x7

    return-void
.end method

.method public final g0(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x2

    const-string p2, "tsggabr_soer"

    const-string p2, "tag_progress"

    const/4 v1, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x5

    if-nez p2, :cond_1

    const/4 v1, 0x1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget p2, Lcom/snaptube/ads/R$id;->ad_text_label_close_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x7

    if-eqz p1, :cond_2

    const/4 v1, 0x7

    sget p2, Lcom/snaptube/ads/R$id;->ad_text_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x7

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v1, 0x1

    return-void
.end method

.method public final h0(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x5

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v5, 0x3

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v5, 0x1

    sget v2, Lcom/snaptube/premium/base/ui/R$drawable;->progressbar_circle:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x4

    new-instance v2, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v5, 0x7

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x5

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    move v5, v4

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    const/16 v4, 0x11

    const/4 v5, 0x5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "tag_progress"

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x4

    sget v1, Lcom/snaptube/ads/R$id;->loading_progress:I

    const/4 v5, 0x5

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x3

    sget v0, Lcom/snaptube/ads/R$id;->ad_text_label_close_layout:I

    const/4 v5, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    const/4 v5, 0x4

    sget v0, Lcom/snaptube/ads/R$id;->ad_text_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x2

    const/4 v0, 0x4

    const/4 v5, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v5, 0x5

    return-object v2
.end method

.method public final l0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v3, 0x3

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "di:naobf"

    const-string v1, "ad_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    const-string v1, "|"

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdGlobalId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    iget-object v0, p0, Lo/nc6;->j:Lo/rh3;

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    const-string v2, "tudrbNetMgAneaiPav"

    const-string v2, "PubNativeAdManager"

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2, p1}, Lo/rh3;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 8

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v7, 0x6

    new-instance v6, Lo/mc6;

    move-object v0, v6

    move-object v0, v6

    move-object v1, p1

    move-object v1, p1

    move-wide v4, p2

    const/4 v7, 0x6

    invoke-direct/range {v0 .. v5}, Lo/mc6;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V

    const/4 v7, 0x7

    invoke-static {v6}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    const/4 v7, 0x5

    return-void
.end method

.method public final n0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 2

    const/4 v1, 0x6

    new-instance v0, Lo/lc6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3}, Lo/lc6;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    const/4 v1, 0x6

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    return-void
.end method

.method public final o0(Landroid/content/Context;Lo/db;Landroid/view/ViewGroup;ZLnet/pubnative/mediation/request/model/PubnativeAdModel;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual/range {p2 .. p2}, Lo/db;->j()J

    move-result-wide v5

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdCover:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIconBg:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBody:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdSocialContext:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdCallToAction:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v12, Lo/jj3;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v12, v13, v3}, Lcom/snaptube/ads/nativead/AdImagePlaceholderHelper;->b(Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    move-object/from16 v2, p2

    move-object/from16 v2, p2

    invoke-virtual {v8, v2}, Lo/nc6;->c0(Lo/db;)V

    const/16 v1, 0x8

    if-nez p4, :cond_5

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdTitle:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBrand:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    new-instance v0, Lo/nc6$c;

    invoke-direct {v0, v8, v10}, Lo/nc6$c;-><init>(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    if-eqz p4, :cond_6

    new-instance v16, Lo/nc6$d;

    move-object v11, v0

    move-object/from16 v0, v16

    move-object/from16 v0, v16

    const/16 v17, 0x8

    move-object/from16 v1, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object/from16 v3, p3

    move-object v8, v4

    move-object v8, v4

    move-object/from16 v4, p5

    move-object/from16 v4, p5

    move-object/from16 v18, v14

    move-object/from16 v18, v14

    move-object v14, v7

    move-object v14, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lo/nc6$d;-><init>(Lo/nc6;Ljava/lang/String;Landroid/view/ViewGroup;Lnet/pubnative/mediation/request/model/PubnativeAdModel;JLo/db;)V

    goto :goto_1

    :cond_6
    move-object v11, v0

    move-object v11, v0

    move-object v8, v4

    move-object/from16 v18, v14

    move-object/from16 v18, v14

    const/16 v17, 0x8

    move-object v14, v7

    move-object v14, v7

    :goto_1
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->a(Lo/ga8;)V

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->h(Lo/ga8;)V

    :cond_7
    sget v1, Lcom/snaptube/ads/R$id;->nativeAdTitle:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withTitle(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    sget v2, Lcom/snaptube/ads/R$id;->nativeAdBrand:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withBrand(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v14}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withSocailContext(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v15}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withDescription(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withIcon(Landroid/view/View;Lo/e54;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withAdCover(Landroid/view/View;Lo/e54;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToAction(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    sget v1, Lcom/snaptube/ads/R$id;->nativeStarRating:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/snaptube/ads/R$id;->nativeStarRatingText:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withRating(Landroid/view/View;Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon2:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/ads_log_v2/AdForm;)V

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon1:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/ads_log_v2/AdForm;)V

    if-eqz v18, :cond_8

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/zl1;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0xf0

    move-object/from16 v3, v18

    move-object/from16 v3, v18

    invoke-static {v3, v0, v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBlurBg(Landroid/view/View;Ljava/lang/String;II)V

    :cond_8
    sget v0, Lcom/snaptube/ads/R$id;->nativeAdVideoTitle:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    sget v0, Lcom/snaptube/ads/R$id;->nativeAdVideoDesc:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    sget v0, Lcom/snaptube/ads/R$id;->nativeDownloadCount:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0x8

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    instance-of v0, v8, Lo/og3;

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v0, p0

    move-object v1, v8

    iget-object v2, v0, Lo/nc6;->g:Lo/sd;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v4, v1

    check-cast v4, Lo/og3;

    invoke-interface {v2, v3, v4}, Lo/sd;->c(Ljava/lang/String;Lo/og3;)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v0, p0

    move-object v1, v8

    :goto_3
    if-nez v15, :cond_e

    instance-of v2, v14, Landroid/widget/TextView;

    if-eqz v2, :cond_e

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v10, v14}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withDescription(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    :cond_e
    instance-of v2, v9, Lo/pe3;

    if-eqz v2, :cond_11

    move-object v2, v9

    check-cast v2, Lo/pe3;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/pe3$a;->a(Lo/pe3;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v1, :cond_f

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToActions(Ljava/util/List;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    goto :goto_4

    :cond_f
    invoke-virtual {v10, v9}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToAction(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    goto :goto_4

    :cond_10
    invoke-virtual {v10, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToActions(Ljava/util/List;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    :cond_11
    :goto_4
    return-void
.end method

.method public final p0(Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 v0, 0x2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "tspera_opgsr"

    const-string p2, "tag_progress"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x6

    if-nez p2, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, p1}, Lo/nc6;->h0(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x5

    return-void
.end method

.method public final q0(Landroid/view/ViewGroup;JLjava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x5

    const-wide/16 v0, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    const/4 v3, 0x6

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    return-void
.end method
