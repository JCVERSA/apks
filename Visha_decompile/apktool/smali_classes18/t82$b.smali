.class public final Lt82$b;
.super Lt82;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lt82$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt82$b;

    invoke-direct {v0}, Lt82$b;-><init>()V

    sput-object v0, Lt82$b;->a:Lt82$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt82;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
