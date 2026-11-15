.class Lcom/transsion/http/impl/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/transsion/http/impl/p;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/p;ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/transsion/http/impl/i;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/transsion/http/impl/i;->b:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
