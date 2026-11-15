.class public Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bean/CloudControlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field private cloudControlCacheInterval:Ljava/lang/Integer;

.field private cloudControlVersion:Ljava/lang/String;

.field private codeSeats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCloudControlCacheInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->cloudControlCacheInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudControlVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->cloudControlVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->codeSeats:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCloudControlCacheInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->cloudControlCacheInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCloudControlVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->cloudControlVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeats(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->codeSeats:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method
