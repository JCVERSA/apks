.class public abstract Lqyh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lsyh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltyh;

    invoke-direct {v0}, Ltyh;-><init>()V

    sput-object v0, Lqyh;->a:Lsyh;

    return-void
.end method

.method public static a()Lsyh;
    .locals 1

    sget-object v0, Lqyh;->a:Lsyh;

    return-object v0
.end method
