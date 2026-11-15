.class public abstract Lnuh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Louh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Louh;

    invoke-direct {v0}, Louh;-><init>()V

    sput-object v0, Lnuh;->a:Louh;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lnuh;->a:Louh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Louh;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lnuh;->a:Louh;

    invoke-virtual {v0}, Louh;->b()Z

    move-result v0

    return v0
.end method
