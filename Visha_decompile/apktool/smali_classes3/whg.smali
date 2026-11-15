.class public final synthetic Lwhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lhig;


# direct methods
.method public synthetic constructor <init>(Lhig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhg;->a:Lhig;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwhg;->a:Lhig;

    check-cast p1, Lejf;

    invoke-static {p0, p1}, Lhig;->a(Lhig;Lejf;)Lejf;

    return-object p1
.end method
