.class public Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateRoom_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->c:Z

    iput-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->c:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d:Z

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->i()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->getEncryptedEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypted email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->getEncryptedEmail()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrypted email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->i()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->getEncryptedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypted Password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->getEncryptedPassword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrypted Password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->clear()V

    :cond_0
    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lzu3;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkq3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$1;

    invoke-direct {v1, p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$1;-><init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lek4;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    const-string v1, "parse security info failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security info is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b:Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    const-string v0, "create security file failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;-><init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$2;-><init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public l(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;Lsv4;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    const-string p1, "Callback must set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->c:Z

    invoke-static {}, Lde9;->a()Lde9;

    move-result-object v0

    const-class v1, Lae9;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae9;

    invoke-interface {v0, p1}, Lae9;->b(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;)Ljq0;

    move-result-object p1

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;

    invoke-direct {v0, p0, p2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;-><init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Lsv4;)V

    invoke-interface {p1, v0}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public m(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;Lsv4;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->e:Ljava/lang/String;

    const-string p1, "Callback must set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d:Z

    invoke-static {}, Lde9;->a()Lde9;

    move-result-object v0

    const-class v1, Lae9;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae9;

    invoke-interface {v0, p1}, Lae9;->a(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;)Ljq0;

    move-result-object p1

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$b;

    invoke-direct {v0, p0, p2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$b;-><init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Lsv4;)V

    invoke-interface {p1, v0}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method
