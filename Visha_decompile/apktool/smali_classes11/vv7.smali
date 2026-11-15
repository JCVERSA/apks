.class public abstract Lvv7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x1388L

.field public static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lvv7;->a:J

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lvv7;->b:Ljava/lang/String;

    return-void
.end method
