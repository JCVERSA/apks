.class public abstract Lue/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lue/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lue/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lue/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lue/a;->a:Lue/c;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lue/a;->a:Lue/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lue/c;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lue/a;->a:Lue/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lue/c;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
