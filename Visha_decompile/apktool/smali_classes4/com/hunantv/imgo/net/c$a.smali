.class Lcom/hunantv/imgo/net/c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/net/c;


# direct methods
.method private constructor <init>(Lcom/hunantv/imgo/net/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/imgo/net/c;Lcom/hunantv/imgo/net/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/net/c$a;-><init>(Lcom/hunantv/imgo/net/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/hunantv/imgo/net/c;->a(Lcom/hunantv/imgo/net/c;I)I

    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p1}, Lcom/hunantv/imgo/net/c;->c(Lcom/hunantv/imgo/net/c;)I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p2}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;)I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p1}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;I)I

    iget-object p0, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p0}, Lcom/hunantv/imgo/net/c;->d(Lcom/hunantv/imgo/net/c;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result p2

    invoke-static {p1, p2}, Lcom/hunantv/imgo/net/c;->a(Lcom/hunantv/imgo/net/c;I)I

    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p1}, Lcom/hunantv/imgo/net/c;->c(Lcom/hunantv/imgo/net/c;)I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p2}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;)I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p1}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/hunantv/imgo/net/c;->b(Lcom/hunantv/imgo/net/c;I)I

    iget-object p0, p0, Lcom/hunantv/imgo/net/c$a;->a:Lcom/hunantv/imgo/net/c;

    invoke-static {p0}, Lcom/hunantv/imgo/net/c;->d(Lcom/hunantv/imgo/net/c;)V

    :cond_2
    return-void
.end method
