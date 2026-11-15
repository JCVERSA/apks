.class public final Lt82$a;
.super Lt82;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lt82$a;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt82$a;

    invoke-direct {v0}, Lt82$a;-><init>()V

    sput-object v0, Lt82$a;->a:Lt82$a;

    sget-object v0, Lu82;->c:Lu82$a;

    invoke-virtual {v0}, Lu82$a;->b()I

    move-result v1

    invoke-virtual {v0}, Lu82$a;->d()I

    move-result v2

    invoke-virtual {v0}, Lu82$a;->i()I

    move-result v0

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    sput v0, Lt82$a;->b:I

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

    sget p0, Lt82$a;->b:I

    return p0
.end method
