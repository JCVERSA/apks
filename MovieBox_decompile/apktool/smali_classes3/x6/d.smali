.class public final synthetic Lx6/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lx6/d;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lx6/d;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lx6/d;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Lx6/d;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lx6/e;->c(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
