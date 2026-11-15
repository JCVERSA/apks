.class public Lcom/mgtv/data/aphone/core/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/mgtv/data/aphone/core/e/f;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/e/f;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/e/f;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/f;->b:Lcom/mgtv/data/aphone/core/e/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/core/e/f;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/e/f;->b:Lcom/mgtv/data/aphone/core/e/f;

    return-object v0
.end method
