.class final Le3/q$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Le3/q$a;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Le3/q$a;->b:J

    .line 7
    .line 8
    iput p4, p0, Le3/q$a;->c:I

    .line 9
    .line 10
    return-void
.end method
