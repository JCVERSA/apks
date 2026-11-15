.class public final Lxf/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxf/c$a;
    }
.end annotation


# static fields
.field public static final a:Lxf/c$a;

.field private static b:Landroid/app/Application;

.field private static c:Z

.field private static d:Lcom/tn/lib/logger/xlog/LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxf/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lxf/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxf/c;->a:Lxf/c$a;

    .line 8
    .line 9
    sget-object v0, Lcom/tn/lib/logger/xlog/LogType;->TYPE_LOGCAT:Lcom/tn/lib/logger/xlog/LogType;

    .line 10
    .line 11
    sput-object v0, Lxf/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    .line 12
    .line 13
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

.method public static final synthetic a()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lxf/c;->b:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lcom/tn/lib/logger/xlog/LogType;
    .locals 1

    .line 1
    sget-object v0, Lxf/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lxf/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d(Landroid/app/Application;)V
    .locals 0

    .line 1
    sput-object p0, Lxf/c;->b:Landroid/app/Application;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lxf/c;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/tn/lib/logger/xlog/LogType;)V
    .locals 0

    .line 1
    sput-object p0, Lxf/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    .line 2
    .line 3
    return-void
.end method
