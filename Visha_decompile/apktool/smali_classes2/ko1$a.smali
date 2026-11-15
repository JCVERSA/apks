.class public final Lko1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lko1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lko1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lko1;
    .locals 2

    const-string/jumbo p0, "title"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lko1;

    const-string v0, "#92969E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, p1, v0, v1}, Lko1;-><init>(Ljava/lang/String;IF)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lko1;
    .locals 2

    const-string/jumbo p0, "title"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lko1;

    const-string v0, "#191F2B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v0, v1}, Lko1;-><init>(Ljava/lang/String;IF)V

    return-object p0
.end method
