.class Lcom/hunantv/imgo/net/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/net/c;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/net/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/c$1;->a:Lcom/hunantv/imgo/net/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/net/c$1;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {v0}, Lcom/hunantv/imgo/net/c;->a(Lcom/hunantv/imgo/net/c;)Lcom/hunantv/imgo/net/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/imgo/net/c$1;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {v0}, Lcom/hunantv/imgo/net/c;->a(Lcom/hunantv/imgo/net/c;)Lcom/hunantv/imgo/net/c$b;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/imgo/net/c$1;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p0}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/hunantv/imgo/net/c$b;->a(I)V

    :cond_0
    return-void
.end method
