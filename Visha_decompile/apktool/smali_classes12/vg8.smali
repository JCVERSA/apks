.class public final Lvg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvv4;


# static fields
.field public static final b:Lvg8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvg8;

    invoke-direct {v0}, Lvg8;-><init>()V

    sput-object v0, Lvg8;->b:Lvg8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lrg8;
    .locals 0

    invoke-static {}, Lrg8;->d()Lrg8;

    move-result-object p0

    return-object p0
.end method

.method public deleteFiles(Ljava/util/List;Ltv4;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lrg8;->a(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public getAllPrivateFiles()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0}, Lrg8;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0}, Lrg8;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0}, Lrg8;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFiles(Ljava/util/List;Ltv4;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lrg8;->f(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public init(Luv4;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrg8;->g(Luv4;)V

    :cond_0
    return-void
.end method

.method public restoreFiles(Ljava/util/List;Ltv4;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lrg8;->h(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public saveEmail(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrg8;->i(Ljava/lang/String;)V

    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrg8;->j(Ljava/lang/String;)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;Lsv4;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lrg8;->k(Ljava/lang/String;Lsv4;)V

    return-void
.end method

.method public submitPrivacyFeedback(Lcom/transsion/privateroom/api/beans/FeedbackBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lde9;->a()Lde9;

    move-result-object v0

    const-class v1, Lae9;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae9;

    invoke-interface {v0, p1}, Lae9;->c(Lcom/transsion/privateroom/api/beans/FeedbackBean;)Ljq0;

    move-result-object p1

    new-instance v0, Lvg8$a;

    invoke-direct {v0, p0}, Lvg8$a;-><init>(Lvg8;)V

    invoke-interface {p1, v0}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public verifyVerificationCode(Ljava/lang/String;Ljava/lang/String;Lsv4;)V
    .locals 0

    invoke-virtual {p0}, Lvg8;->a()Lrg8;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lrg8;->l(Ljava/lang/String;Ljava/lang/String;Lsv4;)V

    return-void
.end method
