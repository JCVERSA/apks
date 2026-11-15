.class public Lh3/s$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final c:Lh3/s$b;


# instance fields
.field public final a:J

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lh3/s$b;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lh3/s$b;-><init>(JZ)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lh3/s$b;->c:Lh3/s$b;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lh3/s$b;->a:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lh3/s$b;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a()Lh3/s$b;
    .locals 1

    .line 1
    sget-object v0, Lh3/s$b;->c:Lh3/s$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Lh3/s$b;
    .locals 1

    .line 1
    sget-object v0, Lh3/s$b;->c:Lh3/s$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(J)Lh3/s$b;
    .locals 2

    .line 1
    new-instance v0, Lh3/s$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lh3/s$b;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
