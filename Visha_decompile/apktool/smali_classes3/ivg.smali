.class public abstract Livg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Love;

.field public static volatile b:Love;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc5g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc5g;-><init>(Ltff;)V

    sput-object v0, Livg;->a:Love;

    sput-object v0, Livg;->b:Love;

    return-void
.end method

.method public static a()Love;
    .locals 1

    sget-object v0, Livg;->b:Love;

    return-object v0
.end method
