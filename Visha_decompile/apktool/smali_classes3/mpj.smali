.class public final synthetic Lmpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln5f;

    sget-object p0, Lnpj;->d:Lnpj;

    iget p0, p1, Ln5f;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
