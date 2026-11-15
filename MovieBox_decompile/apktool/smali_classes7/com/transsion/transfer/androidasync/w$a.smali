.class Lcom/transsion/transfer/androidasync/w$a;
.super Lcom/transsion/transfer/androidasync/w$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/transfer/androidasync/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/w;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w$a;->b:Lcom/transsion/transfer/androidasync/w;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/w$l;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w$a;->b:Lcom/transsion/transfer/androidasync/w;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/w;->a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p2
.end method
