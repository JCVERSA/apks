.class public abstract Lghb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lax4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt62;

    invoke-direct {v0}, Lt62;-><init>()V

    sput-object v0, Lghb;->a:Lax4;

    return-void
.end method

.method public static a()Lax4;
    .locals 1

    sget-object v0, Lghb;->a:Lax4;

    return-object v0
.end method

.method public static b(Lax4;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lghb;->a:Lax4;

    :cond_0
    return-void
.end method
