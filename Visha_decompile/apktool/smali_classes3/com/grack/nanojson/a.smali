.class public final Lcom/grack/nanojson/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/grack/nanojson/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:Lec5;

.field public d:Z


# direct methods
.method public constructor <init>(Lec5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iput-boolean p2, p0, Lcom/grack/nanojson/a;->d:Z

    return-void
.end method

.method public static b()Lcom/grack/nanojson/a$a;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/a$a;

    const-class v1, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/a$a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static d()Lcom/grack/nanojson/a$a;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/a$a;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lcom/grack/nanojson/a$a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a(ZZ)I
    .locals 8

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget v1, p2, Lec5;->h:I

    sub-int/2addr v1, v0

    iput v1, p2, Lec5;->h:I

    :cond_0
    iget-object p2, p0, Lcom/grack/nanojson/a;->c:Lec5;

    invoke-virtual {p2, p1}, Lec5;->b(Z)I

    move-result p1

    iput p1, p0, Lcom/grack/nanojson/a;->b:I

    const/16 p2, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    new-instance p1, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p1}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    :goto_0
    invoke-virtual {p0}, Lcom/grack/nanojson/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/grack/nanojson/a;->b:I

    if-eq v3, p2, :cond_4

    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/grack/nanojson/a;->b:I

    if-ne v3, v0, :cond_3

    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    const-string p1, "Trailing comma found in array"

    invoke-virtual {p0, v1, p1, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a comma or end of the array instead of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    const-string p1, "Semi-string is not allowed in array"

    invoke-virtual {p0, v1, p1, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    const/16 p1, 0xb

    :goto_2
    iput p1, p0, Lcom/grack/nanojson/a;->b:I

    return p1

    :pswitch_1
    new-instance p1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    :goto_3
    iget v3, p0, Lcom/grack/nanojson/a;->b:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_7

    const/4 v5, 0x6

    if-eq v3, v5, :cond_7

    const/4 v5, 0x7

    if-eq v3, v5, :cond_7

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    if-ne v3, p2, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected STRING, got "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v3, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/grack/nanojson/a;->b:I

    const-string v6, "Expected COLON, got "

    const/4 v7, 0x2

    if-ne v5, p2, :cond_a

    invoke-virtual {p0, v2, v0}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v5

    if-ne v5, v7, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_a
    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v5

    if-ne v5, v7, :cond_e

    :goto_5
    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    invoke-virtual {p0}, Lcom/grack/nanojson/a;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    if-ne v3, v4, :cond_b

    goto :goto_6

    :cond_b
    iget v3, p0, Lcom/grack/nanojson/a;->b:I

    if-ne v3, v0, :cond_d

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v3

    if-eq v3, v4, :cond_c

    goto :goto_3

    :cond_c
    iget-object p0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    const-string p1, "Trailing object found in array"

    invoke-virtual {p0, v1, p1, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_d
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a comma or end of the object instead of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_e
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v0}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_f
    :goto_6
    iput-object p1, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    const/16 p1, 0xa

    goto/16 :goto_2

    :pswitch_2
    iget-boolean p1, p0, Lcom/grack/nanojson/a;->d:Z

    if-eqz p1, :cond_10

    new-instance p1, Lcom/grack/nanojson/JsonLazyNumber;

    iget-object p2, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget-object p2, p2, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget-boolean v0, v0, Lec5;->n:Z

    invoke-direct {p1, p2, v0}, Lcom/grack/nanojson/JsonLazyNumber;-><init>(Ljava/lang/String;Z)V

    :goto_7
    iput-object p1, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Lcom/grack/nanojson/a;->f()Ljava/lang/Number;

    move-result-object p1

    goto :goto_7

    :pswitch_3
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget-object p1, p1, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :pswitch_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_6
    iput-object v1, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    :goto_8
    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/grack/nanojson/a;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/grack/nanojson/a;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/grack/nanojson/a;->a(ZZ)I

    invoke-virtual {p0}, Lcom/grack/nanojson/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v0}, Lcom/grack/nanojson/a;->a(ZZ)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON did not contain the correct type, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected end of input, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/grack/nanojson/a;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0, v2}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method

.method public final f()Ljava/lang/Number;
    .locals 6

    iget-object v0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget-object v0, v0, Lec5;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/grack/nanojson/a;->c:Lec5;

    iget-boolean v2, v2, Lec5;->n:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x2d

    if-ne v2, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    move v3, v1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/16 v4, 0xa

    if-lt v2, v4, :cond_8

    if-ne v2, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x13

    if-lt v2, v4, :cond_7

    if-ne v2, v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-ge v2, v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_7
    :goto_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/grack/nanojson/a;->c:Lec5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v1}, Lec5;->j(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p0

    throw p0
.end method
