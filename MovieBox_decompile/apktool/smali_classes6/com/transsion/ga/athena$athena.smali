.class Lcom/transsion/ga/athena$athena;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/athena;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ga/athena;


# direct methods
.method constructor <init>(Lcom/transsion/ga/athena;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/ga/athena;->a(Lcom/transsion/ga/athena;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/transsion/ga/athena;->c(Lcom/transsion/ga/athena;)Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lcom/transsion/ga/athena;->f(Lcom/transsion/ga/athena;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/transsion/ga/athena;->b(Lcom/transsion/ga/athena;J)J

    .line 27
    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void
.end method
