.class public final Ljd8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Number;

.field public final b:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljd8;->a:Ljava/lang/Number;

    .line 3
    iput-object p2, p0, Ljd8;->b:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Number;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Ljd8;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Laf5;)Ljava/lang/Number;
    .locals 0

    const-string p1, "property"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljd8;->a:Ljava/lang/Number;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Laf5;Ljava/lang/Number;)V
    .locals 2

    const-string p1, "property"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p3, p0, Ljd8;->b:Ljava/lang/Number;

    :cond_0
    iput-object p3, p0, Ljd8;->a:Ljava/lang/Number;

    return-void
.end method
