.class public abstract synthetic Lcom/google/accompanist/systemuicontroller/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "transformColorForLightContent"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3, p5}, Lcom/google/accompanist/systemuicontroller/c;->a(JZLkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p0 .. p5}, Lcom/google/accompanist/systemuicontroller/c;->b(JZZLkotlin/jvm/functions/Function1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p7, :cond_4

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p7, :cond_1

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->i(J)F

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/high16 p7, 0x3f000000    # 0.5f

    .line 13
    .line 14
    cmpl-float p3, p3, p7

    .line 15
    .line 16
    if-lez p3, :cond_0

    .line 17
    .line 18
    move p3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p3, 0x0

    .line 21
    :cond_1
    :goto_0
    move v4, p3

    .line 22
    and-int/lit8 p3, p6, 0x4

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    move v5, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v5, p4

    .line 29
    :goto_1
    and-int/lit8 p3, p6, 0x8

    .line 30
    .line 31
    if-eqz p3, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->b()Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    :cond_3
    move-object v6, p5

    .line 38
    move-object v1, p0

    .line 39
    move-wide v2, p1

    .line 40
    invoke-interface/range {v1 .. v6}, Lcom/google/accompanist/systemuicontroller/c;->c(JZZLkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 45
    .line 46
    const-string p1, "Super calls with default arguments not supported in this target, function: setSystemBarsColor-Iv8Zu3U"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
