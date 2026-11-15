.class public Lwt/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwt/a;


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


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    new-instance v0, Lwt/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lwt/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lwt/f;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lwt/c;

    .line 11
    .line 12
    invoke-direct {v0}, Lwt/c;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->i(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
