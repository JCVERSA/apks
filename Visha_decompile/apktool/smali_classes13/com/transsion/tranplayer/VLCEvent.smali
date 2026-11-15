.class public abstract Lcom/transsion/tranplayer/VLCEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/VLCEvent$Listener;
    }
.end annotation


# instance fields
.field protected final arg1:J

.field protected final arg2:J

.field protected final arg3:J

.field protected final arg4:J

.field protected final argf1:F

.field protected final argstr:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    .line 4
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    .line 5
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 6
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    .line 36
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    .line 37
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 38
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    .line 39
    iput p2, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    .line 11
    iput-wide p2, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    .line 13
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 14
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    .line 19
    iput-wide p2, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    .line 20
    iput-wide p4, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 22
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJJJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    .line 27
    iput-wide p2, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    .line 28
    iput-wide p4, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    .line 29
    iput-wide p6, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 30
    iput-wide p8, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJLjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->type:I

    .line 43
    iput-wide p2, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    .line 44
    iput-wide p4, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    const-wide/16 p1, 0x0

    .line 45
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    .line 46
    iput-wide p1, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    .line 48
    iput-object p6, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    return-void
.end method
