.class public abstract Lm7a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lm7a;->b(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public static b(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V
    .locals 4

    invoke-static {p1}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget v1, Lcom/transsion/tools/R$drawable;->ic_skeleton_tablet:I

    if-eq p3, v1, :cond_2

    sget v1, Lcom/transsion/tools/R$drawable;->ic_skeleton_day_tablet:I

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-eqz p4, :cond_3

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    new-instance v3, Liob;

    invoke-direct {v3, p1, p3, p2}, Liob;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget p2, Lcom/transsion/tools/R$color;->transparent:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const-string p2, "theme_path_1"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lkob$b;->g(I)V

    :cond_4
    const-string p2, "theme_path_2"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    move p3, p1

    goto :goto_3

    :cond_5
    move p3, p0

    :goto_3
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_6
    const-string p2, "theme_path_3"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_8

    if-eqz v2, :cond_7

    move p3, p1

    goto :goto_4

    :cond_7
    move p3, p0

    :goto_4
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_8
    const-string p2, "theme_path_4"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2, p0}, Lkob$b;->g(I)V

    :cond_9
    const-string p2, "theme_path_5"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_b

    if-eqz v2, :cond_a

    move p3, p1

    goto :goto_5

    :cond_a
    move p3, p0

    :goto_5
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_b
    const-string p2, "theme_path_6"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_d

    if-eqz v2, :cond_c

    move p3, p1

    goto :goto_6

    :cond_c
    move p3, p0

    :goto_6
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_d
    const-string p2, "theme_path_7"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_f

    if-eqz v2, :cond_e

    move p3, p1

    goto :goto_7

    :cond_e
    move p3, p0

    :goto_7
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_f
    const-string p2, "theme_path_8"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_11

    if-eqz v2, :cond_10

    move p3, p1

    goto :goto_8

    :cond_10
    move p3, p0

    :goto_8
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_11
    const-string p2, "theme_path_9"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_14

    if-eqz v0, :cond_13

    if-nez p4, :cond_12

    goto :goto_9

    :cond_12
    move p3, p1

    goto :goto_a

    :cond_13
    :goto_9
    move p3, p0

    :goto_a
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_14
    const-string p2, "theme_path_10"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_17

    if-eqz v0, :cond_16

    if-nez p4, :cond_15

    goto :goto_b

    :cond_15
    move p3, p1

    goto :goto_c

    :cond_16
    :goto_b
    move p3, p0

    :goto_c
    invoke-virtual {p2, p3}, Lkob$b;->g(I)V

    :cond_17
    const-string p2, "theme_path_11"

    invoke-virtual {v3, p2}, Liob;->a(Ljava/lang/String;)Lkob$b;

    move-result-object p2

    if-eqz p2, :cond_1a

    if-eqz v0, :cond_19

    if-nez p4, :cond_18

    goto :goto_d

    :cond_18
    move p0, p1

    :cond_19
    :goto_d
    invoke-virtual {p2, p0}, Lkob$b;->g(I)V

    :cond_1a
    return-void
.end method
