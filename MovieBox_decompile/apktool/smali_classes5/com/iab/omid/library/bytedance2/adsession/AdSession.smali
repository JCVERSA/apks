.class public abstract Lcom/iab/omid/library/bytedance2/adsession/AdSession;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAdSession(Lcom/iab/omid/library/bytedance2/adsession/AdSessionConfiguration;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;)Lcom/iab/omid/library/bytedance2/adsession/AdSession;
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/bytedance2/utils/g;->a()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AdSessionConfiguration is null"

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "AdSessionContext is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/bytedance2/adsession/a;-><init>(Lcom/iab/omid/library/bytedance2/adsession/AdSessionConfiguration;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public abstract addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract error(Lcom/iab/omid/library/bytedance2/adsession/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getAdSessionId()Ljava/lang/String;
.end method

.method public abstract getAdSessionStatePublisher()Lcom/iab/omid/library/bytedance2/publisher/AdSessionStatePublisher;
.end method

.method public abstract registerAdView(Landroid/view/View;)V
.end method

.method public abstract removeAllFriendlyObstructions()V
.end method

.method public abstract removeFriendlyObstruction(Landroid/view/View;)V
.end method

.method public abstract setPossibleObstructionListener(Lcom/iab/omid/library/bytedance2/adsession/PossibleObstructionListener;)V
.end method

.method public abstract start()V
.end method
