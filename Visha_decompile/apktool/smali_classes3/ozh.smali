.class public abstract Lozh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llzh;

.field public static volatile b:Llzh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmzh;-><init>(Lnzh;)V

    sput-object v0, Lozh;->a:Llzh;

    sput-object v0, Lozh;->b:Llzh;

    return-void
.end method

.method public static a()Llzh;
    .locals 1

    sget-object v0, Lozh;->b:Llzh;

    return-object v0
.end method
