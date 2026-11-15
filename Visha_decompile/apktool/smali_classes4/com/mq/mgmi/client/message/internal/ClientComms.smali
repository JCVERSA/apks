.class public abstract Lcom/mq/mgmi/client/message/internal/ClientComms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;,
        Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic b(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/mq/mgmi/client/message/internal/ClientComms;)Lg6d;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract d(I)V
.end method

.method public abstract e()Lf9d;
.end method

.method public abstract f(Les6;Lbud;)V
.end method
