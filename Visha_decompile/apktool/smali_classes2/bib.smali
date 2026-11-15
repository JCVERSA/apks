.class public final synthetic Lbib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lge3;


# direct methods
.method public synthetic constructor <init>(Lge3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbib;->a:Lge3;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbib;->a:Lge3;

    invoke-interface {p0}, Lge3;->q()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
