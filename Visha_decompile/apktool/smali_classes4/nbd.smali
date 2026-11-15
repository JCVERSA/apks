.class public Lnbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DefaultHandler"

    iput-object v0, p0, Lnbd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "DefaultHandler response data"

    invoke-interface {p2, p0}, Lz9d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
