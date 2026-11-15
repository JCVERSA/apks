.class public Lcom/amazonaws/event/ProgressEvent;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:J

.field protected b:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazonaws/event/ProgressEvent;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/event/ProgressEvent;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->b:I

    .line 2
    .line 3
    return-void
.end method
