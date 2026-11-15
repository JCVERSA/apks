.class public abstract La81;
.super Lz71;
.source "SourceFile"


# direct methods
.method public static y(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La81$a;

    invoke-direct {v0, p0}, La81$a;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method
