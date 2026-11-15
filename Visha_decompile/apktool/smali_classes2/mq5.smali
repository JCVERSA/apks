.class public abstract Lmq5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Let5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Liq5;

    invoke-direct {v0}, Liq5;-><init>()V

    sput-object v0, Lmq5;->a:Let5;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmq5;->a:Let5;

    invoke-interface {v0, p0}, Let5;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmq5;->a:Let5;

    invoke-interface {v0, p0, p1}, Let5;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmq5;->a:Let5;

    invoke-interface {v0, p0}, Let5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmq5;->a:Let5;

    invoke-interface {v0, p0, p1}, Let5;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
