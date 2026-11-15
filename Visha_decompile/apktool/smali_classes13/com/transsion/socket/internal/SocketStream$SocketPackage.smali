.class public Lcom/transsion/socket/internal/SocketStream$SocketPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/internal/SocketStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketPackage"
.end annotation


# static fields
.field public static HEART_BEAT_PACKAGE:Lcom/transsion/socket/internal/SocketStream$SocketPackage;


# instance fields
.field public mClazzType:B

.field public mData:[B

.field public mSize:I

.field public mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-direct {v0}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;-><init>()V

    const/16 v1, -0x7f

    invoke-virtual {v0, v1}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->setClazzType(B)Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->setData([B)Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    move-result-object v0

    sput-object v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->HEART_BEAT_PACKAGE:Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setClazzType(B)Lcom/transsion/socket/internal/SocketStream$SocketPackage;
    .locals 0

    iput-byte p1, p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    return-object p0
.end method

.method public setData([B)Lcom/transsion/socket/internal/SocketStream$SocketPackage;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mSize:I

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mData:[B

    return-object p0
.end method

.method public toSocketData()Lcom/transsion/socket/pkgdata/SocketData;
    .locals 0

    invoke-static {p0}, Lcom/transsion/socket/pkgdata/SocketData;->toSocketData(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object p0

    return-object p0
.end method
