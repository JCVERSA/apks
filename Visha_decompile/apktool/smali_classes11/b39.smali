.class public abstract Lb39;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 1

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "ScreenTypeUtils"

    const-string v0, "getScreeType ERROR"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->getScreenType()Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/transsion/utils/a;->k(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p0

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
