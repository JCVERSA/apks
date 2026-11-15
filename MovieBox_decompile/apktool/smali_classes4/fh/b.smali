.class public final Lfh/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh/b$a;
    }
.end annotation


# static fields
.field public static final a:Lfh/b$a;

.field private static b:Lfh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfh/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfh/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfh/b;->a:Lfh/b$a;

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

.method public static final synthetic a()Lfh/a;
    .locals 1

    .line 1
    sget-object v0, Lfh/b;->b:Lfh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lfh/a;)V
    .locals 0

    .line 1
    sput-object p0, Lfh/b;->b:Lfh/a;

    .line 2
    .line 3
    return-void
.end method
