.class public final Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;
.super Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$a;


# instance fields
.field public final f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final g:Lujd;

.field public final h:Ljava/lang/String;

.field public final i:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->j:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$a;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V
    .locals 1

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsDTO"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    const-string p1, "TemplateJSBridge"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->i:Lyi5;

    return-void
.end method

.method public static final A(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;II)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvkd;->onVideoSizeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final B(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorMessage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v0

    new-instance v8, Lcom/cloud/hisavana/sdk/p;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/p;-><init>(ILjava/lang/String;Lcom/cloud/hisavana/sdk/p$b;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lvkd;->a(Lcom/cloud/hisavana/sdk/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final C(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lvkd;->b(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onProgress error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final D(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvkd;->onIsPlayingChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsPlayingChanged error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic E(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public static final F(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorMessage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lujd;->c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final G(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvkd;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoClickToPauseOrPlay error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->A(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;II)V

    return-void
.end method

.method public static synthetic o(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->G(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->C(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V

    return-void
.end method

.method public static synthetic q(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->y(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    return-void
.end method

.method public static synthetic r(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->z(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;F)V

    return-void
.end method

.method public static synthetic s(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->x(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V

    return-void
.end method

.method public static synthetic t(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->F(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->D(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    return-void
.end method

.method public static synthetic v(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->B(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V

    return-void
.end method

.method public static final x(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object p0

    invoke-virtual {p0}, Lvkd;->onComplete()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object p0

    invoke-virtual {p0}, Lvkd;->d()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object p0

    invoke-virtual {p0}, Lvkd;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAdEvent error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final y(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :pswitch_0
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->i()V

    goto :goto_1

    :pswitch_1
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->f()V

    goto :goto_1

    :pswitch_2
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->h()V

    goto :goto_1

    :pswitch_3
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->g()V

    goto :goto_1

    :pswitch_4
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->d()V

    goto :goto_1

    :pswitch_5
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->e()V

    goto :goto_1

    :pswitch_6
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {p0}, Lujd;->a()V

    goto :goto_1

    :pswitch_7
    iget-object v0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    :cond_1
    iget-object v0, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->g:Lujd;

    invoke-virtual {v0, p0, p2}, Lujd;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final z(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;F)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvkd;->onVolumeChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchAdEvent(IZLjava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object p3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAdEvent eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromConfirmDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcq4;

    invoke-direct {v0, p1, p0, p2}, Lcq4;-><init>(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    invoke-virtual {p3, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getAdData()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    const-string v3, "getAdData "

    invoke-virtual {v1, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final getConfigResponseInfo()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    const-string v1, "getConfigResponseInfo "

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string/jumbo v0, "ssp_cloud_config_raw_response"

    invoke-virtual {p0, v0}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPsStoreName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    const-string v1, "getPsStoreName "

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lak8;->a:Lak8;

    invoke-virtual {p0}, Lak8;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeToast(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeToast content= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIsPlayingChanged isPLaying= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lgq4;

    invoke-direct {v1, p0, p1}, Lgq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPlayError(ILjava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayError errorCode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Leq4;

    invoke-direct {v1, p0, p1, p2}, Leq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaybackStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lzp4;

    invoke-direct {v1, p1, p0}, Lzp4;-><init>(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onProgress(JJI)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgress duration= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", currentPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v8, Ldq4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ldq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V

    invoke-virtual {v0, v8}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onShowError(ILjava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowError errorCode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Laq4;

    invoke-direct {v1, p0, p1, p2}, Laq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoClickToPauseOrPlay(Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoClickToPauseOrPlay isPlaying= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lyp4;

    invoke-direct {v1, p0, p1}, Lyp4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoSizeChanged(II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lbq4;

    invoke-direct {v1, p0, p1, p2}, Lbq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;II)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeChanged volume= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lfq4;

    invoke-direct {v1, p0, p1}, Lfq4;-><init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;F)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    return-object p0
.end method
