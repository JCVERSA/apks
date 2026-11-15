.class final Lcom/mq/mgmi/client/message/h$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mq/mgmi/client/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mq/mgmi/client/message/h;


# direct methods
.method private constructor <init>(Lcom/mq/mgmi/client/message/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mq/mgmi/client/message/h$c;->a:Lcom/mq/mgmi/client/message/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mq/mgmi/client/message/h;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mq/mgmi/client/message/h$c;-><init>(Lcom/mq/mgmi/client/message/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/h$c;->a:Lcom/mq/mgmi/client/message/h;

    invoke-static {p0}, Lcom/mq/mgmi/client/message/h;->a(Lcom/mq/mgmi/client/message/h;)Lg6d;

    invoke-static {}, Lcom/mq/mgmi/client/message/h;->o()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method
