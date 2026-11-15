.class public abstract Lke7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lm6d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm6d;

    invoke-direct {v0}, Lm6d;-><init>()V

    sput-object v0, Lke7;->a:Lm6d;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lke7;->a:Lm6d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm6d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lke7;->a:Lm6d;

    invoke-virtual {v0}, Lm6d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lke7;->a:Lm6d;

    invoke-virtual {v0}, Lm6d;->e()Z

    move-result v0

    return v0
.end method
