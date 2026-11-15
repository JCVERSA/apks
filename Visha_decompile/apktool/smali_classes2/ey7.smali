.class public abstract Ley7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lcy7;
    .locals 7

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->G()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lplb;->e()F

    move-result v3

    sget-object v4, Lhy7;->a:Lhy7;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lfg5;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;FLonb;ZZ)Ldg5;

    move-result-object p0

    new-instance v0, Lcy7;

    invoke-direct {v0, p1, p0}, Lcy7;-><init>(Lur5;Ldg5;)V

    return-object v0
.end method
