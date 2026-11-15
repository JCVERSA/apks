.class public Lho7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public c:Landroid/widget/Button;

.field public d:Landroid/content/DialogInterface$OnClickListener;

.field public e:Landroid/content/DialogInterface$OnClickListener;

.field public f:Landroid/widget/TextView;

.field public g:J


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lho7;->g:J

    iput-object p1, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iput-object p2, p0, Lho7;->d:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lho7;->e:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "com.palm.id.log"

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Ljr7;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "have_agree_brand"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "is_logged_in"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Lao7;->h()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowNote brandId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Palm ID"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :cond_2
    return v2

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "AccountPrefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "have_agree_brand"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Lsq7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tech.palm.id"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "palmId"

    goto :goto_0

    :cond_0
    const-string v2, "sdk"

    :goto_0
    new-instance v9, Lho7$a;

    iget-object v5, p0, Lho7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const-class v7, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lho7$a;-><init>(Lho7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\\+"

    const-string v2, "-"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljr7;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v1, "/app/policy/get"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0, v9}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcr7;->b(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
