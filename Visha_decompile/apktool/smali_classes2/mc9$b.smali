.class public abstract Lmc9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lmc9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmc9;-><init>(Lmc9$a;)V

    sput-object v0, Lmc9$b;->a:Lmc9;

    return-void
.end method

.method public static synthetic a()Lmc9;
    .locals 1

    sget-object v0, Lmc9$b;->a:Lmc9;

    return-object v0
.end method
