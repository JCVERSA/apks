.class public abstract Lee/g$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lee/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lee/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lee/g;-><init>(Lee/g$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lee/g$b;->a:Lee/g;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lee/g;
    .locals 1

    .line 1
    sget-object v0, Lee/g$b;->a:Lee/g;

    .line 2
    .line 3
    return-object v0
.end method
