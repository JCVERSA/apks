.class public abstract Lbcb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static final b(Ljava/lang/String;Lorg/mozilla/classfile/a;)I
    .locals 0

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/a;->a(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Lbcb;->a(I)I

    move-result p0

    return p0
.end method

.method public static final c(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static final d(Ljava/lang/String;Lorg/mozilla/classfile/a;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x46

    if-eq p0, p1, :cond_2

    const/16 p1, 0x53

    if-eq p0, p1, :cond_1

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1

    const/16 p1, 0x49

    if-eq p0, p1, :cond_1

    const/16 p1, 0x4a

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :pswitch_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    invoke-static {p0, p1}, Lbcb;->b(Ljava/lang/String;Lorg/mozilla/classfile/a;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final f(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static final g(ILorg/mozilla/classfile/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lbcb;->h(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lbcb;->f(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/a;->p(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expecting object type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static i(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j(IILorg/mozilla/classfile/a;)I
    .locals 6

    invoke-static {p0}, Lbcb;->h(I)I

    move-result v0

    invoke-static {p1}, Lbcb;->h(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq p0, p1, :cond_e

    const/4 v4, 0x5

    if-eqz v5, :cond_2

    if-ne p1, v4, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz v0, :cond_d

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-ne p0, v4, :cond_4

    if-eqz v2, :cond_4

    return p1

    :cond_4
    if-eqz v5, :cond_c

    if-eqz v2, :cond_c

    invoke-static {p0, p2}, Lbcb;->g(ILorg/mozilla/classfile/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lbcb;->g(ILorg/mozilla/classfile/a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/mozilla/classfile/a;->p(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lorg/mozilla/classfile/a;->p(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v3

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v3

    :cond_6
    invoke-static {v0}, Lbcb;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1}, Lbcb;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    return p0

    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    return p1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lbcb;->b(Ljava/lang/String;Lorg/mozilla/classfile/a;)I

    move-result p0

    return p0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_b
    :goto_3
    const-string p0, "java/lang/Object"

    invoke-static {p0, p2}, Lbcb;->b(Ljava/lang/String;Lorg/mozilla/classfile/a;)I

    move-result p0

    return p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad merge attempt between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lbcb;->k(ILorg/mozilla/classfile/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lbcb;->k(ILorg/mozilla/classfile/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    return v3

    :cond_e
    :goto_5
    return p0
.end method

.method public static k(ILorg/mozilla/classfile/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lbcb;->h(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lbcb;->g(ILorg/mozilla/classfile/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    if-ne v0, p0, :cond_1

    const-string p0, "uninitialized"

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "uninitialized_this"

    return-object p0

    :pswitch_1
    const-string p0, "null"

    return-object p0

    :pswitch_2
    const-string p0, "long"

    return-object p0

    :pswitch_3
    const-string p0, "double"

    return-object p0

    :pswitch_4
    const-string p0, "float"

    return-object p0

    :pswitch_5
    const-string p0, "int"

    return-object p0

    :pswitch_6
    const-string p0, "top"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
