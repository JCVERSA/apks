.class public Lcom/hunantv/media/player/libnative/ImgoRtmpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeImgoRtmpClient:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ImgoRtmpSource"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close()I
.end method

.method public native isConnected()I
.end method

.method public native open(Ljava/lang/String;)I
.end method

.method public native read([BII)I
.end method

.method public native seek(I)I
.end method
