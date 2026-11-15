.class public final Lf/g$b$a;
.super Lf/g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lf/g$b$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/g$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/g$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf/g$b$a;->a:Lf/g$b$a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lf/g$b$a;->b:I

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lf/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lf/g$b$a;->b:I

    .line 2
    .line 3
    return v0
.end method
