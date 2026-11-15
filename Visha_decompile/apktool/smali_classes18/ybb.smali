.class public abstract Lybb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static synthetic a:Ljava/lang/Class;

.field public static synthetic b:Ljava/lang/Class;

.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;


# direct methods
.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 11

    sget-object v0, Lybb;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->a:Ljava/lang/Class;

    :cond_0
    if-ne p0, v0, :cond_1

    const p0, 0x7f800

    return p0

    :cond_1
    sget-object v0, Lybb;->b:Ljava/lang/Class;

    const-string v1, "java.lang.String"

    if-nez v0, :cond_2

    invoke-static {v1}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->b:Ljava/lang/Class;

    :cond_2
    const/16 v2, 0x2000

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v3, 0x0

    const/high16 v4, 0x80000

    const/16 v5, 0x808

    const/16 v6, 0x804

    const/16 v7, 0x840

    const/16 v8, 0x880

    const/16 v9, 0x820

    const/16 v10, 0x810

    if-eqz v0, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    return v10

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    return v9

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    return v8

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    return v7

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    return v6

    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    return v5

    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    return v4

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b

    const/16 p0, 0x4000

    return p0

    :cond_b
    return v3

    :cond_c
    sget-object v0, Lybb;->c:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->c:Ljava/lang/Class;

    :cond_d
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lybb;->d:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->d:Ljava/lang/Class;

    :cond_e
    if-ne p0, v0, :cond_f

    return v10

    :cond_f
    sget-object v0, Lybb;->e:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->e:Ljava/lang/Class;

    :cond_10
    if-ne p0, v0, :cond_11

    return v9

    :cond_11
    sget-object v0, Lybb;->f:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->f:Ljava/lang/Class;

    :cond_12
    if-ne p0, v0, :cond_13

    return v8

    :cond_13
    sget-object v0, Lybb;->g:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->g:Ljava/lang/Class;

    :cond_14
    if-ne p0, v0, :cond_15

    return v7

    :cond_15
    sget-object v0, Lybb;->h:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->h:Ljava/lang/Class;

    :cond_16
    if-ne p0, v0, :cond_17

    return v6

    :cond_17
    sget-object v0, Lybb;->i:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->i:Ljava/lang/Class;

    :cond_18
    if-ne p0, v0, :cond_19

    return v5

    :cond_19
    sget-object v0, Lybb;->j:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->j:Ljava/lang/Class;

    :cond_1a
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p0, 0xa00

    return p0

    :cond_1b
    sget-object v0, Lybb;->k:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->k:Ljava/lang/Class;

    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, 0x900

    return p0

    :cond_1d
    const/16 p0, 0xc00

    return p0

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 p0, 0x40000

    return p0

    :cond_1f
    sget-object v0, Lybb;->b:Ljava/lang/Class;

    if-nez v0, :cond_20

    invoke-static {v1}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->b:Ljava/lang/Class;

    :cond_20
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_0

    :cond_21
    move v2, v3

    :goto_0
    sget-object v0, Lybb;->l:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->l:Ljava/lang/Class;

    :cond_22
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    or-int/lit16 v2, v2, 0x1000

    :cond_23
    sget-object v0, Lybb;->m:Ljava/lang/Class;

    if-nez v0, :cond_24

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->m:Ljava/lang/Class;

    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    or-int/lit16 v2, v2, 0x4000

    :cond_25
    sget-object v0, Lybb;->n:Ljava/lang/Class;

    if-nez v0, :cond_26

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->n:Ljava/lang/Class;

    :cond_26
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x8000

    or-int/2addr v2, v0

    :cond_27
    sget-object v0, Lybb;->o:Ljava/lang/Class;

    if-nez v0, :cond_28

    const-string v0, "java.util.List"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->o:Ljava/lang/Class;

    :cond_28
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/high16 v0, 0x10000

    or-int/2addr v2, v0

    :cond_29
    sget-object v0, Lybb;->p:Ljava/lang/Class;

    if-nez v0, :cond_2a

    const-string v0, "java.util.Set"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->p:Ljava/lang/Class;

    :cond_2a
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/high16 v0, 0x20000

    or-int/2addr v2, v0

    :cond_2b
    sget-object v0, Lybb;->q:Ljava/lang/Class;

    if-nez v0, :cond_2c

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lybb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lybb;->q:Ljava/lang/Class;

    :cond_2c
    if-ne p0, v0, :cond_2d

    or-int/2addr v2, v4

    :cond_2d
    return v2
.end method
