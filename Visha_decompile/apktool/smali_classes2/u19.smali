.class public Lu19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonb;


# static fields
.field public static final a:Lu19;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu19;

    invoke-direct {v0}, Lu19;-><init>()V

    sput-object v0, Lu19;->a:Lu19;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu19;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lt19;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lt19;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->G()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->n()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->n()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->K()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    :cond_3
    new-instance p0, Lt19;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lt19;-><init>(FF)V

    return-object p0
.end method
