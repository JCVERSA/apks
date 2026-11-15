.class public Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerExtraInfo"
.end annotation


# instance fields
.field public bufsizeByte:J

.field public buftimeMs:J

.field public dlt:J

.field public lastIP:Ljava/lang/String;

.field public playSessionID:Ljava/lang/String;

.field public smt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
