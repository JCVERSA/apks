.class Lcom/transsion/transfer/androidasync/w$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w$g;->a:Lcom/transsion/transfer/androidasync/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/w$g;->b(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w$g;->a:Lcom/transsion/transfer/androidasync/w;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/w;->a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
