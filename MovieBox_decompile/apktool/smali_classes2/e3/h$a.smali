.class final Le3/h$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(JZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le3/h$a;->a:J

    .line 5
    .line 6
    iput-boolean p3, p0, Le3/h$a;->b:Z

    .line 7
    .line 8
    iput p4, p0, Le3/h$a;->c:I

    .line 9
    .line 10
    return-void
.end method
