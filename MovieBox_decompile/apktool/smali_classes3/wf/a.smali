.class public final Lwf/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwf/a$a;
    }
.end annotation


# static fields
.field public static final a:Lwf/a$a;

.field private static b:Lxf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwf/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwf/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwf/a;->a:Lwf/a$a;

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

.method public static final synthetic a()Lxf/a;
    .locals 1

    .line 1
    sget-object v0, Lwf/a;->b:Lxf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lxf/a;)V
    .locals 0

    .line 1
    sput-object p0, Lwf/a;->b:Lxf/a;

    .line 2
    .line 3
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
