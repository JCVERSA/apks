.class public final Lbg/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lbg/a;

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbg/a;->a:Lbg/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    sput p1, Lbg/a;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 1
    sput-wide p1, Lbg/a;->c:J

    .line 2
    .line 3
    return-void
.end method
