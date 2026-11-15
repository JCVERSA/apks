.class public final synthetic Ls6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->a(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object p0

    return-object p0
.end method
