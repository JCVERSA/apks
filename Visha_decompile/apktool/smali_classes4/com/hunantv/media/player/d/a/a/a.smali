.class public Lcom/hunantv/media/player/d/a/a/a;
.super Lcom/hunantv/media/player/d/a/b;
.source "SourceFile"


# static fields
.field public static f:Z = true

.field public static g:Z = false

.field public static h:Z = false

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/d/a/b;-><init>()V

    const-string v0, "123456"

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget-boolean v0, Lcom/hunantv/media/player/d/a/a/a;->f:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hunantv/media/player/d/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter params ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shader/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    const-string v3, "shader/"

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/hunantv/media/player/utils/FileUtil;->exist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/hunantv/media/player/utils/FileUtil;->copyAssertThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-static {v1}, Lcom/hunantv/media/player/utils/FileUtil;->exist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/hunantv/media/player/utils/FileUtil;->copyAssertThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/hunantv/media/player/utils/FileUtil;->copyAssertThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->i:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hunantv/media/player/utils/StringUtil;->padRight(Ljava/lang/CharSequence;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v4, p0, Lcom/hunantv/media/player/d/a/a/a;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hunantv/media/player/utils/StringUtil;->padRight(Ljava/lang/CharSequence;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-boolean v4, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/hunantv/media/player/utils/CryptoUtil;->AESDecrypt16(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/hunantv/media/player/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    iget-object v4, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-interface {v0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    sget-boolean p2, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    if-nez p2, :cond_6

    sget-object p2, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p1, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    goto :goto_5

    :cond_6
    if-eqz p4, :cond_7

    new-instance p2, Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/hunantv/media/player/utils/CryptoUtil;->AESDecrypt16(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-direct {p2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-static {v1}, Lcom/hunantv/media/player/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    :goto_4
    iget-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    iget-object p0, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/d/a/a/a;->i:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/StringUtil;->padRight(Ljava/lang/CharSequence;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/hunantv/media/player/d/a/a/a;->j:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/hunantv/media/player/utils/StringUtil;->padRight(Ljava/lang/CharSequence;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v3, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "shader/"

    if-eqz v3, :cond_0

    sget-object v3, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/hunantv/media/player/utils/CryptoUtil;->AESDecrypt16(Ljava/io/InputStream;[B[B)[B

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hunantv/media/player/utils/FileUtil;->readAssert(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    iget-object v5, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    sget-object p2, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/utils/CryptoUtil;->AESDecrypt16(Ljava/io/InputStream;[B[B)[B

    move-result-object p4

    invoke-direct {p2, p4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/FileUtil;->readAssert(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    :goto_2
    iget-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/hunantv/media/player/d/a/a/a;->m:Ljava/util/Map;

    iget-object p0, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public a(I[F)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->e()V

    const-string p2, "vTexture"

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p2, p0, Lcom/hunantv/media/player/d/a/b;->c:I

    const v1, 0x8892

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p2, "vPosition"

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const-string v2, "vCoordinate"

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x14

    const/16 v9, 0xc

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x5

    sget v4, Lcom/hunantv/media/player/d/a/b;->b:I

    invoke-static {p1, v0, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->d()V

    invoke-virtual {p0, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0, v2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    sget-boolean v0, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    if-eqz v0, :cond_0

    const/4 p4, 0x1

    sput-boolean p4, Lcom/hunantv/media/player/d/a/a/a;->g:Z

    sput-boolean p4, Lcom/hunantv/media/player/d/a/a/a;->f:Z

    const/4 p4, 0x0

    :cond_0
    sget-boolean v0, Lcom/hunantv/media/player/d/a/a/a;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    sget-boolean p1, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/a/b;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shader file read invalid. mVertexScript:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/player/d/a/a/a;->k:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",mFragmentScript:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/d/a/a/a;->l:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter params ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
