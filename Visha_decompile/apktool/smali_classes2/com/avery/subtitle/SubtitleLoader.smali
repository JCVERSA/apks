.class public abstract Lcom/avery/subtitle/SubtitleLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/SubtitleLoader$a;,
        Lcom/avery/subtitle/SubtitleLoader$LocalTask;
    }
.end annotation


# static fields
.field public static a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;


# direct methods
.method public static synthetic a(Ljava/lang/String;)Lzna;
    .locals 0

    invoke-static {p0}, Lcom/avery/subtitle/SubtitleLoader;->f(Ljava/lang/String;)Lzna;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lzna;
    .locals 0

    invoke-static {p0}, Lcom/avery/subtitle/SubtitleLoader;->d(Ljava/lang/String;)Lzna;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/InputStream;Ljava/lang/String;)Lzna;
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubtitleLoader"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".srt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lp44;

    invoke-direct {v0}, Lp44;-><init>()V

    invoke-virtual {v0, p1, p0}, Lp44;->a(Ljava/lang/String;Ljava/io/InputStream;)Lzna;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, ".ass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Le44;

    invoke-direct {p1}, Le44;-><init>()V

    invoke-virtual {p1, v0, p0}, Le44;->b(Ljava/lang/String;Ljava/io/InputStream;)Lzna;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, ".stl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lq44;

    invoke-direct {p1}, Lq44;-><init>()V

    invoke-virtual {p1, v0, p0}, Lq44;->b(Ljava/lang/String;Ljava/io/InputStream;)Lzna;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, ".ttml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lq44;

    invoke-direct {p1}, Lq44;-><init>()V

    invoke-virtual {p1, v0, p0}, Lq44;->b(Ljava/lang/String;Ljava/io/InputStream;)Lzna;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lp44;

    invoke-direct {p1}, Lp44;-><init>()V

    invoke-virtual {p1, v0, p0}, Lp44;->a(Ljava/lang/String;Ljava/io/InputStream;)Lzna;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lzna;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLocal: localSubtitlePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;)Lzna;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 2

    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    if-eqz v0, :cond_0

    invoke-static {}, Lgf;->g()Leea;

    move-result-object v0

    sget-object v1, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    invoke-virtual {v0, v1}, Leea;->e(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    :cond_0
    new-instance v0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    invoke-direct {v0, p0, p1}, Lcom/avery/subtitle/SubtitleLoader$LocalTask;-><init>(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    invoke-static {}, Lgf;->f()Ljava/util/concurrent/Executor;

    move-result-object p0

    sget-object p1, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader$LocalTask;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)Lzna;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseRemote: remoteSubtitlePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;)Lzna;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 2

    invoke-static {}, Lgf;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/avery/subtitle/SubtitleLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/avery/subtitle/SubtitleLoader$1;-><init>(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/avery/subtitle/SubtitleLoader;->e(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/avery/subtitle/SubtitleLoader;->g(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    :goto_1
    return-void
.end method
