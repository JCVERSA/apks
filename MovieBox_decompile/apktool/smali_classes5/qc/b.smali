.class public abstract Lqc/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc/b$b;
    }
.end annotation


# static fields
.field private static final a:Lqc/a;

.field private static volatile b:Lqc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqc/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lqc/b$b;-><init>(Lqc/b$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqc/b;->a:Lqc/a;

    .line 8
    .line 9
    sput-object v0, Lqc/b;->b:Lqc/a;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lqc/a;
    .locals 1

    .line 1
    sget-object v0, Lqc/b;->b:Lqc/a;

    .line 2
    .line 3
    return-object v0
.end method
