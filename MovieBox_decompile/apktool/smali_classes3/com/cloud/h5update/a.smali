.class public final Lcom/cloud/h5update/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/h5update/a;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/h5update/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/h5update/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/h5update/a;->a:Lcom/cloud/h5update/a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/cloud/h5update/a;->b:I

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/h5update/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 1
    sput p1, Lcom/cloud/h5update/a;->b:I

    .line 2
    .line 3
    return-void
.end method
