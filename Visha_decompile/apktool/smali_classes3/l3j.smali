.class public final Ll3j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ll3j;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll3j;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Ll3j;-><init>(J)V

    sput-object v0, Ll3j;->b:Ll3j;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ll3j;->a:J

    return-void
.end method
