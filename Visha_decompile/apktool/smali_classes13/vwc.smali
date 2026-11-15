.class public final synthetic Lvwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvwc;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lvwc;->a:Ljava/net/URL;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcxc;->g(Ljava/net/URL;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
