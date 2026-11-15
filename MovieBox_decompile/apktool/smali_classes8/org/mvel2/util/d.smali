.class public abstract Lorg/mvel2/util/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/util/d$b;,
        Lorg/mvel2/util/d$a;
    }
.end annotation


# static fields
.field public static a:Lorg/mvel2/util/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/util/d$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mvel2/util/d$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mvel2/util/d;->a:Lorg/mvel2/util/d$a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/util/d;->a:Lorg/mvel2/util/d$a;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lorg/mvel2/util/d$a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/util/d;->a:Lorg/mvel2/util/d$a;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lorg/mvel2/util/d$a;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
