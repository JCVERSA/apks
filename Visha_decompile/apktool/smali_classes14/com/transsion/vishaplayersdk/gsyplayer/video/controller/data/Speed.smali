.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private speed:F


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->speed:F

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSpeed()F
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->speed:F

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->name:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->speed:F

    return-void
.end method
