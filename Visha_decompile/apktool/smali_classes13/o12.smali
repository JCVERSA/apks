.class public abstract Lo12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid4;


# static fields
.field public static final d:I

.field public static final e:I


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_default_privacy_link:I

    sput v0, Lo12;->d:I

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement_link:I

    sput v0, Lo12;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo12;->a:I

    invoke-static {}, Lo12;->f()I

    move-result v0

    iput v0, p0, Lo12;->b:I

    invoke-static {}, Lo12;->g()I

    move-result v0

    iput v0, p0, Lo12;->c:I

    return-void
.end method

.method public static f()I
    .locals 1

    sget-boolean v0, Lolb;->e:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_default_privacy_link_itelos:I

    return v0

    :cond_0
    sget-boolean v0, Lolb;->d:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_default_privacy_link_xos:I

    return v0

    :cond_1
    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_default_privacy_link_hios:I

    return v0

    :cond_2
    sget v0, Lo12;->d:I

    return v0
.end method

.method public static g()I
    .locals 1

    sget-boolean v0, Lolb;->e:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement_link_itelos:I

    return v0

    :cond_0
    sget-boolean v0, Lolb;->d:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement_link_xos:I

    return v0

    :cond_1
    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement_link_hios:I

    return v0

    :cond_2
    sget v0, Lo12;->e:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lo12;->a:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lo12;->i(Landroid/view/View;Landroid/content/Intent;)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo12;->c:I

    invoke-virtual {p0, p1, v0}, Lo12;->j(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lo12;->a:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.settings.PrivacyPolicy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lo12;->i(Landroid/view/View;Landroid/content/Intent;)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo12;->b:I

    invoke-virtual {p0, p1, v0}, Lo12;->j(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo12;->a:I

    return-void
.end method

.method public final i(Landroid/view/View;Landroid/content/Intent;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startActivitySafely: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultGdprCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lo12;->i(Landroid/view/View;Landroid/content/Intent;)Z

    return-void
.end method
