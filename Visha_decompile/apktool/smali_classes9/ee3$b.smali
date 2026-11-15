.class public Lee3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/transsion/push/bean/PushMessage;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/transsion/push/bean/PushMessage;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    iput-wide p2, p0, Lee3$b;->b:J

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 4

    iget-object v0, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    invoke-virtual {v0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lee3$b;->b:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    iget v0, v0, Lcom/transsion/push/bean/PushMessage;->eventType:I

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    iget-object p0, p0, Lcom/transsion/push/bean/PushMessage;->eventParams:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lee3$b;->a:Lcom/transsion/push/bean/PushMessage;

    iget-object p0, p0, Lcom/transsion/push/bean/PushMessage;->eventParams:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
