.class public abstract Loe/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Loe/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loe/d;

    .line 2
    .line 3
    invoke-direct {v0}, Loe/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loe/a;->a:Loe/d;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Loe/a;->a:Loe/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Loe/d;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Loe/a;->a:Loe/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Loe/d;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
