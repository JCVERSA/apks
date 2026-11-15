.class final Lwz/b$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwz/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwz/b$f;->a(Ljava/lang/Object;)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
