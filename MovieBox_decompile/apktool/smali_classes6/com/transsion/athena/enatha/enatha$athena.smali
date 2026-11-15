.class Lcom/transsion/athena/enatha/enatha$athena;
.super Lcom/transsion/athena/aethna/aethna;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/athena/aethna/aethna;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;IZ)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x1

    .line 22
    new-array p2, p2, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aput-object p1, p2, v0

    .line 26
    .line 27
    const-string p1, "onConfigChanged exception : %s"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method
