.class public Ltl7;
.super Lkk7;
.source "SourceFile"


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkk7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Ltl7;->c:Landroid/content/Context;

    return-void
.end method

.method public static c(Landroid/content/Context;)Ltl7;
    .locals 2

    new-instance v0, Ltl7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AccountPrefs"

    invoke-direct {v0, p0, v1}, Ltl7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d(J)V
    .locals 1

    invoke-virtual {p0}, Lkk7;->a()V

    iget-object p0, p0, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "key_refresh_time"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public e(Z)V
    .locals 1

    invoke-virtual {p0}, Lkk7;->a()V

    iget-object p0, p0, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "is_logged_in"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public f(J)V
    .locals 1

    invoke-virtual {p0}, Lkk7;->a()V

    iget-object p0, p0, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "key_verify_pwd_limit"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object p0, p0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_cloud_config"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Z
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "is_logged_in"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ltl7;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "user_agreement_version"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ltl7;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "privacy_version"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
