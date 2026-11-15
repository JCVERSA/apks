.class Lcom/transsion/transfer/androidasync/a0$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->e(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lst/a;Lst/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lst/a;


# direct methods
.method constructor <init>(Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$d;->b:Lst/a;

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
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$d;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/a0$d;->a:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$d;->b:Lst/a;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
