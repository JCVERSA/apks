.class Lwt/b$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwt/b;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final synthetic c:Lwt/b;


# direct methods
.method constructor <init>(Lwt/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt/b$c;->c:Lwt/b;

    .line 2
    .line 3
    iput-object p2, p0, Lwt/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 4
    .line 5
    iput-object p3, p0, Lwt/b$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lwt/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object p1, p0, Lwt/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 10
    .line 11
    iget-object v0, p0, Lwt/b$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lwt/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
