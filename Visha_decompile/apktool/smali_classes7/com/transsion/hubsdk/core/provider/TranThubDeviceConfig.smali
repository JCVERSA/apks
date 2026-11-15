.class public Lcom/transsion/hubsdk/core/provider/TranThubDeviceConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/provider/ITranDeviceConfigAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubDeviceConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranDeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/provider/TranDeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
