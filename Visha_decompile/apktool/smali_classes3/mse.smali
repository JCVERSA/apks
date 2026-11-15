.class public final Lmse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# instance fields
.field public final synthetic a:Lose;


# direct methods
.method public constructor <init>(Lose;)V
    .locals 0

    iput-object p1, p0, Lmse;->a:Lose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    if-eqz p4, :cond_0

    iget-object p0, p0, Lmse;->a:Lose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lose;->g(Lose;J)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lose;->f(Lose;Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lmse;->a:Lose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0}, Lose;->a(Lose;)J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_1

    invoke-static {p0}, Lose;->a(Lose;)J

    move-result-wide p3

    cmp-long p3, p1, p3

    if-ltz p3, :cond_1

    invoke-static {p0}, Lose;->a(Lose;)J

    move-result-wide p3

    sub-long/2addr p1, p3

    invoke-static {p0, p1, p2}, Lose;->e(Lose;J)V

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lose;->f(Lose;Z)V

    return-void
.end method
