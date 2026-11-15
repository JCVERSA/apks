.class public final Lcom/google/common/math/a$c;
.super Lcom/google/common/math/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/common/math/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/a$c;

    invoke-direct {v0}, Lcom/google/common/math/a$c;-><init>()V

    sput-object v0, Lcom/google/common/math/a$c;->a:Lcom/google/common/math/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/a;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NaN"

    return-object p0
.end method
