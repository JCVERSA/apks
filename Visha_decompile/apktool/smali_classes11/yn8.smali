.class public Lyn8;
.super Lhw2;
.source "SourceFile"


# instance fields
.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lhw2;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lhw2;-><init>(Lhw2;)V

    iput-object p2, p0, Lyn8;->b:Ljava/io/File;

    return-void
.end method

.method public static f(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lyn8;->f(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DocumentFile"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lyn8;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lyn8;->b:Ljava/io/File;

    invoke-static {v0}, Lyn8;->f(Ljava/io/File;)Z

    iget-object p0, p0, Lyn8;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lyn8;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lyn8;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lyn8;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lyn8;->b:Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
