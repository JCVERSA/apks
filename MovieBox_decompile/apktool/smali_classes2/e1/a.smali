.class public final Le1/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$a;,
        Le1/a$d;,
        Le1/a$c;,
        Le1/a$b;
    }
.end annotation


# static fields
.field public static final b:Le1/a$a;


# instance fields
.field private final a:Le1/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le1/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Le1/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Le1/a;->b:Le1/a$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Le1/a$b;

    invoke-direct {v0, p1}, Le1/a$b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le1/a$c;

    invoke-direct {v0, p1}, Le1/a$c;-><init>(Landroid/app/Activity;)V

    .line 5
    :goto_0
    iput-object v0, p0, Le1/a;->a:Le1/a$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le1/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic a(Le1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le1/a;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/a;->a:Le1/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Le1/a$c;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
