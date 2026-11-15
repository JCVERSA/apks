.class public abstract Lxfd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lxfd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxfd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxfd;-><init>(Lxfd$a;)V

    sput-object v0, Lxfd$b;->a:Lxfd;

    return-void
.end method

.method public static synthetic a()Lxfd;
    .locals 1

    sget-object v0, Lxfd$b;->a:Lxfd;

    return-object v0
.end method
