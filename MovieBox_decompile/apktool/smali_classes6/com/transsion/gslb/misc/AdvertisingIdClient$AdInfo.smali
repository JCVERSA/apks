.class public final Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/gslb/misc/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field public final advertisingId:Ljava/lang/String;

.field public final limitAdTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 2
    .line 3
    return v0
.end method
