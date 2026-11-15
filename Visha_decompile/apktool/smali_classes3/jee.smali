.class public final Ljee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljee;->a:J

    iput-wide p3, p0, Ljee;->b:J

    return-void
.end method

.method public static bridge synthetic a(Ljee;)J
    .locals 2

    iget-wide v0, p0, Ljee;->a:J

    return-wide v0
.end method

.method public static bridge synthetic b(Ljee;)J
    .locals 2

    iget-wide v0, p0, Ljee;->b:J

    return-wide v0
.end method
