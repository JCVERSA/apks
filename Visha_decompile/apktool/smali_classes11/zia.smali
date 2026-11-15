.class public final Lzia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzia$a;,
        Lzia$b;,
        Lzia$c;
    }
.end annotation


# static fields
.field public static final e:Lzia$a;


# instance fields
.field public final a:Lbja;

.field public final b:Lzia$c;

.field public c:I

.field public d:Lrka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzia$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzia$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzia;->e:Lzia$a;

    return-void
.end method

.method public constructor <init>(Lbja;Lzia$c;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzia;->a:Lbja;

    iput-object p2, p0, Lzia;->b:Lzia$c;

    const/4 p1, -0x1

    iput p1, p0, Lzia;->c:I

    return-void
.end method

.method public static final synthetic a(Lzia;)Lzia$c;
    .locals 0

    iget-object p0, p0, Lzia;->b:Lzia$c;

    return-object p0
.end method

.method public static final synthetic b(Lzia;)I
    .locals 0

    iget p0, p0, Lzia;->c:I

    return p0
.end method

.method public static final synthetic c(Lzia;)Lrka;
    .locals 0

    iget-object p0, p0, Lzia;->d:Lrka;

    return-object p0
.end method

.method public static final synthetic d(Lzia;I)V
    .locals 0

    iput p1, p0, Lzia;->c:I

    return-void
.end method

.method public static final synthetic e(Lzia;Lrka;)V
    .locals 0

    iput-object p1, p0, Lzia;->d:Lrka;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget-object v0, p0, Lzia;->d:Lrka;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokAdPrefetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzia;->d:Lrka;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrka;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lzia;->d:Lrka;

    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lzia;->d:Lrka;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lrka;->c()I

    move-result v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingForMilestone milestone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TiktokAdPrefetcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lrka;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzia;->d:Lrka;

    iget v0, p0, Lzia;->c:I

    if-ne v0, p1, :cond_2

    const/4 p1, -0x1

    iput p1, p0, Lzia;->c:I

    :cond_2
    return-void
.end method

.method public final h(Lrka;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lzia;->d:Lrka;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lzia;->d:Lrka;

    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Context;II)V
    .locals 5

    const-string p3, "context"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lzia;->a:Lbja;

    invoke-virtual {p3}, Lbja;->E()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lzia;->a:Lbja;

    invoke-virtual {p3}, Lbja;->m()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzia;->a:Lbja;

    invoke-virtual {v0}, Lbja;->z()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lzia;->a:Lbja;

    invoke-virtual {v1, v0}, Lbja;->o(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lbja;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lzia;->j()Lrka;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lrka;->c()I

    move-result v2

    if-ne v2, v0, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lzia;->d:Lrka;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybePrefetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TiktokAdPrefetcher"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lrka;->g()V

    const/4 v1, 0x0

    iput-object v1, p0, Lzia;->d:Lrka;

    :cond_4
    iget v1, p0, Lzia;->c:I

    if-ne v1, v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, p1, p3, v0}, Lzia;->l(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final j()Lrka;
    .locals 4

    iget-object v0, p0, Lzia;->d:Lrka;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lrka;->f()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TiktokAdPrefetcher"

    const-string v3, "peekPendingReady release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lrka;->g()V

    iput-object v1, p0, Lzia;->d:Lrka;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final k()V
    .locals 2

    const-string v0, "TiktokAdPrefetcher"

    const-string v1, "releaseAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzia;->f()V

    const/4 v0, -0x1

    iput v0, p0, Lzia;->c:I

    return-void
.end method

.method public final l(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    iput p3, p0, Lzia;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLoad milestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokAdPrefetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v0, Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    new-instance v1, Lzia$b;

    move-object v2, v1

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v8}, Lzia$b;-><init>(Lzia;ILjava/lang/String;Lcom/hisavana/mediation/ad/TNativeAd;J)V

    invoke-virtual {p1, v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpca;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lrz5$a;->c(I)V

    invoke-virtual {v0}, Lpca;->loadAd()V

    return-void
.end method
