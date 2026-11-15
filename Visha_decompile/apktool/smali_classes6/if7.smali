.class public abstract Lif7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field private limitForList:Z

.field protected mFirstClickTime:J

.field private mIntervalTime:I

.field private mLastClickPosition:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Loa1;->a()I

    move-result v0

    iput v0, p0, Lif7;->mIntervalTime:I

    .line 3
    const-string v0, "OnNoDoubleItemClickListener"

    iput-object v0, p0, Lif7;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Loa1;->a()I

    move-result v0

    iput v0, p0, Lif7;->mIntervalTime:I

    .line 6
    const-string v0, "OnNoDoubleItemClickListener"

    iput-object v0, p0, Lif7;->mTag:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lif7;->limitForList:Z

    .line 8
    invoke-static {}, Loa1;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lif7;->mIntervalTime:I

    if-ge p1, p2, :cond_0

    return-void

    .line 9
    :cond_0
    iput p1, p0, Lif7;->mIntervalTime:I

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    iget-boolean v0, p0, Lif7;->limitForList:Z

    if-nez v0, :cond_0

    iget v0, p0, Lif7;->mLastClickPosition:I

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lif7;->mTag:Ljava/lang/String;

    iget-wide v1, p0, Lif7;->mFirstClickTime:J

    iget v3, p0, Lif7;->mIntervalTime:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Loa1;->b(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lif7;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lif7;->mIntervalTime:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p3, p0, Lif7;->mLastClickPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lif7;->mFirstClickTime:J

    invoke-virtual {p0, p1, p2, p3}, Lif7;->OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public resetClickTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lif7;->mFirstClickTime:J

    const/4 v0, -0x1

    iput v0, p0, Lif7;->mLastClickPosition:I

    return-void
.end method

.method public setIntervalTime(I)V
    .locals 1

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lif7;->mIntervalTime:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lif7;->mIntervalTime:I

    return-void
.end method

.method public setLimitForList(Z)V
    .locals 0

    iput-boolean p1, p0, Lif7;->limitForList:Z

    return-void
.end method
