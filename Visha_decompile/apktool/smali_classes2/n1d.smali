.class public final synthetic Ln1d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ln1d;->b:J

    iput-wide p3, p0, Ln1d;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Ln1d;->b:J

    iget-wide v2, p0, Ln1d;->c:J

    invoke-static {v0, v1, v2, v3}, Ll3d;->c(JJ)V

    return-void
.end method
