.class Lcom/transsion/transfer/androidasync/a0$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/a;


# direct methods
.method constructor <init>(Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$i;->a:Lst/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/io/IOException;

    .line 4
    .line 5
    const-string v0, "sink was closed before emitter ended"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$i;->a:Lst/a;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
