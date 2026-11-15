.class public abstract Li44$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Li44;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li44;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li44;-><init>(Lj44;)V

    sput-object v0, Li44$b;->a:Li44;

    return-void
.end method

.method public static bridge synthetic a()Li44;
    .locals 1

    sget-object v0, Li44$b;->a:Li44;

    return-object v0
.end method
