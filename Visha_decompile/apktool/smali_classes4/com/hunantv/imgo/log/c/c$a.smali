.class public Lcom/hunantv/imgo/log/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/log/c/c$a;->g:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/hunantv/imgo/log/c/c$a;->h:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/imgo/log/c/c$a;->i:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/log/c/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/log/c/c$a;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/hunantv/imgo/log/c/c$a;->b:B

    return p0
.end method

.method public static synthetic c(Lcom/hunantv/imgo/log/c/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/log/c/c$a;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    iget-byte p0, p0, Lcom/hunantv/imgo/log/c/c$a;->b:B

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "D"

    return-object p0

    :cond_0
    const-string p0, "W"

    return-object p0

    :cond_1
    const-string p0, "E"

    return-object p0

    :cond_2
    const-string p0, "I"

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/hunantv/imgo/log/c/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/hunantv/imgo/log/c/c$a;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/hunantv/imgo/log/c/c$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/hunantv/imgo/log/c/c$a;->a:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/hunantv/imgo/log/c/c$a;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "p"

    goto :goto_0

    :cond_0
    const-string p0, "n"

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/log/c/c$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/log/c/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/log/c/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hunantv/imgo/log/c/c$a;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/hunantv/imgo/log/c/c;
    .locals 2

    new-instance v0, Lcom/hunantv/imgo/log/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/imgo/log/c/c;-><init>(Lcom/hunantv/imgo/log/c/c$a;Lcom/hunantv/imgo/log/c/c$1;)V

    return-object v0
.end method

.method public f()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->i:Ljava/util/HashMap;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/log/c/c$a;->e:Ljava/lang/String;

    return-object p0
.end method
