.class public abstract Lzeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfa;


# instance fields
.field public a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lzeb;->f(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lafb;

    invoke-virtual {p0}, Lzeb;->g()Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lafb;-><init>(Ljava/net/URL;Ljava/lang/Boolean;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    new-instance p0, Ljava/io/InputStreamReader;

    check-cast p1, Lafb;

    invoke-virtual {p1}, Lafb;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lafb;

    invoke-virtual {p1}, Lafb;->d()J

    move-result-wide p0

    return-wide p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lafb;

    invoke-virtual {p1}, Lafb;->a()V

    return-void
.end method

.method public abstract f(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public g()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lzeb;->a:Ljava/lang/Boolean;

    return-object p0
.end method
