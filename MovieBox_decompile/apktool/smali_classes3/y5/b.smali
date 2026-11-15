.class public abstract Ly5/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Z = false

.field private static b:I = 0x4

.field private static c:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Ly5/b;->a:Z

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Ly5/b;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b(I)V
    .locals 0

    .line 1
    sput p0, Ly5/b;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Ly5/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Ly5/b;->a:Z

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Ly5/b;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
