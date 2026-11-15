.class public Lwt/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwt/a;


# instance fields
.field a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lwt/f;Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwt/f;->c(Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic c(Ljava/lang/String;Lcom/transsion/transfer/androidasync/ByteBufferList;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lwt/f;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lwt/b;

    .line 6
    .line 7
    invoke-direct {v1}, Lwt/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lwt/b;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lwt/e;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lwt/e;-><init>(Lwt/f;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/future/f;->i(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
