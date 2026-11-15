.class public final synthetic Lur9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/socket/SocketTrafficStats;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/socket/SocketTrafficStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lur9;->b:Lcom/transsion/socket/SocketTrafficStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lur9;->b:Lcom/transsion/socket/SocketTrafficStats;

    invoke-static {p0}, Lcom/transsion/socket/SocketTrafficStats;->a(Lcom/transsion/socket/SocketTrafficStats;)V

    return-void
.end method
