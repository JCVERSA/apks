.class public Lcom/transsion/athena/hatnea/atnhae;
.super Lcom/transsion/athena/hatnea/anateh;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "https://time.cloudflare.com"

    const-string v1, "https://www.pool.ntp.org"

    const-string v2, "https://time1.google.com"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/hatnea/atnhae;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/transsion/athena/hatnea/atnhae;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/transsion/athena/hatnea/b;->c(Ljava/lang/String;)Lrbd;

    move-result-object v1

    iget v2, v1, Lrbd;->a:I

    if-nez v2, :cond_0

    iget-object v1, v1, Lrbd;->b:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/athena/hatnea/atnhae;->d:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "Retrieve-Time"

    return-object p0
.end method
