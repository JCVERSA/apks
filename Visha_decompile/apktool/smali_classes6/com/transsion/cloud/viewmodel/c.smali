.class public final synthetic Lcom/transsion/cloud/viewmodel/c;
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

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->g(ZLjava/lang/Integer;)Lzfb;

    move-result-object p0

    return-object p0
.end method
