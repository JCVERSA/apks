.class public abstract Liui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyug;

.field public static volatile b:Lyug;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu6i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu6i;-><init>(Lmlh;)V

    sput-object v0, Liui;->a:Lyug;

    sput-object v0, Liui;->b:Lyug;

    return-void
.end method

.method public static a()Lyug;
    .locals 1

    sget-object v0, Liui;->b:Lyug;

    return-object v0
.end method
