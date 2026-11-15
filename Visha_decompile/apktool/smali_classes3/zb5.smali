.class public final Lzb5;
.super Luc5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Luc5;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Luc5;->h()V

    iget-object p0, p0, Luc5;->a:Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
