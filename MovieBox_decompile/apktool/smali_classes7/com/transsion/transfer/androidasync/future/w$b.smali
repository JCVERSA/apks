.class Lcom/transsion/transfer/androidasync/future/w$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/future/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field b:Ljava/lang/Object;

.field c:Lcom/transsion/transfer/androidasync/future/w$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/w$b;->c:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/future/w$b;->a:Ljava/lang/Exception;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/future/w$b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->c:Lcom/transsion/transfer/androidasync/future/w$a;

    .line 11
    .line 12
    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->a:Ljava/lang/Exception;

    .line 13
    .line 14
    iput-object v3, p0, Lcom/transsion/transfer/androidasync/future/w$b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/transfer/androidasync/future/w$a;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/w$b;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
