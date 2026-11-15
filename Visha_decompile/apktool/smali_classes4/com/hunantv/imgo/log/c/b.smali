.class public abstract Lcom/hunantv/imgo/log/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/hunantv/imgo/log/c/c;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hunantv/imgo/log/c/b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/hunantv/imgo/log/b;->a(Lcom/hunantv/imgo/log/c/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/hunantv/imgo/log/c/b;->a:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "[UNKNOWN]"

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/hunantv/imgo/log/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hunantv/imgo/log/c/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/hunantv/imgo/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a;->a()Lcom/mgtv/data/aphone/core/i/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/data/aphone/core/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
