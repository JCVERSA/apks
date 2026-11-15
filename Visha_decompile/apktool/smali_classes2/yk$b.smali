.class public final Lyk$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lyk$b;->b:[B

    iput-wide p3, p0, Lyk$b;->c:J

    iput-wide p5, p0, Lyk$b;->d:J

    return-void
.end method

.method public static synthetic a(Lyk$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyk$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lyk$b;)[B
    .locals 0

    iget-object p0, p0, Lyk$b;->b:[B

    return-object p0
.end method

.method public static synthetic c(Lyk$b;)J
    .locals 2

    iget-wide v0, p0, Lyk$b;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lyk$b;)J
    .locals 2

    iget-wide v0, p0, Lyk$b;->c:J

    return-wide v0
.end method
