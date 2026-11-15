.class public Lcom/getkeepsafe/relinker/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/relinker/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/getkeepsafe/relinker/a;->d(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/a$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x5

    if-ge p2, v3, :cond_3

    :try_start_1
    const-string p2, "Found %s! Extracting..."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p5, p2, v3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto/16 :goto_8

    :cond_0
    :try_start_3
    iget-object p2, v1, Lcom/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    iget-object v3, v1, Lcom/getkeepsafe/relinker/a$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p0, p2, v3}, Lcom/getkeepsafe/relinker/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    goto :goto_6

    :cond_1
    invoke-virtual {p0, p2}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    invoke-virtual {p4, p0, p1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p4, p0, p1}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p4, p0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p0, v1, Lcom/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    move-object v0, p2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-object v3, v0

    goto :goto_4

    :catch_2
    move-object v3, v0

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catch_3
    move-object p2, v0

    move-object v3, p2

    goto :goto_4

    :catch_4
    move-object p2, v0

    move-object v3, p2

    goto :goto_5

    :goto_3
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    throw p1

    :catch_5
    :goto_4
    invoke-virtual {p0, p2}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_6
    :goto_5
    invoke-virtual {p0, p2}, Lcom/getkeepsafe/relinker/a;->b(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_7
    :goto_6
    move p2, v2

    goto/16 :goto_0

    :cond_3
    const-string p0, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {p5, p0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->h(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object p0, v1, Lcom/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_4
    return-void

    :cond_5
    :try_start_a
    invoke-virtual {p0, p1, p3}, Lcom/getkeepsafe/relinker/a;->e(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    :catch_9
    move-exception p0

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_7
    new-instance p1, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {p1, p3, p2, p0}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_4
    move-exception p0

    :goto_8
    if-eqz v0, :cond_6

    :try_start_c
    iget-object p1, v0, Lcom/getkeepsafe/relinker/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_6
    throw p0
.end method

.method public final b(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 4

    const/16 p0, 0x1000

    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/a$a;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/a;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_5

    aget-object v3, p0, v1

    move v4, v0

    :goto_1
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x5

    if-ge v4, v6, :cond_0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move v4, v5

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v2, :cond_1

    goto :goto_5

    :cond_1
    move v4, v0

    :goto_3
    add-int/lit8 v5, v4, 0x1

    if-ge v4, v6, :cond_4

    array-length v4, p2

    move v7, v0

    :goto_4
    if-ge v7, v4, :cond_3

    aget-object v8, p2, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Looking for %s in APK %s..."

    filled-new-array {v8, v3}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p4, v9, v10}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance p0, Lcom/getkeepsafe/relinker/a$a;

    invoke-direct {p0, v2, v8}, Lcom/getkeepsafe/relinker/a$a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object p0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "([^\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "]*)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/a;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v3, v4, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
