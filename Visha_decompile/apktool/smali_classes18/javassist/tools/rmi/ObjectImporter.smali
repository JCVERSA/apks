.class public Ljavassist/tools/rmi/ObjectImporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final proxyConstructorParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final endofline:[B

.field protected lookupCommand:[B

.field private orgPort:I

.field private orgServername:Ljava/lang/String;

.field private port:I

.field protected rmiCommand:[B

.field private servername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljavassist/tools/rmi/ObjectImporter;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/applet/Applet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    .line 3
    const-string v0, "POST /lookup HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 4
    const-string v0, "POST /rmi HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 5
    invoke-virtual {p1}, Ljava/applet/Applet;->getCodeBase()Ljava/net/URL;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput p1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    .line 10
    const-string v0, "POST /lookup HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 11
    const-string v0, "POST /rmi HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 12
    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 13
    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private createProxy(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private skipHeader(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    if-gtz p0, :cond_0

    return-void
.end method

.method private writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length p0, p2

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public call(II[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-direct {p0, v2, p3}, Ljavassist/tools/rmi/ObjectImporter;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    new-instance p2, Ljava/io/ObjectInputStream;

    invoke-direct {p2, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move-object v1, p3

    move-object p3, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    instance-of p2, p3, Ljavassist/tools/rmi/RemoteRef;

    if-eqz p2, :cond_1

    check-cast p3, Ljavassist/tools/rmi/RemoteRef;

    iget p2, p3, Ljavassist/tools/rmi/RemoteRef;->oid:I

    iget-object p3, p3, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz p1, :cond_2

    return-object p3

    :cond_2
    new-instance p0, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p0, v1}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    new-instance p1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p1, p0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_2
    new-instance p1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p1, p0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :goto_3
    new-instance p1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {p1, p0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/rmi/ObjectImporter;->lookupObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavassist/tools/rmi/ObjectNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public lookupObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/ObjectNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    if-ltz v1, :cond_0

    invoke-direct {p0, v1, v4}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {p0, p1}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {v0, p1, p0}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lookup HTTP/1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/rmi HTTP/1.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    return-void
.end method
