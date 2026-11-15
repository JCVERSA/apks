.class public final Lhvg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhvg;


# instance fields
.field public a:Ljgf;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lhvg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lhvg;-><init>(IIIIILa5g;)V

    sput-object v7, Lhvg;->b:Lhvg;

    sget v0, Lkfh;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIIILa5g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljgf;
    .locals 2

    iget-object v0, p0, Lhvg;->a:Ljgf;

    if-nez v0, :cond_0

    new-instance v0, Ljgf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljgf;-><init>(Lhvg;La5g;)V

    iput-object v0, p0, Lhvg;->a:Ljgf;

    :cond_0
    iget-object p0, p0, Lhvg;->a:Ljgf;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lhvg;

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lhvg;

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x1d02666f

    return p0
.end method
