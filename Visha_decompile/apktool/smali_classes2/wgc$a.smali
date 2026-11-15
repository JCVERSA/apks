.class public final Lwgc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwgc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwgc$a;->a:I

    iput-wide p2, p0, Lwgc$a;->b:J

    return-void
.end method

.method public static a(Lpk3;Lqw7;)Lwgc$a;
    .locals 3

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lpk3;->peekFully([BII)V

    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    invoke-virtual {p1}, Lqw7;->n()I

    move-result p0

    invoke-virtual {p1}, Lqw7;->s()J

    move-result-wide v0

    new-instance p1, Lwgc$a;

    invoke-direct {p1, p0, v0, v1}, Lwgc$a;-><init>(IJ)V

    return-object p1
.end method
