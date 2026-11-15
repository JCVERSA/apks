.class public final Lrzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lrzh;

.field public static volatile b:Lrzh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrzh;

    invoke-direct {v0}, Lrzh;-><init>()V

    sput-object v0, Lrzh;->a:Lrzh;

    sput-object v0, Lrzh;->b:Lrzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lrzh;
    .locals 1

    sget-object v0, Lrzh;->b:Lrzh;

    return-object v0
.end method
