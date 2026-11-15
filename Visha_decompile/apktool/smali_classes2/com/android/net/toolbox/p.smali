.class public final Lcom/android/net/toolbox/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/android/net/o;
    .locals 4

    new-instance v0, Lcom/android/net/toolbox/c;

    new-instance v1, Lcom/android/net/toolbox/j;

    invoke-direct {v1}, Lcom/android/net/toolbox/j;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/net/toolbox/c;-><init>(Lcom/android/net/toolbox/b;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/android/net/o;

    new-instance v2, Lcom/android/net/toolbox/e;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/net/toolbox/e;-><init>(Ljava/io/File;B)V

    invoke-direct {p0, v2, v0, v3}, Lcom/android/net/o;-><init>(Lcom/android/net/b;Lcom/android/net/h;B)V

    invoke-virtual {p0}, Lcom/android/net/o;->a()V

    return-object p0
.end method
