.class public abstract Lup0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lup0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lup0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lup0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lup0;-><init>(Lup0$a;)V

    sput-object v0, Lup0$b;->a:Lup0;

    return-void
.end method

.method public static synthetic a()Lup0;
    .locals 1

    sget-object v0, Lup0$b;->a:Lup0;

    return-object v0
.end method
