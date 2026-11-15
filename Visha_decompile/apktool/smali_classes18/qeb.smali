.class public final Lqeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqeb$a;
    }
.end annotation


# static fields
.field public static final c:Lqeb$a;


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqeb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqeb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqeb;->c:Lqeb$a;

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lqeb;->b:J

    return-void
.end method

.method public static final synthetic a(J)Lqeb;
    .locals 1

    new-instance v0, Lqeb;

    invoke-direct {v0, p0, p1}, Lqeb;-><init>(J)V

    return-object v0
.end method

.method public static b(J)J
    .locals 0

    return-wide p0
.end method

.method public static d(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lqeb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lqeb;

    invoke-virtual {p2}, Lqeb;->g()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ljgb;->c(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lqeb;

    invoke-virtual {p1}, Lqeb;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lqeb;->g()J

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Ljgb;->b(JJ)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lqeb;->b:J

    invoke-static {v0, v1, p1}, Lqeb;->d(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic g()J
    .locals 2

    iget-wide v0, p0, Lqeb;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lqeb;->b:J

    invoke-static {v0, v1}, Lqeb;->e(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lqeb;->b:J

    invoke-static {v0, v1}, Lqeb;->f(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
