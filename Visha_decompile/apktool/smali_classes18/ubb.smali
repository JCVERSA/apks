.class public abstract Lubb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo54;

    const-string v1, "kotlin.coroutines.experimental.Continuation"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Lubb;->a:Lo54;

    return-void
.end method

.method public static final synthetic a()Lo54;
    .locals 1

    sget-object v0, Lubb;->a:Lo54;

    return-object v0
.end method
