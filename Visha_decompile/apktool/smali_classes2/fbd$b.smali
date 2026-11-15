.class public abstract Lfbd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lfbd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfbd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfbd;-><init>(Lfbd$a;)V

    sput-object v0, Lfbd$b;->a:Lfbd;

    return-void
.end method

.method public static synthetic a()Lfbd;
    .locals 1

    sget-object v0, Lfbd$b;->a:Lfbd;

    return-object v0
.end method
