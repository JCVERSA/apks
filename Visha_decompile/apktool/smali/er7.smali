.class public Ler7;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ler7$a;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Ler7$a;

.field public d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ler7$a;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ler7;->d:J

    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ler7;->b:I

    iput-object p2, p0, Ler7;->c:Ler7$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ler7;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ler7;->d:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ler7;->c:Ler7$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ler7$a;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget p0, p0, Ler7;->b:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
