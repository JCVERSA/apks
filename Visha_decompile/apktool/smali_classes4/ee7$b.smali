.class public abstract Lee7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lee7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lee7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lee7;-><init>(Lee7$a;)V

    sput-object v0, Lee7$b;->a:Lee7;

    return-void
.end method

.method public static synthetic a()Lee7;
    .locals 1

    sget-object v0, Lee7$b;->a:Lee7;

    return-object v0
.end method
