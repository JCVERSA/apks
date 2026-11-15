.class public final synthetic Ljk2;
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

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGridJsonParser;->a(J)Z

    move-result p0

    return p0
.end method
