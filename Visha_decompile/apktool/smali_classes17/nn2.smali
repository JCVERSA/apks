.class public final synthetic Lnn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpnb;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivPagerJsonParser;->e(D)Z

    move-result p0

    return p0
.end method
