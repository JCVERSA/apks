.class public abstract Lee3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lee3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lee3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lee3;-><init>(Lee3$a;)V

    sput-object v0, Lee3$c;->a:Lee3;

    return-void
.end method

.method public static synthetic a()Lee3;
    .locals 1

    sget-object v0, Lee3$c;->a:Lee3;

    return-object v0
.end method
