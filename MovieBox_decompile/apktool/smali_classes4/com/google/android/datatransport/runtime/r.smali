.class final Lcom/google/android/datatransport/runtime/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lt8/h;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/o;

.field private final b:Ljava/lang/String;

.field private final c:Lt8/c;

.field private final d:Lt8/g;

.field private final e:Lcom/google/android/datatransport/runtime/s;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lt8/c;Lt8/g;Lcom/google/android/datatransport/runtime/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/r;->a:Lcom/google/android/datatransport/runtime/o;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/r;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/r;->c:Lt8/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/r;->d:Lt8/g;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/r;->e:Lcom/google/android/datatransport/runtime/s;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/r;->e(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lt8/d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/q;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/r;->b(Lt8/d;Lt8/j;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Lt8/d;Lt8/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/r;->e:Lcom/google/android/datatransport/runtime/s;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/n;->a()Lcom/google/android/datatransport/runtime/n$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/r;->a:Lcom/google/android/datatransport/runtime/o;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/n$a;->e(Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/n$a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/n$a;->c(Lt8/d;)Lcom/google/android/datatransport/runtime/n$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->f(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/n$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->d:Lt8/g;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->d(Lt8/g;)Lcom/google/android/datatransport/runtime/n$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->c:Lt8/c;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->b(Lt8/c;)Lcom/google/android/datatransport/runtime/n$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n$a;->a()Lcom/google/android/datatransport/runtime/n;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/s;->a(Lcom/google/android/datatransport/runtime/n;Lt8/j;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method d()Lcom/google/android/datatransport/runtime/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/r;->a:Lcom/google/android/datatransport/runtime/o;

    .line 2
    .line 3
    return-object v0
.end method
