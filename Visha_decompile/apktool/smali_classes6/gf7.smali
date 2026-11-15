.class public abstract Lgf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:I

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lgf7;->b:I

    const-string v0, "OnNoDoubleClickListener"

    iput-object v0, p0, Lgf7;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lgf7;->d:Ljava/lang/String;

    iget-wide v1, p0, Lgf7;->c:J

    iget v3, p0, Lgf7;->b:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Loa1;->b(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgf7;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick ingoreClickEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgf7;->c:J

    invoke-virtual {p0, p1}, Lgf7;->a(Landroid/view/View;)V

    return-void
.end method
