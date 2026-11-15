.class public Lbu2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbu2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbu2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBold()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLight()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMedium()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegular()Landroid/graphics/Typeface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypefaceFor(I)Landroid/graphics/Typeface;
    .locals 1

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
