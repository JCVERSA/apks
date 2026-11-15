.class public final Lnee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnee;->a:J

    iput-wide p3, p0, Lnee;->b:J

    iput-object p5, p0, Lnee;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lnee;)J
    .locals 2

    iget-wide v0, p0, Lnee;->b:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lnee;)J
    .locals 2

    iget-wide v0, p0, Lnee;->a:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lnee;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnee;->c:Ljava/lang/String;

    return-object p0
.end method
