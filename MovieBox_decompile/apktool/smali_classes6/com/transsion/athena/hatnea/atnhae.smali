.class public Lcom/transsion/athena/hatnea/atnhae;
.super Lcom/transsion/athena/hatnea/anateh;
.source "source.java"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "https://time.cloudflare.com"

    .line 2
    .line 3
    const-string v1, "https://www.pool.ntp.org"

    .line 4
    .line 5
    const-string v2, "https://time1.google.com"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/transsion/athena/hatnea/atnhae;->c:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x1f7

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/transsion/athena/hatnea/atnhae;->c:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v1, v2, v1

    .line 25
    .line 26
    invoke-static {v1}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehanat;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Retrieve-Time"

    .line 2
    .line 3
    return-object v0
.end method
