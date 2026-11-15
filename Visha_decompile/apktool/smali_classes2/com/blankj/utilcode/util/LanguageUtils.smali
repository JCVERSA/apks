.class public abstract Lcom/blankj/utilcode/util/LanguageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->a(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/util/Locale;ILcom/blankj/utilcode/util/Utils$b;)V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LanguageUtils;->a(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LanguageUtils;->e(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LanguageUtils;->c(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/blankj/utilcode/util/Utils$b;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    new-instance v0, Lcom/blankj/utilcode/util/LanguageUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/LanguageUtils$2;-><init>(Ljava/util/Locale;ILcom/blankj/utilcode/util/Utils$b;)V

    const-wide/16 p0, 0x10

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/h;->L(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const-string p0, "LanguageUtils"

    const-string p1, "appLocal didn\'t update."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/blankj/utilcode/util/Utils$b;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method
