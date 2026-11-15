.class public abstract Lcom/transsion/sysbar/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sysbar/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/transsion/sysbar/c$a;
    .locals 9

    new-instance v0, Lcom/transsion/sysbar/c$a;

    invoke-direct {v0}, Lcom/transsion/sysbar/c$a;-><init>()V

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->UNKNOWN:Lcom/transsion/sysbar/NavigationBarType;

    invoke-static {}, Lsb7;->n()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v2, :cond_13

    invoke-static {}, Lsb7;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lsb7;->v()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lsb7;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Lsb7;->u()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lsb7;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lsb7;->s()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lsb7;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {}, Lsb7;->t()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "navigation_bar_gesture_while_hidden"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_7

    if-nez v2, :cond_5

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    :cond_4
    :goto_0
    move v7, v4

    move v8, v7

    goto/16 :goto_a

    :cond_5
    if-ne v2, v6, :cond_4

    const-string v1, "navigation_bar_gesture_detail_type"

    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_6

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/transsion/sysbar/NavigationBarType;

    :goto_1
    const-string v7, "navigation_bar_gesture_hint"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_9

    :goto_2
    move v7, v6

    :goto_3
    move v8, v6

    goto/16 :goto_a

    :cond_7
    const-string v2, "navigationbar_hide_bar_enabled"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_0

    :cond_8
    if-ne v2, v6, :cond_4

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    :cond_9
    :goto_4
    move v7, v4

    goto :goto_3

    :cond_a
    move v7, v4

    move v8, v7

    move v2, v5

    goto/16 :goto_a

    :cond_b
    :goto_5
    const-string v2, "hide_navigationbar_enable"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_0

    :cond_c
    if-eq v2, v6, :cond_d

    if-eq v2, v3, :cond_d

    const/4 v7, 0x3

    if-ne v2, v7, :cond_4

    :cond_d
    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_4

    :cond_e
    :goto_6
    const-string v2, "navigation_gesture_on"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_0

    :cond_f
    if-ne v2, v6, :cond_10

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_4

    :cond_10
    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_4

    :cond_11
    :goto_7
    const-string v2, "force_fsg_nav_bar"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_0

    :cond_12
    if-ne v2, v6, :cond_4

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    const-string v7, "hide_gesture_line"

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_9

    goto :goto_2

    :cond_13
    :goto_8
    invoke-static {}, Lsb7;->j()Z

    move-result v2

    const-string v7, "navigationbar_is_min"

    if-nez v2, :cond_14

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_9

    :cond_14
    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :goto_9
    if-nez v2, :cond_15

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    goto/16 :goto_0

    :cond_15
    if-ne v2, v6, :cond_4

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_4

    :goto_a
    if-ne v2, v5, :cond_18

    const-string v2, "navigation_mode"

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_16

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    :goto_b
    move v6, v7

    goto :goto_c

    :cond_16
    if-ne p0, v6, :cond_17

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->DOUBLE:Lcom/transsion/sysbar/NavigationBarType;

    goto :goto_b

    :cond_17
    if-ne p0, v3, :cond_18

    sget-object v1, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    move v4, v6

    goto :goto_c

    :cond_18
    move v6, v7

    move v4, v8

    :goto_c
    iput-boolean v4, v0, Lcom/transsion/sysbar/c$a;->a:Z

    iput-boolean v6, v0, Lcom/transsion/sysbar/c$a;->b:Z

    iput-object v1, v0, Lcom/transsion/sysbar/c$a;->c:Lcom/transsion/sysbar/NavigationBarType;

    :cond_19
    return-object v0
.end method
