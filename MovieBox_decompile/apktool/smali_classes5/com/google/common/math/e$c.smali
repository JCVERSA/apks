.class final Lcom/google/common/math/e$c;
.super Lcom/google/common/math/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/math/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/math/e$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/math/e$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/math/e$c;->a:Lcom/google/common/math/e$c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/math/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NaN"

    .line 2
    .line 3
    return-object v0
.end method
