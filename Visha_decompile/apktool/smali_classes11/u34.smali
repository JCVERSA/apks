.class public final synthetic Lu34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu34;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu34;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lv34$a;

    invoke-static {p0, p1, p2}, Lv34;->a(Ljava/lang/String;Ljava/lang/String;Lv34$a;)Lv34$a;

    move-result-object p0

    return-object p0
.end method
