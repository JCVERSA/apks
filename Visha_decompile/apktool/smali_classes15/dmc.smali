.class public final synthetic Ldmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/SocketMain$SocketDataCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final creatorSocketData(I)Lcom/transsion/socket/pkgdata/SocketData;
    .locals 0

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->d(I)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object p0

    return-object p0
.end method
