.class Lt7/e$a;
.super Lt7/e$d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field private d:Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lt7/e$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lt7/e$a$a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lt7/e$a$a;-><init>(Lt7/e$a;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lt7/e$a;->d:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    iput-object p3, p0, Lt7/e$a;->c:Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 18
    .line 19
    new-instance p2, Ljava/util/Date;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "Bad date pattern: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method


# virtual methods
.method protected a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p4, p0, Lt7/e$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p5, p0, Lt7/e$a;->d:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {p5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    check-cast p5, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    new-instance p6, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {p6, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p5, p6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
