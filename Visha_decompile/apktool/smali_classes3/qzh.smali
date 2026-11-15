.class public final Lqzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqzh;

.field public static volatile b:Lqzh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqzh;

    invoke-direct {v0}, Lqzh;-><init>()V

    sput-object v0, Lqzh;->a:Lqzh;

    sput-object v0, Lqzh;->b:Lqzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lqzh;
    .locals 1

    sget-object v0, Lqzh;->b:Lqzh;

    return-object v0
.end method
