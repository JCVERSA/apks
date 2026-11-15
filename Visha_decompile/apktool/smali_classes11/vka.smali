.class public final synthetic Lvka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    move-object p2, p3

    check-cast p2, Ljava/lang/String;

    move-object p3, p4

    check-cast p3, Ljava/lang/String;

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-static/range {p0 .. p6}, Lela;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lzfb;

    move-result-object p0

    return-object p0
.end method
