.class public final Ltg8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg8$a;
    }
.end annotation


# static fields
.field public static volatile a:Lvv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->INSTANCE:Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    sput-object v0, Ltg8;->a:Lvv4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lug8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltg8;-><init>()V

    return-void
.end method

.method public static d()Ltg8;
    .locals 1

    invoke-static {}, Ltg8$a;->a()Ltg8;

    move-result-object v0

    return-object v0
.end method

.method public static h(Lvv4;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->INSTANCE:Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    :goto_0
    sput-object p0, Ltg8;->a:Lvv4;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ltv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1, p2}, Lvv4;->deleteFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0}, Lvv4;->getAllPrivateFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0}, Lvv4;->getEmail()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0}, Lvv4;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/util/List;Ltv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1, p2}, Lvv4;->hideFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public g(Luv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1}, Lvv4;->init(Luv4;)V

    return-void
.end method

.method public i(Ljava/util/List;Ltv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1, p2}, Lvv4;->restoreFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1}, Lvv4;->saveEmail(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1}, Lvv4;->savePassword(Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;Lsv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1, p2}, Lvv4;->sendVerificationCode(Ljava/lang/String;Lsv4;)V

    return-void
.end method

.method public m(Lcom/transsion/privateroom/api/beans/FeedbackBean;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1}, Lvv4;->submitPrivacyFeedback(Lcom/transsion/privateroom/api/beans/FeedbackBean;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lsv4;)V
    .locals 0

    sget-object p0, Ltg8;->a:Lvv4;

    invoke-interface {p0, p1, p2, p3}, Lvv4;->verifyVerificationCode(Ljava/lang/String;Ljava/lang/String;Lsv4;)V

    return-void
.end method
