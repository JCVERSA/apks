.class public final synthetic Lz60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lb70;->A(Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method
