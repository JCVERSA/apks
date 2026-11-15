.class final Lx1/b4$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/r;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/b4$b;->a:Landroidx/media3/common/r;

    .line 5
    .line 6
    iput p2, p0, Lx1/b4$b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lx1/b4$b;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
