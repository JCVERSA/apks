.class public Lcom/lzy/okgo/cookie/SerializableCookie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COOKIE:Ljava/lang/String; = "cookie"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient clientCookie:Lokhttp3/Cookie;

.field private transient cookie:Lokhttp3/Cookie;

.field public domain:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Cookie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    iput-object p1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToCookie([B)Lokhttp3/Cookie;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-virtual {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lie7;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B
    .locals 1

    new-instance v0, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cookie/SerializableCookie;-><init>(Ljava/lang/String;Lokhttp3/Cookie;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lie7;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeCookie(Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 0

    invoke-static {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->bytesToCookie([B)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static encodeCookie(Ljava/lang/String;Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain"

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->cookieToBytes(Ljava/lang/String;Lokhttp3/Cookie;)[B

    move-result-object p0

    const-string v1, "cookie"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;
    .locals 2

    const-string v0, "host"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cookie"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/cookie/SerializableCookie;->bytesToCookie([B)Lokhttp3/Cookie;

    move-result-object p0

    new-instance v1, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-direct {v1, v0, p0}, Lcom/lzy/okgo/cookie/SerializableCookie;-><init>(Ljava/lang/String;Lokhttp3/Cookie;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    new-instance p1, Lokhttp3/Cookie$Builder;

    invoke-direct {p1}, Lokhttp3/Cookie$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lokhttp3/Cookie$Builder;->expiresAt(J)Lokhttp3/Cookie$Builder;

    move-result-object p1

    if-eqz v8, :cond_0

    invoke-virtual {p1, v4}, Lokhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v5}, Lokhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object p1

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lokhttp3/Cookie$Builder;->secure()Lokhttp3/Cookie$Builder;

    move-result-object p1

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lokhttp3/Cookie$Builder;->httpOnly()Lokhttp3/Cookie$Builder;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->clientCookie:Lokhttp3/Cookie;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {p0}, Lokhttp3/Cookie;->persistent()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lcom/lzy/okgo/cookie/SerializableCookie;

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object p0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object p0, p1, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public getCookie()Lokhttp3/Cookie;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->cookie:Lokhttp3/Cookie;

    iget-object p0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->clientCookie:Lokhttp3/Cookie;

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/lzy/okgo/cookie/SerializableCookie;->domain:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
