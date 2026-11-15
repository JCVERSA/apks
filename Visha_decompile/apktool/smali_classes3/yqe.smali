.class public final Lyqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxh;


# instance fields
.field public final synthetic a:Lrwh;


# direct methods
.method public constructor <init>(Lrwh;)V
    .locals 0

    iput-object p1, p0, Lyqe;->a:Lrwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJLjava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p0, p0, Lyqe;->a:Lrwh;

    invoke-virtual {p0, p1, v0, v1, p4}, Lrwh;->e(IJLjava/lang/String;)Lxda;

    return-void
.end method

.method public final b(IJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p0, p0, Lyqe;->a:Lrwh;

    invoke-virtual {p0, p1, v0, v1}, Lrwh;->d(IJ)Lxda;

    return-void
.end method
