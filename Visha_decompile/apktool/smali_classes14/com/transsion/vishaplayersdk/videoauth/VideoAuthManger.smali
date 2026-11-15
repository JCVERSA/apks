.class public Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;
    }
.end annotation


# static fields
.field private static final AUTH_CODE_USER_STATE_LOGIN:I = 0x1

.field private static final AUTH_CODE_USER_STATE_NOT_LOGIN:I = -0x2

.field private static final AUTH_CODE_USER_STATE_TOKEN_INVALID:I = -0x1

.field private static final AUTH_ERROR_CODE_4003:I = 0xfa3

.field private static final AUTH_ERROR_CODE_4004:I = 0xfa4

.field private static final AUTH_ERROR_CODE_5003:I = 0x138b

.field public static final TAG:Ljava/lang/String; = "visha_playersdk_VideoAuthManger"


# instance fields
.field private mbAuthing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->mbAuthing:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->mbAuthing:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;ILjava/lang/String;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->onVideoAuthFailed(ILjava/lang/String;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->onVideoAuthResult(Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    return-void
.end method

.method private onVideoAuthFailed(ILjava/lang/String;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 0

    invoke-interface {p3, p1, p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;->onAuthFailure(ILjava/lang/String;)V

    return-void
.end method

.method private onVideoAuthResult(Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video authorization result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_playersdk_VideoAuthManger"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p1, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->bEnablePlay:Z

    if-eqz p0, :cond_0

    const-string p0, "video authorization success,start play"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;->onAuthSuccess()V

    goto :goto_1

    :cond_0
    iget p0, p1, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->userAuthStatus:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;->onPlayPayVideoNotLogin()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;->onUserAuthFailed()V

    :cond_2
    :goto_0
    iget p0, p1, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;->userAuthStatus:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;->onPlayPayVideoNormalUser()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public videoAuth(JJLcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 2

    if-nez p5, :cond_0

    const-string p0, "Callback must set"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_playersdk_VideoAuthManger"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->mbAuthing:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;->getInstance()Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;

    move-result-object v0

    const-class v1, Lcom/transsion/vishaplayersdk/netservices/PlayerService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/netservices/PlayerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/netservices/PlayerService;->videoAuthorize(JJ)Ljq0;

    move-result-object p1

    new-instance p2, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;

    invoke-direct {p2, p0, p5}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;-><init>(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    invoke-interface {p1, p2}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method
