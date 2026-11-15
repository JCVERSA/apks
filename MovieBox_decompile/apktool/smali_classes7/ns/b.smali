.class public final Lns/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lns/b$a;
    }
.end annotation


# static fields
.field public static final a:Lns/b$a;

.field private static b:Lns/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lns/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lns/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lns/b;->a:Lns/b$a;

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

.method public static final synthetic a()Lns/a;
    .locals 1

    .line 1
    sget-object v0, Lns/b;->b:Lns/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lns/a;)V
    .locals 0

    .line 1
    sput-object p0, Lns/b;->b:Lns/a;

    .line 2
    .line 3
    return-void
.end method
