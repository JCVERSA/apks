.class public abstract Lgec$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lgec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgec;-><init>(Lhec;)V

    sput-object v0, Lgec$e;->a:Lgec;

    return-void
.end method

.method public static bridge synthetic a()Lgec;
    .locals 1

    sget-object v0, Lgec$e;->a:Lgec;

    return-object v0
.end method
