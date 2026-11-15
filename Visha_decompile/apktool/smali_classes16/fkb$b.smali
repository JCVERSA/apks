.class public abstract Lfkb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lfkb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfkb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfkb;-><init>(Lfkb$a;)V

    sput-object v0, Lfkb$b;->a:Lfkb;

    return-void
.end method

.method public static synthetic a()Lfkb;
    .locals 1

    sget-object v0, Lfkb$b;->a:Lfkb;

    return-object v0
.end method
