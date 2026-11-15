.class public abstract synthetic Landroidx/media3/datasource/cache/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/datasource/cache/g;->a:Landroidx/media3/datasource/cache/g;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic a(Lw1/h;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/h;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lw1/h;->a:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method
