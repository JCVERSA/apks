.class public Lcom/transsion/palmsdk/account/XNManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/palmsdk/account/XNManager$c;,
        Lcom/transsion/palmsdk/account/XNManager$a;,
        Lcom/transsion/palmsdk/account/XNManager$Config;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Lcom/transsion/palmsdk/account/XNManager$a;

.field public f:Lmj7;

.field public g:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "account"

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->a:Ljava/lang/String;

    .line 4
    const-string v0, "config"

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->b:Ljava/lang/String;

    .line 5
    const-string v0, "is_logged_in"

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->c:Ljava/lang/String;

    .line 6
    const-string v0, "key_refresh_time"

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/palmsdk/account/XNManager$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/palmsdk/account/XNManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->f:Lmj7;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->g:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static g()Lcom/transsion/palmsdk/account/XNManager;
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/account/XNManager$c;->a:Lcom/transsion/palmsdk/account/XNManager;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/palmsdk/account/XNManager$a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d(Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 3

    invoke-static {}, Lcom/transsion/palmsdk/PalmID;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->f:Lmj7;

    invoke-static {}, Lcom/transsion/palmsdk/PalmID;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->g:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/transsion/palmsdk/account/XNManager$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/palmsdk/account/XNManager$b;-><init>(Lcom/transsion/palmsdk/account/XNManager;Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    return-void
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/palmsdk/account/XNManager$a;->h(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/account/XNManager$a;->h(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/account/XNManager$a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Landroid/content/Context;)J
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/account/XNManager$a;->g(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public j(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/account/XNManager$a;->e(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/palmsdk/account/XNManager$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/account/XNManager$a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/palmsdk/account/XNManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    return-void
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/palmsdk/account/XNManager$a;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager;->e:Lcom/transsion/palmsdk/account/XNManager$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/account/XNManager$a;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
