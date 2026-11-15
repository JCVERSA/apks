.class public Lcom/hunantv/media/report/entity/HeartBeatEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public act:Ljava/lang/String;

.field public common:Lcom/hunantv/media/report/entity/CommonEntity;

.field public current_position:Ljava/lang/String;

.field public duration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "heartbeat"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/HeartBeatEntity;->act:Ljava/lang/String;

    return-void
.end method
