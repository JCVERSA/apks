.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;
.super Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$a;)V

    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lorg/reflections/vfs/b;

    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->d(Ljava/net/URL;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/reflections/vfs/b;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->a(Ljava/net/URL;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->d(Ljava/net/URL;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
