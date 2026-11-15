.class public final Lv6e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lv6e;->a:J

    iput-wide v0, p0, Lv6e;->b:J

    return-void
.end method

.method public static bridge synthetic a(Lv6e;)J
    .locals 2

    iget-wide v0, p0, Lv6e;->a:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lv6e;)J
    .locals 2

    iget-wide v0, p0, Lv6e;->b:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lv6e;J)V
    .locals 0

    iput-wide p1, p0, Lv6e;->a:J

    return-void
.end method

.method public static bridge synthetic f(Lv6e;J)V
    .locals 0

    iput-wide p1, p0, Lv6e;->b:J

    return-void
.end method

.method public static bridge synthetic g(Lv6e;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lv6e;->a:J

    iput-wide v0, p0, Lv6e;->b:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lv6e;->a:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lv6e;->b:J

    return-wide v0
.end method
