.class public abstract Ldu2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcu2;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)Landroid/graphics/Typeface;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p3, 0x1f

    shr-long v2, v0, p3

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p3, v2, v6

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p3, v0, v4

    if-lez p3, :cond_2

    const p3, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p3, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p3, v0

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcu2;->b(Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
