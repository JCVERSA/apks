.class public abstract Lvui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Z

.field public static final d:Luui;

.field public static final e:Z

.field public static final f:Z

.field public static final g:J

.field public static final h:J

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Ljava/lang/Class;

    invoke-static {}, Lvui;->q()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lvui;->a:Lsun/misc/Unsafe;

    sget v2, Llri;->a:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lvui;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lvui;->G(Ljava/lang/Class;)Z

    move-result v3

    sput-boolean v3, Lvui;->c:Z

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lvui;->G(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v5, Ltui;

    invoke-direct {v5, v1}, Ltui;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    new-instance v5, Lsui;

    invoke-direct {v5, v1}, Lsui;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v5, Lvui;->d:Luui;

    const-string v1, "getLong"

    const-class v3, Ljava/lang/reflect/Field;

    const-string v4, "objectFieldOffset"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    if-nez v5, :cond_3

    :goto_1
    move v2, v7

    goto :goto_2

    :cond_3
    iget-object v5, v5, Luui;->a:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v8, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lvui;->e()Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lvui;->r(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_2
    sput-boolean v2, Lvui;->e:Z

    sget-object v2, Lvui;->d:Luui;

    if-nez v2, :cond_5

    :goto_3
    move v0, v7

    goto :goto_4

    :cond_5
    iget-object v2, v2, Luui;->a:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v3, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v8, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    filled-new-array {v8, v3, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    filled-new-array {v8, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    filled-new-array {v8, v3, v8}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lvui;->r(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_4
    sput-boolean v0, Lvui;->f:Z

    const-class v0, [B

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lvui;->g:J

    const-class v0, [Z

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    const-class v0, [I

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    const-class v0, [J

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    const-class v0, [F

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    const-class v0, [D

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lvui;->c(Ljava/lang/Class;)I

    invoke-static {v0}, Lvui;->d(Ljava/lang/Class;)I

    invoke-static {}, Lvui;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_7

    sget-object v3, Lvui;->d:Luui;

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v3, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    :cond_7
    :goto_5
    sput-wide v1, Lvui;->h:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_8

    goto :goto_6

    :cond_8
    move v6, v7

    :goto_6
    sput-boolean v6, Lvui;->i:Z

    return-void
.end method

.method public static A(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1, p2, p3}, Luui;->h(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static B(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static C(Ljava/lang/Object;JJ)V
    .locals 7

    sget-object v0, Lvui;->d:Luui;

    iget-object v1, v0, Luui;->a:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static D(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic E(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic F(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static G(Ljava/lang/Class;)Z
    .locals 6

    const-class v0, [B

    sget v1, Llri;->a:I

    :try_start_0
    sget-object v1, Lvui;->b:Ljava/lang/Class;

    const-string v2, "peekLong"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static H(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1, p2}, Luui;->i(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lvui;->f:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lvui;->e:Z

    return v0
.end method

.method public static c(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lvui;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lvui;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static e()Ljava/lang/reflect/Field;
    .locals 3

    sget v0, Llri;->a:I

    const-string v0, "effectiveDirectAddress"

    const-class v1, Ljava/nio/Buffer;

    invoke-static {v1, v0}, Lvui;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "address"

    invoke-static {v1, v0}, Lvui;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static g(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static h(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static i(J)B
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1}, Luui;->a(J)B

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1, p2}, Luui;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static k(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1, p2}, Luui;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Lvui;->d:Luui;

    sget-wide v1, Lvui;->h:J

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static o(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lvui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static p(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    iget-object v0, v0, Luui;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static q()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lrui;

    invoke-direct {v0}, Lrui;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static bridge synthetic r(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lvui;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lvui;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic t(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lvui;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lvui;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lvui;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static w(J[BJJ)V
    .locals 8

    sget-object v0, Lvui;->d:Luui;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Luui;->d(J[BJJ)V

    return-void
.end method

.method public static x(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lvui;->d:Luui;

    invoke-virtual {v0, p0, p1, p2, p3}, Luui;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static y([BJB)V
    .locals 3

    sget-object v0, Lvui;->d:Luui;

    sget-wide v1, Lvui;->g:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Luui;->f(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static z(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lvui;->d:Luui;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Luui;->g(Ljava/lang/Object;JD)V

    return-void
.end method
