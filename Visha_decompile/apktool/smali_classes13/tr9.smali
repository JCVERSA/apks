.class public final synthetic Ltr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/Action3;


# instance fields
.field public final synthetic a:Lcom/transsion/socket/SocketServer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/socket/SocketServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr9;->a:Lcom/transsion/socket/SocketServer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltr9;->a:Lcom/transsion/socket/SocketServer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/transsion/socket/SocketTransferChannel;

    check-cast p3, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/socket/SocketServer;->a(Lcom/transsion/socket/SocketServer;ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    return-void
.end method
