.class public final Lag/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag/a$a;
    }
.end annotation


# static fields
.field public static final a:Lag/a$a;

.field private static b:Landroid/app/Application;

.field private static c:Lag/b;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lag/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lag/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lag/a;->a:Lag/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lag/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic b()Lag/b;
    .locals 1

    .line 1
    sget-object v0, Lag/a;->c:Lag/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Landroid/app/Application;)V
    .locals 0

    .line 1
    sput-object p0, Lag/a;->b:Landroid/app/Application;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lag/a;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lag/b;)V
    .locals 0

    .line 1
    sput-object p0, Lag/a;->c:Lag/b;

    .line 2
    .line 3
    return-void
.end method
