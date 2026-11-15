.class public abstract Lgp3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lgp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgp3;

    invoke-direct {v0}, Lgp3;-><init>()V

    sput-object v0, Lgp3$c;->a:Lgp3;

    return-void
.end method

.method public static bridge synthetic a()Lgp3;
    .locals 1

    sget-object v0, Lgp3$c;->a:Lgp3;

    return-object v0
.end method
