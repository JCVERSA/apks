.class public Lcom/hunantv/imgo/log/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/entity/b;
    .locals 3

    .line 12
    new-instance v0, Lcom/hunantv/imgo/log/entity/LogData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lcom/hunantv/imgo/log/entity/LogData;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Lcom/hunantv/imgo/log/entity/b;

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/entity/LogData;->b()Lcom/hunantv/imgo/log/entity/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/entity/LogData;->a()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hunantv/imgo/log/entity/b;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/hunantv/imgo/log/c/c;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/hunantv/imgo/log/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/log/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/hunantv/imgo/log/b;->b(Lcom/hunantv/imgo/log/c/c;)Lcom/hunantv/imgo/log/entity/b;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/log/a/a;->a()Lcom/hunantv/imgo/log/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/log/a/a;->a(Lcom/hunantv/imgo/log/entity/b;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p0, p1}, Lcom/hunantv/imgo/log/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/hunantv/imgo/log/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/log/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 9
    invoke-static {v0, p0, p1, p2}, Lcom/hunantv/imgo/log/b;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/entity/b;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/hunantv/imgo/log/a/a;->a()Lcom/hunantv/imgo/log/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/log/a/a;->a(Lcom/hunantv/imgo/log/entity/b;)V

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hunantv/imgo/log/b;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hunantv/imgo/log/b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static b(Lcom/hunantv/imgo/log/c/c;)Lcom/hunantv/imgo/log/entity/b;
    .locals 2

    new-instance v0, Lcom/hunantv/imgo/log/entity/LogData;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/log/entity/LogData;-><init>(Lcom/hunantv/imgo/log/c/c;)V

    new-instance p0, Lcom/hunantv/imgo/log/entity/b;

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/entity/LogData;->b()Lcom/hunantv/imgo/log/entity/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/entity/LogData;->a()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/hunantv/imgo/log/entity/b;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    return-object p0
.end method
