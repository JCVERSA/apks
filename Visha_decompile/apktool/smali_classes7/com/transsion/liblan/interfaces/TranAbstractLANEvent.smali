.class public abstract Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;
    }
.end annotation


# instance fields
.field protected final arg1:J

.field protected final arg2:J

.field protected final argf1:F

.field protected final args1:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    iput-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    iput-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    .line 21
    iput p2, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    .line 8
    iput-wide p2, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    .line 14
    iput-wide p2, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    .line 15
    iput-wide p4, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    .line 25
    iput-wide p2, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    const-wide/16 p1, 0x0

    .line 26
    iput-wide p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    .line 28
    iput-object p4, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    return-void
.end method
