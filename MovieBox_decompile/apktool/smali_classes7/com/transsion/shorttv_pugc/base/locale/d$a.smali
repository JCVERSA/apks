.class public final Lcom/transsion/shorttv_pugc/base/locale/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/base/locale/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/base/locale/d;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/base/locale/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->a:Lcom/transsion/shorttv_pugc/base/locale/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/locale/d$a;->b(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/locale/d;->h()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p3, "getCountry(...)"

    .line 12
    .line 13
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0, p1, p3}, Lcom/transsion/shorttv_pugc/base/locale/d;->e(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/locale/d;->h()Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p3, p1}, Lcom/transsion/shorttv_pugc/base/locale/d;->g(Lcom/transsion/shorttv_pugc/base/locale/d;Landroid/content/Context;Ljava/util/Locale;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p1, "onConfigurationChanged()-> locale = "

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x4

    .line 52
    const/4 v5, 0x0

    .line 53
    const-string v1, "LocaleManager"

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x18

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->a:Lcom/transsion/shorttv_pugc/base/locale/d;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/base/locale/d;->d(Lcom/transsion/shorttv_pugc/base/locale/d;)Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->a:Lcom/transsion/shorttv_pugc/base/locale/d;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/transsion/shorttv_pugc/base/locale/d;->f(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/util/Locale;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->a:Lcom/transsion/shorttv_pugc/base/locale/d;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/base/locale/d$a;->b:Landroid/content/Context;

    .line 48
    .line 49
    new-instance v3, Lcom/transsion/shorttv_pugc/base/locale/c;

    .line 50
    .line 51
    invoke-direct {v3, v1, v0, p1, v2}, Lcom/transsion/shorttv_pugc/base/locale/c;-><init>(Lcom/transsion/shorttv_pugc/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    return-void
.end method
