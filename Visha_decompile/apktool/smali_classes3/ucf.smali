.class public abstract Lucf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbbf;

.field public static volatile b:Lbbf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljcf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljcf;-><init>(Lrbf;)V

    sput-object v0, Lucf;->a:Lbbf;

    sput-object v0, Lucf;->b:Lbbf;

    return-void
.end method

.method public static a()Lbbf;
    .locals 1

    sget-object v0, Lucf;->b:Lbbf;

    return-object v0
.end method
