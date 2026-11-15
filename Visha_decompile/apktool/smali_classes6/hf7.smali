.class public abstract Lhf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# instance fields
.field public b:J

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnNoDoubleFootOptBarClickListener"

    iput-object v0, p0, Lhf7;->c:Ljava/lang/String;

    invoke-static {}, Loa1;->a()I

    move-result v0

    iput v0, p0, Lhf7;->d:I

    iput-object p1, p0, Lhf7;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public b(I)V
    .locals 1

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lhf7;->d:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lhf7;->d:I

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    iget-object v0, p0, Lhf7;->c:Ljava/lang/String;

    iget-wide v1, p0, Lhf7;->b:J

    iget v3, p0, Lhf7;->d:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Loa1;->b(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhf7;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lhf7;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",index:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhf7;->b:J

    invoke-virtual {p0, p1}, Lhf7;->a(I)V

    return-void
.end method
