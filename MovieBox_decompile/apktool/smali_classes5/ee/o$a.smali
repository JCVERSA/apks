.class public abstract Lee/o$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lee/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lee/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lee/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lee/o$a;->a:Lee/o;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Lee/o;
    .locals 1

    .line 1
    sget-object v0, Lee/o$a;->a:Lee/o;

    .line 2
    .line 3
    return-object v0
.end method
