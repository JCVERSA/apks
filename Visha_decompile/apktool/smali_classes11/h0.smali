.class public final Lh0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0$a;
    }
.end annotation


# static fields
.field public static final i:Lh0$a;

.field public static j:Lh0;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;

.field public c:I

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Lhw4;

.field public final g:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

.field public final h:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lh0;->i:Lh0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AISubtitleManager"

    iput-object v0, p0, Lh0;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh0;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lh0;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh0;->d:J

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Lh0;)V

    iput-object v0, p0, Lh0;->g:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    new-instance v0, Ly;

    invoke-direct {v0, p0}, Ly;-><init>(Lh0;)V

    iput-object v0, p0, Lh0;->h:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    return-void
.end method

.method public static final A(Lh0;Ljava/io/Serializable;)V
    .locals 2

    iget-object v0, p0, Lh0;->f:Lhw4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    const-string v1, "scribeTranslateText scribeCallback null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lh0;->f:Lhw4;

    if-eqz p0, :cond_1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lhw4;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final E(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    new-instance v0, Lc0;

    invoke-direct {v0, p2, p0, p1}, Lc0;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final F(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result p0

    iget-object p1, p1, Lh0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-eqz p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lh0;ZLe74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->r(Lh0;ZLe74;)V

    return-void
.end method

.method public static synthetic b(Ls74;Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->u(Ls74;Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method public static synthetic c(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->E(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method public static synthetic d(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->q(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method public static synthetic e(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->z(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->F(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lh0;Le74;)V

    return-void
.end method

.method public static synthetic g(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->x(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V

    return-void
.end method

.method public static synthetic h(Lh0;)V
    .locals 0

    invoke-static {p0}, Lh0;->y(Lh0;)V

    return-void
.end method

.method public static synthetic i(Lh0;Ljava/io/Serializable;)V
    .locals 0

    invoke-static {p0, p1}, Lh0;->A(Lh0;Ljava/io/Serializable;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lh0;->v(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic k()Lh0;
    .locals 1

    sget-object v0, Lh0;->j:Lh0;

    return-object v0
.end method

.method public static final synthetic l(Lh0;)V
    .locals 0

    sput-object p0, Lh0;->j:Lh0;

    return-void
.end method

.method public static final q(Lh0;Le74;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result p2

    new-instance v0, Lg0;

    invoke-direct {v0, p0, p2, p1}, Lg0;-><init>(Lh0;ZLe74;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final r(Lh0;ZLe74;)V
    .locals 2

    iget-object p0, p0, Lh0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCaptionService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final u(Ls74;Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    new-instance v0, Le0;

    invoke-direct {v0, p2, p0, p1}, Le0;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final v(Lcom/transsion/apiinvoke/invoke/ApiResponse;Ls74;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->content()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "content(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "success"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "translate_text"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_4

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static final x(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 2

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lh0;->c:I

    new-instance p1, La0;

    invoke-direct {p1, p0}, La0;-><init>(Lh0;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    iget p1, p0, Lh0;->c:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lh0;->d:J

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    iget-wide p1, p0, Lh0;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lh0;->d:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Lny5;->c(F)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lh0;->d:J

    :cond_1
    :goto_0
    return-void
.end method

.method public static final y(Lh0;)V
    .locals 4

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    iget v1, p0, Lh0;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ll6a;->b()Ll6a;

    move-result-object v0

    iget p0, p0, Lh0;->c:I

    invoke-virtual {v0, p0}, Ll6a;->c(I)V

    return-void
.end method

.method public static final z(Lh0;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 1

    iget-object p1, p0, Lh0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " scribeTranslateTextCallback "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Subtitle_Out"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ld0;

    invoke-direct {p1, p0, p2}, Ld0;-><init>(Lh0;Ljava/io/Serializable;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final B(Le74;Lhw4;)V
    .locals 6

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    const-string v2, "AICoreSpeechChannel"

    const-string v3, "AudioTranslateService"

    invoke-direct {v0, v2, v3}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object v0

    const-string v4, "translate_text"

    iget-object v5, p0, Lh0;->g:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    invoke-virtual {v0, v4, v5}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->addSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result v0

    iget-object v1, p0, Lh0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iput-object p2, p0, Lh0;->f:Lhw4;

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lh0;->f:Lhw4;

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final C()V
    .locals 6

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    const-string v2, "AICoreSpeechChannel"

    const-string v3, "AudioTranslateService"

    invoke-direct {v0, v2, v3}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object v0

    const-string v4, "translate_text"

    iget-object v5, p0, Lh0;->g:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    invoke-virtual {v0, v4, v5}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->removeSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh0;->f:Lhw4;

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    return-void
.end method

.method public final D(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lh0;->o(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lh0;->m(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    const-string v1, "AICoreSpeechChannel"

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "AudioTranslateService"

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    const-string v0, "updateConfig"

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p2

    new-instance v0, Lz;

    invoke-direct {v0, p0, p1}, Lz;-><init>(Lh0;Le74;)V

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method public final m(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromLang"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toLang"

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lookahead"

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getLookahead()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getLookback()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lookback"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "subtitle_config"

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getSubConfigJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lh0;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lh0;->b:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    const-string v1, "AICoreSpeechChannel"

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "AudioTranslateService"

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "getBuiltInLanguages"

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lh0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lh0;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final o(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->setToLang(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final p(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ljava/lang/String;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCaptionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lh0;->e:Ljava/lang/String;

    new-instance p3, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    const-string v0, "AICoreSpeechChannel"

    const-string v1, "AudioTranslateService"

    invoke-direct {p3, v0, v1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p3

    const-string v2, "service_state"

    iget-object v3, p0, Lh0;->h:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    invoke-virtual {p3, v2, v3}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->addSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V

    invoke-virtual {p0, p2}, Lh0;->o(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    invoke-virtual {p0, p2}, Lh0;->m(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)Landroid/os/Bundle;

    move-result-object p2

    new-instance p3, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    invoke-virtual {p3, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    const-string p3, "initService"

    invoke-virtual {p2, p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p2

    new-instance p3, Lf0;

    invoke-direct {p3, p0, p1}, Lf0;-><init>(Lh0;Le74;)V

    invoke-virtual {p2, p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget p0, p0, Lh0;->c:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Ljava/lang/String;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ls74;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lh0;->o(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    invoke-virtual {p0, p2}, Lh0;->m(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)Landroid/os/Bundle;

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    const-string v0, "AICoreSpeechChannel"

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    const-string v0, "TextTransService"

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    const-string p2, "offlineTranslate"

    invoke-virtual {p0, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    new-instance p2, Lb0;

    invoke-direct {p2, p3, p1}, Lb0;-><init>(Ls74;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh0;->a:Ljava/lang/String;

    iget-object v1, p0, Lh0;->e:Ljava/lang/String;

    const-string v2, "initInstanceTag"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lh0;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lh0;->a:Ljava/lang/String;

    const-string p1, "release return"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    const-string v0, "AICoreSpeechChannel"

    const-string v1, "AudioTranslateService"

    invoke-direct {p1, v0, v1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p1

    const-string v2, "translate_text"

    iget-object v4, p0, Lh0;->g:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    invoke-virtual {p1, v2, v4}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->removeSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V

    new-instance p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-direct {p1, v0, v1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p1

    const-string v2, "service_state"

    iget-object v4, p0, Lh0;->h:Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    invoke-virtual {p1, v2, v4}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->removeSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V

    iput-object v3, p0, Lh0;->f:Lhw4;

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    const-string p1, "release"

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    return-void
.end method
